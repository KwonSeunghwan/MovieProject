package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("doFilter(LoginCheckFilter)");
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpSession session = httpRequest.getSession();
		//로그인 여부는 session에 loginUser 속성이 존재하면 로그인으로 간주
		if(session.getAttribute("loginUser") == null) {	// 로그인하지 않음
			// 로그인을 하도록 요청
			RequestDispatcher dispatcher = 
				httpRequest.getRequestDispatcher("/member/loginForm.jsp");
			dispatcher.forward(request, response);
		} else {	// 로그인했으면 다음 filter로 이동
			chain.doFilter(request, response);
		}
	}

}
