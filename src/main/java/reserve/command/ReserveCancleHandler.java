package reserve.command;

import java.io.IOException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import common.command.CommandHandler;
import reserve.dao.ReserveDAO;
//import reserve.dto.ReserveVO;

public class ReserveCancleHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		}else if(req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		}
		else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws IOException, NamingException {
		int re_num = Integer.parseInt(req.getParameter("re_num")); 
		ReserveDAO rDao = ReserveDAO.getInstance();
		rDao.deleteReserve(re_num);
		res.sendRedirect("../index.do");
		return null;
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		String url = "../index.do";
		return url;
	}
}
