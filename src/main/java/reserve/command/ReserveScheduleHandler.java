package reserve.command;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import theater_date.dao.Theater_DateDAO;
import theater_date.dto.Theater_DateVO;
import common.command.CommandHandler;
//import seat.dao.SeatDAO;

public class ReserveScheduleHandler implements CommandHandler {
	
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
		String url = "/reserve/reserveMain.jsp";
		Theater_DateDAO tdDao = Theater_DateDAO.getInstance();
//		int mv_num = Integer.parseInt(req.getParameter("mv_num")); 
		
		List<Theater_DateVO> scheduleList = tdDao.selectTheaterListByMv_Num(1);
		req.setAttribute("scheduleList", scheduleList);
		return url;
	}
	
}
