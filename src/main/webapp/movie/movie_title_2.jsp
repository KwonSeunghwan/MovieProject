<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie title</title>
<link href="../resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../header.jsp" />
		<section>
			<div class=movie_t_container>
				<div class=movie_t2_container>
					<div class=movie_t_border>
							<ul class=t_member>
								<li>제목: 미니언즈2</li>
								<li>감독: 카일 발다</li>
								<li>배우: 스티브 카렐, 양자경</li>
								<li>줄거리<br><br><br> 
								오랜마니언!
								세계 최고의 슈퍼 악당을 꿈꾸는 미니보스 ‘그루’와 그를 따라다니는 미니언들.
								어느 날 그루는 최고의 악당 조직 ‘빌런6’의 마법 스톤을 훔치는데 성공하지만
								뉴페이스 미니언 ‘오토’의 실수로 스톤을 잃어버리고 빌런6에게 납치까지 당한다.
								미니보스를 구하기 위해 잃어버린 스톤을 되찾아야 하는 ‘오토’, 그리고 쿵푸를 마스터해야 하는 ‘케빈’, ‘스튜어트’, ‘밥’!
								올여름 극장가를 점령할 MCU(미니언즈 시네마틱 유니버스)가 돌아온다!
								</li>
							</ul>			
						<div class=movie_t_poster>
							<img src="../picture/minion.jpg" alt="미니언즈2" class="t_poster">
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