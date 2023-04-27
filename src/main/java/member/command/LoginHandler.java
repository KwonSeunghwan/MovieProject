package member.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.command.CommandHandler;
import member.dao.MemberDAO;
import member.dto.MemberVO;

public class LoginHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request, response);
		}
		else if(request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request, response);
		}
		else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		String url = "/member/loginForm.jsp";
		HttpSession session = request.getSession();
		if (session.getAttribute("loginUser") != null) {// 이미 로그인 된 사용자이면
			url = "/index.do"; // 메인 페이지로 이동한다.
		}
		return url;
	}

	private String processSubmit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String url = "/member/loginForm.jsp";
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.userCheck(mem_id, mem_pw);
		if (result == 1) {
			MemberVO mVo = mDao.getMemberByID(mem_id);
			// 세션에 저장
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", mVo);
			/* request.setAttribute("message", "로그인에 성공했습니다."); */
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인에 성공했습니다.')");
			script.println("history.back()");
			script.println("</script>");
			// 회원등급에 따라서
			if(mVo.getGrade() == 0) {
				response.sendRedirect("../index.do");
				url = null;
			}
			// 일번회원
			// 일반회원의 MyPage로 이동
			else {
				response.sendRedirect("adminPage.do");
				url = null;
			}
			// 관리자
			// 관리자 페이지로 이동
		} else if (result == 1) { 
			/* request.setAttribute("message", "비밀번호가 맞지 않습니다."); */
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 맞지 않습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else if (result == -1) {
			/* request.setAttribute("message", "존재하지 않는 회원입니다."); */
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 회원입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		return url;
	}
}