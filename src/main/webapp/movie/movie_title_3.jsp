<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie title</title>
<link href="../resources/css/common.css?after" type="text/css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../header.jsp" />
		<section>
			<div class=movie_t_container>
				<div class=movie_t2_container>
					<div class=movie_t_border>
							<ul class=t_member>
								<li>제목: 탑건:매버릭</li>
								<li>감독: 조셉 코신스키</li>
								<li>배우: 톰 크루즈, 마일즈 텔러</li>
								<li>줄거리<br><br><br>
								한순간의 실수도 용납되지 않는 하늘 위,
								가장 압도적인 비행이 시작된다!
								최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다.
								 그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케 하는 상공 훈련에서 눈으로 봐도 믿기 힘든 전설적인 조종 실력에 모두가 압도된다.
								 
								 매버릭의 지휘아래 견고한 팀워크를 쌓아가던 팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자
								 매버릭은 자신이 가르친 동료들과 함께 마지막이 될 지 모를 하늘 위 비행에 나서는데…
								
								제작노트 보기
								</li>
							</ul>			
						<div class=movie_t_poster>
							<img src="../picture/topgun.jpg" alt="범죄도시2" class="t_poster">
						</div>
						</div>
							<div class="case_t">
							<a href="#;" class="button_g" title="영화 예매하기">예매하기</a>
						</div>
					</div>
				</div>
		</section>
	<jsp:include page="../footer.jsp" />
</body>
</html>