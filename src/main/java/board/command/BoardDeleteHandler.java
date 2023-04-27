package board.command;

import java.io.IOException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import movie.dao.MovieDAO;

public class BoardDeleteHandler implements CommandHandler {

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
		int mv_num = Integer.parseInt(req.getParameter("mv_num"));
		// 데이터베이스에서 삭제
		MovieDAO dao=MovieDAO.getInstance();
		dao.deleteMovie(mv_num);
		res.sendRedirect("list.do");
		return null;
	}
}
