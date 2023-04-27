<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../resources/css/common.css" type="text/css" rel="stylesheet">
<title>예매</title>
</head>
<body>
<header>
		<div>
			<h1 class="logo">
				<a href="../index.do"><img src="../picture/logo.png"></a>
			</h1>
			<ul class="login-menu">
				<c:choose>
                        <c:when test="${loginUser.mem_id == null || loginUser.mem_id == '' }">
                 		
                        	<li><a href="member/login.do">로그인</a></li>
                          	<li><a href="member/join.do">회원가입</a></li>
                                                   
                        </c:when>
                        <c:otherwise>
                       		<li><a>${loginUser.mem_name}님 반갑습니다.</a></li>
                            <li><a href="member/myPage.do">마이 페이지</a></li>
                            <li><a href="member/logout.do">로그아웃</a></li>
                        </c:otherwise>
                    </c:choose>
			</ul>
			<nav>
			<ul class = "headmenu">
				<li ><a href="../movie.do">영화</a></li>
				<li ><a href="../show_date.do">예매</a></li>
			</ul>
		</nav>
		</div>
		
	</header>
		<div class="clock_container min-hi1000">
			<div class="wrapper">
				<div class="clock_content">
					<div class="title_content">
						<h3>상영 시간표</h3>
					</div>
					<div class="show_clock_content">
						<div class="clock_left_content">
							<a href=""><img alt="영화" src="../resources/images/movie_img2.jpg"></a>
						</div>
						
						<div class="clock_right_content">
							<table border="1">
								<tr>
									<th>상영관 번호</th>
									<th>상영 시간</th>
									<th>남은 좌석 수</th>
								</tr>
								<c:forEach var="schedule" items="${scheduleList}">
								<tr>
										<td>${schedule.th_num}</td>
										<c:url var="goUrl" value="../show_seat.do">
											<c:param name="theater_num" value="${schedule.th_num}"/>
											<c:param name="theater_date" value="${schedule.th_date}"/>
										</c:url>
										<td><a href="${goUrl}" ><fmt:formatDate value="${schedule.th_date}"/></a></td>
										<td>64석</td>
								</tr>		
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
 		</div>
 		<footer>
		<div id="wrapper">
			<div class="sns">
				<ul>
					<li>
					<a href="https://facebook.com/" target="_blank">
					<img src="../picture/facebook.png" class="sns_img"></a>
					</li>
					<li>
					<a href="http://www.instargram.com" target="_blank">
					<img src="../picture/instagram.png" class="sns_img"></a>
					</li>
					<li>
					<a href="http://www.youtube.com" target="_blank">
					<img src="../picture/youtube.png" class="sns_img"></a>
					</li>
					<li>
					<a href="https://twitter.com/" target="_blank">
					<img src="../picture/twitter.png" class="sns_img"></a>
					</li>
				</ul>
			</div>
		</div>
		<div class="copy">
            COPYRIGHT © by WEBDESIGN. ALL RIGHTS RESERVED
        </div>
	</footer>
</body>
</html>