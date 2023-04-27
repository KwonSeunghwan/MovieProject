<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Today's movie</title>
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="resources/css/common.css" />"> --%>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/common.css'/>">
<script type="text/javascript" src="<c:url value="js/jquery-1.12.4.js" />"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<section>
	<form method="post" enctype="multipart/form-data" name="frm" action="update.do">
	<div class="main-conteiner">
		<div class="main-movie-list">
			<ul class="list">
				<li class="li_moviepost" class="first">
					<a href="#" class="first-movie-list" title="영화상세 보기">
						<img src="<c:url value='/picture/crime-city2.jpg'/>" alt="범죄도시2" class="poster">
						<div class="summary">
							&quot;느낌 오지?이 놈 잡아야 하는 거&quot;<br><br>
							가리봉동 소탕작전 후4년 뒤,
							금천서 강력반은 베트남으로 도주한 용의자를
							인도받아 오라는 미션을 받는다
							'마석도'와 금천서 강력반은 한국과 베트남을 오가며
							역대급 범죄를 저지르는'강해상'을 쫓기 시작하는데...
						</div>
					</a>
					<div class="case">
								<c:url var="goUrl" value="/show_date.do">
									<c:param name="mv_num" value="1"/>
								</c:url>
						<a href="${goUrl}" class="button_g" title="영화 예매하기">예매하기</a>
					</div>
				</li>
				<li class="li_moviepost" >
					<a href="#" class="first-movie-list" title="영화상세 보기">
						<img src="<c:url value='/picture/minion.jpg'/>" alt="미니언즈2" class="poster">
						
						<div class="summary">
						&quot;오랜마니언!&quot;<br><br>
						세계 최고의 슈퍼 악당을 꿈꾸는 미니보스'그루'와
						 그를 따라다니는 미니언들,
						 뉴페이스 미니언 '오토'의 실수로 스톤을 잃어버리고
						 빌런6에게 납치까지 당한다.
						 미니보스를 구하기 위해 잃어버린 스톤을 최찾아야하는
						 '오토', 그리고 쿵푸를 마스터해야하는 '케빈','스튜어트','밥'!"
						 올여름 극장가를 점령할 미니언즈가 돌아온다!
						</div>
					</a>
					<div class="case">
						<a href="#" class="button_g" title="영화 예매하기">예매하기</a>
					</div>
				</li>
				<li class="li_moviepost" >
					<a href="#" class="first-movie-list" title="영화상세 보기">
						<img src="<c:url value='/picture/topgun.jpg'/>" alt="탑건" class="poster">
						
						<div class="summary">
						&quot;가장 압도적인 비행이 시작된다.&quot;<br><br>
						최고의 파일럿이자 전설적인 인물 매버릭은 자신이
						졸업한 훈련학교 교관으로 발탁된다.
						그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만
						실전을 방불케 하는 상공 훈련에서 눈으로 봐도 믿기 힘든
						전설적인 조종 실력에 모두가 압도된다.
						</div>						
					</a>
					<div class="case">
						<a href="#;" class="button_g" title="영화 예매하기">예매하기</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</form>
	</section>
<jsp:include page="footer.jsp" />

</body>
</html>