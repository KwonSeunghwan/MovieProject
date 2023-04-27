<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지 (회원 목록)</title>
</head>
<link href="../resources/admin/css/admin_common.css" type="text/css"
	rel="stylesheet">
<script src="../resources/admin/js/jquery-3.5.1.min.js"></script>
<script src="../resources/admin/js/jquery-migrate-1.4.1.min.js"></script>
<script src="../resources/admin/js/jquery-ui.min.js"></script>
<script src="../resources/admin/js/jquery-admin.js"></script>
<script type="text/javascript" src="../resources/js/member.js"></script>

<body>
	<div class="main_content">
		<div class="left_content">
			<div class="left_wrapper">
				<header>
					<div class="header_logo">
						<h4>
							<a href="loginSuccess.do"> <!-- <img
								src="../resources/admin/images/logo_white.png" class="logo_img"></a><br /> -->
								<a class="header_text" href="<c:url value='/board/memlist.do'/>"
								class="nav_link nav_item">For Administrator</a>
						</h4>
					</div>
					<div class="profile_size border_circle">
						<img src="../resources/admin/images/profile_img.png"
							class="profile_picture">
					</div>
					<h4>
						<a class="welcome">${loginUser.mem_name}님 반갑습니다.</a>
					</h4>
					<h4>
						<a href="<c:url value='/member/logout.do'/>"
							class="text_underline">로그아웃</a>
					</h4>
					<nav>
						<ul class="side_nav">
							<li class="sidebar-title">회원관리</li>
							<li><a href="<c:url value='/board/memlist.do'/>"
								class="nav_link nav_item">회원목록</a></li>
							<hr class="sidebar">
							<li class="sidebar-title">영화관리</li>
							<li><a href="<c:url value='/board/list.do'/>"
								class="nav_link nav_item">영화목록</a></li>
							<hr class="sidebar">
						</ul>
					</nav>
				</header>
			</div>
		</div>
		<div class="right_content">
			<div class="right_wrapper">
				<div class="main">
					<h2>회원 목록</h2>
					<table class="table">
						<tr>
							<td>순번</td>
							<td>이름</td>
							<td>ID</td>
							<td>비밀번호</td>
							<td>이메일</td>
							<td>전화번호</td>
						</tr>
						<c:forEach var="member" items="${memberList}">
							<tr class="record">
								<td>${member.num}</td>
								<td><a
									href="<c:url value='/board/memview.do?num=${member.num}'/>">
										${member.mem_name}</a></td>
								<td>${member.mem_id}</td>
								<td>${member.mem_pw}</td>
								<td>${member.mem_email}</td>
								<td>${member.mem_phone}</td>

							</tr>
						</c:forEach>
					</table>
					<!--   <div class="paging">
                        <a href="#" class="first">첫 페이지 </a>
                        <a href="#" class="prev">이전 페이지</a>
                        <span>
                            <a href="#" class="on">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#">4</a>
                            <a href="#">5</a>
                            <a href="#">6</a>
                            <a href="#">7</a>
                            <a href="#">8</a>
                            <a href="#">9</a>
                            <a href="#">10</a>
                        </span>
                        <a href="#" class="next">다음페이지</a>
                        <a href="#" class="last">마지막 페이지</a> -->
				</div>
			</div>
		</div>
	</div>
</body>

</html>