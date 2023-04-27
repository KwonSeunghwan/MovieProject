package reserve.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.command.CommandHandler;
import reserve.dao.ReserveDAO;
import reserve.dto.ReserveVO;
import theater_date.dao.Theater_DateDAO;
import theater_date.dto.Theater_DateVO;

public class ReserveCompleteHandler implements CommandHandler{

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
		String url = "/reserve/reserveComplete.jsp";
		
//		Theater_DateVO theater = (Theater_DateVO) req.getAttribute("theater");
		HttpSession session = req.getSession();
		String mem_name = (String) session.getAttribute("loginUser.name");
		
		Theater_DateDAO tdDao = Theater_DateDAO.getInstance();
		Theater_DateVO theater = tdDao.selectTheater_DateByMv_Num(1);
		ReserveDAO rDao = ReserveDAO.getInstance();
//		ReserveVO re_num = rDao.selectMaxRe_Num();
		String seat = req.getParameter("seat");
		String mv_name = req.getParameter("mv_name");
		
		req.setAttribute("theater", theater);
		req.setAttribute("seat", seat);
//		req.setAttribute("re_num", re_num);
		req.setAttribute("mv_name", mv_name);
		req.setAttribute("mem_name", mem_name);
		return url;
	}

}
