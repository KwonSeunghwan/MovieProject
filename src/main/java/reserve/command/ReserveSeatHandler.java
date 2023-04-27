package reserve.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import movie.dao.MovieDAO;
import movie.dto.MovieVO;

public class ReserveSeatHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		}else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		String url = "/show_seat.jsp";
		MovieDAO mDao = MovieDAO.getInstance();
		MovieVO movie = mDao.selectMvByNum(1);
		String theater_num = req.getParameter("theater_num");
		String theater_date = req.getParameter("theater_date");
		
		req.setAttribute("theater_num", theater_num);
		req.setAttribute("theater_date", theater_date);
		req.setAttribute("movie", movie);
		return url;
	}

}
