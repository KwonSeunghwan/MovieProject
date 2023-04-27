package board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import movie.dao.MovieDAO;
import movie.dto.MovieVO;

public class BoardViewHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		}
		else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		
		// 브라우저로부터 num이 올라온다.
		int mv_num = Integer.parseInt(req.getParameter("mv_num"));
		// 데이터베이스에서 게시글을 가져온다.
		MovieDAO dao = MovieDAO.getInstance();
		// 게시글의 조회수를 증가
		/* dao.updateReadCount(num); */
		MovieVO bVo = dao.selectMvByNum(mv_num);
		// 뷰 페이지로 전달
		req.setAttribute("board", bVo);
		// 뷰 페이지로 반환
		return "/admin/adminBoardView.jsp";
	}
}

