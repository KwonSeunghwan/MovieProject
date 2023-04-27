package common.command;


import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.dao.MemberDAO;
import member.dto.MemberVO;

public class AdminPageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
	
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else { // 허용되지 않는 메소드
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		// 브라우저로 올라오는 파라미터는 현재 없음 : 페이징, 검색
		// 데이터베이스에서 게시글 목록을 가져온다.
		MemberDAO dao = MemberDAO.getInstance();
		List<MemberVO> list = dao.selectAllMember();
		// 뷰 페이지에 전달
		req.setAttribute("memberList", list);
		// 뷰 페이지를 반환
		return "/admin/adminMemberList.jsp";

	}

}
