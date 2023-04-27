package common.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Command Pattern의 인터페이스
// url command를 처리하는 구현구객체에 대한 인터페이스 
public interface CommandHandler {
	// 반환값 : 뷰를 처리하는 jsp 파일의 이름
	public String process(HttpServletRequest req,
		HttpServletResponse res) throws Exception;
}
