package board.command;

import java.io.IOException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import member.dao.MemberDAO;

public class MemberDeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		}
		else {	// 허용되지 않는 메소드
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) throws IOException, NamingException {
		// 브라우저에서 올라오는 파라미터 : num
		int num = Integer.parseInt(req.getParameter("num"));
		// 데이터베이스에서 삭제
		MemberDAO dao=MemberDAO.getInstance();
		dao.deleteMember(num);
		res.sendRedirect("list.do");
		return null;
	}
}
