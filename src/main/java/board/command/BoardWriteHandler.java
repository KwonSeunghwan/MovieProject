package board.command;

import java.io.IOException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import movie.dao.MovieDAO;
import movie.dto.MovieVO;

public class BoardWriteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return "/admin/adminBoardWrite.jsp";
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws IOException, NamingException {
		MovieVO bVo = new MovieVO();
		bVo.setMv_name(req.getParameter("mv_name"));
		bVo.setMv_director(req.getParameter("mv_director"));
		bVo.setMv_actor(req.getParameter("mv_actor"));
		bVo.setSummary(req.getParameter("summary"));
		bVo.setMv_price(Integer.parseInt(req.getParameter("mv_price")));
		MovieDAO bDao = MovieDAO.getInstance();
		bDao.insertMovie(bVo);
		res.sendRedirect("list.do");
		return null;
	}
}
