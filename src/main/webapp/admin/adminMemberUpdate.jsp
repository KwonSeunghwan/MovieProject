<!-- admin 회원 정보 수정 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지 (회원 수정)</title>
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
				<div class="main none-bg">
					<h2>회원 정보 수정</h2>
					<div class="fix-section">
						<form method="post" name="form" class="update_member_form">
							<input type="hidden" name="num" value="${member.num}"> <input
								type="hidden" name="mem_grade" value="${member.grade}">
							<table class="detail_board_member_tb detail_board_tb">
								<tr>
									<th>이름</th>
									<td><input type="text" class="form-box" name="mem_name"
										value="${member.mem_name}"></td>
								</tr>
								<tr>
									<th>아이디</th>
									<td><input type="text" class="form-box" name="mem_id"
										value="${member.mem_id}"></td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td><input type="text" class="form-box" name="mem_pw"
										value="${member.mem_pw}"></td>
								</tr>
								<%-- 		<tr>
									<th>비밀번호 확인</th>
									<td><input type="text" class="form-box" name="mem_pw_check"
										 value="${member.mem_pw_check}"></td>
								</tr>
 --%>
								<tr>
									<th>이메일</th>
									<td><input type="text" class="form-box" name="mem_email"
										value="${member.mem_email}"></td>
								</tr>

								<tr>
									<th>전화번호</th>
									<td><input type="text" class="form-box" name="mem_phone"
										value="${member.mem_phone}"></td>
								</tr>

							</table>

							<div class="detail_btn_list">
								<button type="submit" class="btn gray_border_btn"
									onclick="return boardCheck()">수정하기</button>
								<button class="btn gray_btn" type="button"
									onclick="history.back();">돌아가기</button>
							</div>





							<!-- <table class="table"> -->
							<%-- <table class="detail_board_member_tb detail_board_tb">
								<input type="hidden" name="num" value="${member.num}">
								<tbody>
									<tr>
										<th>이름<span class="icon">*</span></th>
										<td><input type="text" name="name" maxlength="16"
											placeholder="이름을 입력해주세요" class="max-width"></td>
									</tr>
									<tr>
										<th>아이디<span class="icon">*</span></th>
										<td><input type="text" name="member_id" maxlength="16"
											placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합" class=" max-width"></td>
									</tr>
									<tr>
										<th>비밀번호<span class="icon">*</span></th>
										<td><input type="password" name="password" maxlength="16"
											placeholder="비밀번호를 입력해주세요" class="max-width"></td>
									</tr>
									<tr>
										<th>비밀번호확인<span class="icon">*</span></th>
										<td><input type="password" name="re_password"
											maxlength="16" placeholder="비밀번호를 다시 입력해주세요"
											class="max-width"></td>
									</tr>
									<tr>
										<th>이메일<span class="icon">*</span></th>
										<td><input type="email" name="email" maxlength="30"
											placeholder="예: iu0516@naver.com" class="max-width"></td>
									</tr>

									<th>전화번호</th>
									<td><input type="text" name="phone" maxlength="16"
										placeholder="전화번호를 입력하세요." class=" max-width"></td>
								</tbody>
							</table>
							
							 --%>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>