package member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import member.dao.MemberDAO;
import member.dto.MemberVO;

public class MemberUpdateHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request, response);
		}
		else if(request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request, response);
		}
		else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		String mem_id = request.getParameter("mem_id");
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.getMemberByID(mem_id);
		request.setAttribute("mVo", mVo);
		return "memberUpdateForm.jsp";
	}

	private String processSubmit(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		request.setCharacterEncoding("UTF-8"); // 한글 깨짐을 방지
		// 폼에서 입력한 회원 정보 얻어오기
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		String mem_email = request.getParameter("mem_email");
		String mem_phone = request.getParameter("mem_phone");
		String mem_grade = request.getParameter("mem_grade");
		// 회원 정보를 저장할 객체 생성
		MemberVO mVo = new MemberVO();
		mVo.setMem_id(mem_id);
		mVo.setMem_pw(mem_pw);
		mVo.setMem_email(mem_email);
		mVo.setMem_phone(mem_phone);
		mVo.setGrade(Integer.parseInt(mem_grade));
		MemberDAO mDao = MemberDAO.getInstance();
		mDao.updateMember(mVo);
		response.sendRedirect("../mypage.jsp");
		return null;
	}
}