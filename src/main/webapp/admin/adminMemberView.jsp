<!-- admin 회원 상세 정보 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지 (회원 상세 정보)</title>
</head>
<link href="../resources/admin/css/admin_common.css" type="text/css"
	rel="stylesheet">
<script src="../resources/admin/js/jquery-3.5.1.min.js"></script>
<script src="../resources/admin/js/jquery-migrate-1.4.1.min.js"></script>
<script src="../resources/admin/js/jquery-ui.min.js"></script>
<script src="../resources/admin/js/jquery-admin.js"></script>
<body>
	<div class="main_content">
		<div class="left_content">
			<div class="left_wrapper">
				<header>
					<div class="header_logo">
						<h4>
							<a href="AD_ME_01.html"> <!-- <img
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
					<h2 class="login_title">${member.mem_name}님상세정보</h2>
					<table class="detail_board_member_tb">
						<tr>
							<th>이름</th>
							<td>${member.mem_name}</td>
						</tr>
						<tr>
							<th>아이디</th>
							<td>${member.mem_id}</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td>${member.mem_pw}</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>${member.mem_email}</td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td>${member.mem_phone}</td>
						</tr>
					</table>
					<br /> <br />
					<!-- 
						<button type="submit" class="btn gray_border_btn"
							onClick="location.href='modify.do'">회원정보수정</button> -->
					<div class="center_btn">
						<input type="button" value="회원정보수정" class="btn gray_border_btn"
							onclick="location.href='memupdate.do?num=${member.num}'">

						<button type="button" class="btn gray_btn"
							onclick="modalOpen('help');">회원정보삭제</button>



					</div>
				</div>
			</div>
		</div>
		<div class="modal-wrap help">
			<div class="modal help">
				<h3 class="title"></h3>
				<div class="content">
					<div class="member_del_value">
						<h2>${member.mem_name}회원님의정보를 삭제하시겠습니까?</h2>


						<input type="button" class="btn gray_border_btn" value="회원정보삭제"
							onclick="location.href='memdelete.do?num=${member.num}'" /> <input
							type="button" class="close-btn btn gray_btn" value="취소하기"
							onclick="modalClose();" />
					</div>
				</div>
			</div>
		</div>
</body>
<script>
	modalClose();
</script>
</html>
