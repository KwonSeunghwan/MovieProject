package member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import member.dao.MemberDAO;

public class IdCheckHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getMethod().equalsIgnoreCase("GET")) {
			String mem_id = request.getParameter("mem_id");
			MemberDAO mDao = MemberDAO.getInstance();
			int result = mDao.confirmID(mem_id);
			request.setAttribute("mem_id", mem_id);
			request.setAttribute("result", result);
			return "idCheck.jsp";
		}
		else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

}
