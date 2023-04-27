<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie title</title>
<link href="<c:url value='/resources/css/common.css'/>" type="text/css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../header.jsp" />
		<section>
			<div class=movie_t_container>
				<div class=movie_t2_container>
					<div class=movie_t_border>
					<!-- <c:forEach var="movie" items="${movie_title}" begin="0" end="0" > -->	
							<ul class=t_member>
								<li>제목:${movie.mv_name}</li>
								<li>감독:${movie.mv_director}</li>
								<li>배우:${movie.mv_actor}</li>
								<li>줄거리<br><br><br>${movie.mv_summary}</li>
							</ul>			
						<div class=movie_t_poster>
							<img src="../picture/${movie.mv_img}" alt="범죄도시2" class="t_poster">
						</div>
					<!-- </c:forEach> --> 
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