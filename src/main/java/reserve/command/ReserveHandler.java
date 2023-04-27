package reserve.command;


import java.io.IOException;
import java.sql.Timestamp;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.command.CommandHandler;
import member.dto.MemberVO;
import reserve.dao.ReserveDAO;

public class ReserveHandler implements CommandHandler{
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		}else if(req.getMethod().equalsIgnoreCase("POST")){
			return processSubmit(req, res);
		}else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	private String processForm(HttpServletRequest req, HttpServletResponse res) throws NamingException, IOException {
		String url = "/reserve/reserveComplete.do"; 
		HttpSession session = req.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");	
		String mem_name = loginUser.getMem_name();
		String mem_id = loginUser.getMem_id();
				
		String seat_num = req.getParameter("seat");
		String mv_name = req.getParameter("mv_name");
		int th_num = Integer.parseInt(req.getParameter("theater_num"));

		Timestamp th_date = Timestamp.valueOf(req.getParameter("theater_date"));
		ReserveDAO rDao = ReserveDAO.getInstance();
		rDao.insertReserve(seat_num,mem_name,mv_name,th_num , th_date, mem_id);
		
		req.setAttribute("seat", seat_num);
		req.setAttribute("mv_name", mv_name);
		
		return url;
	}
	
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws NamingException, IOException {
		res.sendRedirect("reserveComplete.do");
		return null;
	}
	
}
