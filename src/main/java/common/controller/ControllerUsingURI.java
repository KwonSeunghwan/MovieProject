package common.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import common.command.NullHandler;

// 모든 url을 수신하는 대표 창구 controller

public class ControllerUsingURI extends HttpServlet {
	// 커맨드-핸들러인스턴스 매핑 정보를 저장하는 파일을 읽어온다.
	// String : command (세부기능 : 회원가입, 로그인, ...)
	// CommandHandler : 커맨드 패턴의 인터페이스 -> 구현 클래스
	// 브라우저로부터 요청이 오면 요청에 대한 처리를 하는 핸들러에 대한 매핑 인스턴스를 저장
	private Map<String, CommandHandler> commandHandlerMap =
			new HashMap<>();
	
	// 서블릿이 처음에 구동될 때 호출됨
	@Override
	public void init() throws ServletException {
		// web.xml에서 정의된 init-param parameter-name
		String configFile = getInitParameter("configFile");
		Properties prop = new Properties();
		// 컴퓨터에 저장된 실제 경로를 가지고 온다. (상대경로->절대경로)
		String configFilePath = getServletContext().getRealPath(configFile);
		try (FileInputStream fis = new FileInputStream(configFilePath)) {
			prop.load(fis);	// command-handler instance 매핑 정보를 읽어들인다.
		} catch(IOException e) {
			throw new ServletException(e);
		}
		// 매핑정보를 사용해서 handler instance를 생성하고 매핑정보를 저장
		Iterator keyIter = prop.keySet().iterator();
		while(keyIter.hasNext()) {
			String command = (String)keyIter.next();	// 예, hello
			String handlerClassName = prop.getProperty(command);	// 예, common.command.HelloHandler
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				// command를 처리하는 핸들러 구현 객체를 생성
				CommandHandler handlerInstance = (CommandHandler)handlerClass.newInstance();
				// 매핑 테이블에 저장
				commandHandlerMap.put(command, handlerInstance);
			} catch(ClassNotFoundException | InstantiationException
				| IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	
	// 공통으로 처리
	// 브라우저로부터 요청이 오면 실행된다. -> command를 알아내고, 그것을 처리하는 hadnler를 호출
	private void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// URL 체계 -> http://localhost/jsp/*.do
		String command = req.getRequestURI();
		System.out.println("command: " + command);
		if(command.indexOf(req.getContextPath()) == 0) {
			command = command.substring(req.getContextPath().length());
		}
		CommandHandler handler = commandHandlerMap.get(command);	// Handler instance를 가져온다.
		if(handler == null) {	// 매핑 테이블에 없는 요청을 한 경우
			handler = new NullHandler();	// default 처리 -> 404 Not Found 처리
		}
		// 있는 command를 요청한 경우
		String viewPage = null;
		try {
			viewPage = handler.process(req, resp);	// 응답할 뷰 페이지 이름을 받는다.
		} catch(Throwable e) {
			throw new ServletException(e);
		}
		// viewPage가 null인 경우는 포워딩하지 않는다. (response.sendRedirect 경우)
		// response.sendRedirect 하는 경우는 process에서 null을 반환해야 한다.
		if(viewPage != null) {	// 뷰페이지를 응답한 경우 -> 뷰 페이지로 포워딩
			RequestDispatcher dispatcher = req.getRequestDispatcher(viewPage);
			dispatcher.forward(req, resp);
		}
	}
}