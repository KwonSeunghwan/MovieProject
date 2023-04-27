package reserve.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.command.CommandHandler;
import member.dto.MemberVO;
import reserve.dao.ReserveDAO;
import reserve.dto.ReserveVO;

public class ReserveCheckHandler implements CommandHandler {

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
		String url = "reserveCheck_Cancle.jsp";
		HttpSession session = req.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		String mem_id = loginUser.getMem_id();
		
		ReserveDAO rDao = ReserveDAO.getInstance();
		ReserveVO reserve = rDao.selectOneReserveByMem_ID(mem_id);
//		ReserveVO reserve = rDao.selectMaxRe_Num();
		
		req.setAttribute("reserve", reserve);
		return url;
	}
}
