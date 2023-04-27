package board.command;

import java.io.IOException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import movie.dao.MovieDAO;
import movie.dto.MovieVO;

public class BoardUpdateHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		}
		else if(req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		}
		else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		// 브라우저로부터 올라오는 파라미터 : num
		int mv_num = Integer.parseInt(req.getParameter("mv_num"));
		// 데이터베이스로부터 BoardVO를 가져온다.
		MovieDAO dao = MovieDAO.getInstance();
		/* dao.updateReadCount(num); */
		MovieVO bVo = dao.selectMvByNum(mv_num);
		// 뷰 페이지로 전달
		req.setAttribute("board", bVo);
		
		return "/admin/adminBoardUpdate.jsp";
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws IOException, NamingException{
		MovieVO bVo = new MovieVO();
 
		bVo.setMv_num(Integer.parseInt(req.getParameter("mv_num")));
		bVo.setMv_name(req.getParameter("mv_name"));
		bVo.setMv_director(req.getParameter("mv_director"));
		bVo.setMv_actor(req.getParameter("mv_actor"));
		bVo.setSummary(req.getParameter("Summary"));
		bVo.setMv_price(Integer.parseInt(req.getParameter("mv_price")));
		MovieDAO bDao = MovieDAO.getInstance();
		bDao.updateMovie(bVo); 
		res.sendRedirect("list.do");
		return null;
	}
}
