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
<title>예매 완료</title>
</head>
<body>
<header>
		<div>
			<h1 class="logo">
				<a href="../index.do"><img src="../picture/logo.png"></a>
			</h1>
			<ul class="login-menu">
				<c:choose>
					<c:when
						test="${loginUser.mem_id == null || loginUser.mem_id == '' }">
						<li><a href="#">로그인&nbsp;</a></li>
						<li><a href="#">회원가입&nbsp;</a></li>
					</c:when>
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
	<div class="complete_container min-hi1000">
	    <div class="wrapper">
			<div class="complete_content">
				<div class="complete_title">
					<h2>예 매</h2>
				</div>
				<div class="complete_message">	 	
				${loginUser.mem_name}님 예매가 완료되었습니다.
				</div>
				<div class="complete_table">
					<table border="1">
						<tr>
							<th>제 목</th>
							<th>상영 날짜</th>
							<th>상영관 번호</th>
							<th>좌석번호</th>
						</tr>
						<tr>
							<td>${mv_name}</td>
							<td><fmt:formatDate value="${theater.th_date}"/></td>
							<td>${theater.th_num}상영관</td>
							<td>${seat}</td>
						</tr>
					</table>
				</div>
				
					<input type="button" class="btn_type1 complete_btn" value="확인" onclick="location.href='../index.do'">
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