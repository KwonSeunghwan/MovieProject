package board.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import member.dao.MemberDAO;
import member.dto.MemberVO;

public class MemberUpdateHandler implements CommandHandler {

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
		int num = Integer.parseInt(req.getParameter("num"));
		// 데이터베이스로부터 BoardVO를 가져온다.
		MemberDAO dao = MemberDAO.getInstance();
		/* dao.updateReadCount(num); */
		MemberVO bVo = dao.getMember(num);
		// 뷰 페이지로 전달
		req.setAttribute("member", bVo);
		
		return "/admin/adminMemberUpdate.jsp";
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws IOException {
		MemberVO bVo = new MemberVO();
		bVo.setNum(Integer.parseInt(req.getParameter("num")));
		bVo.setMem_name(req.getParameter("mem_name"));
		bVo.setMem_id(req.getParameter("mem_id"));
		bVo.setMem_pw(req.getParameter("mem_pw"));
		bVo.setMem_email(req.getParameter("mem_email"));
		bVo.setMem_phone(req.getParameter("mem_phone"));
		bVo.setGrade(Integer.parseInt(req.getParameter("mem_grade")));
		MemberDAO bDao = MemberDAO.getInstance();
		bDao.updateMember(bVo); 
		res.sendRedirect("memlist.do");
		return null;
	}
}
