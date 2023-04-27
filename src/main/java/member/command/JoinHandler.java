package member.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.command.CommandHandler;
import member.dao.MemberDAO;
import member.dto.MemberVO;

public class JoinHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request, response);
		} else if (request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request, response);
		} else { // 허용되지 않는 메소드
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		return "/member/joinForm.jsp";
	}

	private String processSubmit(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		// 유효성 검사를 한다.(생략)
		request.setCharacterEncoding("UTF-8"); // 한글 인코딩 처리
		String mem_name = request.getParameter("mem_name");
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		String mem_email = request.getParameter("mem_email");
		String mem_phone = request.getParameter("mem_phone");
		int mem_grade = Integer.parseInt(request.getParameter("mem_grade"));

		MemberVO mVo = new MemberVO();
		mVo.setMem_name(mem_name);
		mVo.setMem_id(mem_id);
		mVo.setMem_pw(mem_pw);
		mVo.setMem_email(mem_email);
		mVo.setMem_phone(mem_phone);
		mVo.setGrade(mem_grade);

		// 데이터베이스에 회원정보를 저장
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.insertMember(mVo);
		HttpSession session = request.getSession();
		if (result == 1) { // 회원가입 성공
			// 로그인창에 mem_id를 출력하기 위하여
			session.setAttribute("mem_id", mem_id);
			request.setAttribute("message", "회원가입에 성공하였습니다.");
		} else { // 회원가입에 실패
			request.setAttribute("message", "회원가입에 실패하였습니다.");
		}
		return "/member/loginForm.jsp";
	}
}