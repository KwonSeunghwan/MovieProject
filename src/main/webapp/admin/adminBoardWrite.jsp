<!-- admin 게시글 등록 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지 (영화 등록)</title>
</head>
<link href="../resources/admin/css/admin_common.css" type="text/css"
	rel="stylesheet">
<script src="../resources/admin/js/jquery-3.5.1.min.js"></script>
<script src="../resources/admin/js/jquery-migrate-1.4.1.min.js"></script>
<script src="../resources/admin/js/jquery-ui.min.js"></script>
<script src="../resources/admin/js/jquery-admin.js"></script>
<script type="text/javascript" src="../resources/js/board.js"></script>
<body>
	<form name="frm" method="post" action="write.do">
		<div class="main_content">
			<div class="left_content">
				<div class="left_wrapper">
					<header>
						<div class="header_logo">
							<h4>
								<a href="AD_ME_01.html">
									<!-- <img src="../resources/admin/images/logo_white.png" class="logo_img"></a><br/> -->
									<a class="header_text" href="<c:url value='/board/memlist.do'/>"
								class="nav_link nav_item">For
										Administrator</a>
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
							<a href="<c:url value='/member/logout.do'/>" class="text_underline">로그아웃</a>
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
						<h2 class="login_title">영화 등록</h2>
						<table class="detail_board_member_tb detail_board_tb">
							<tr>
								<th>제목</th>
								<td><input type="text" name="mv_name" class="form-box"></td>
							</tr>
							<tr>
								<th>감독</th>
								<td><input type="text" name="mv_director" class="form-box"></td>
							</tr>
							<tr>
								<th>배우진</th>
								<td><input type="text" name="mv_actor" class="form-box"></td>
							</tr>
							<tr>
								<th>줄거리</th>
								<td><input type="text" name="mv_summary" class="form-box"></td>
							</tr>
							<tr>
								<th>영화가격</th>
								<td><input type="text" name="mv_price" class="form-box"></td>
							</tr>
						</table>
						<br />
						<div class="center_btn">
							<button class="btn gray_btn" onclick="history.go(-1);">취소하기</button>
							<button type="submit" class="btn gray_border_btn"
								onclick="return boardCheck()">등록하기</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-wrap help">
				<div class="modal help">
					<h3 class="title"></h3>
					<div class="content">
						<div class="member_del_value">
							<h2>${board.mv_name}영화를 삭제하시겠습니까?</h2>
							<input type="button" class="btn gray_border_btn" value="삭제하기"
								onclick="location.href='delete.do?num=${board.mv_num}'" /> <input
								type="button" class="close-btn btn gray_btn" value="취소하기"
								onclick="history.back();" />
						</div>
					</div>
				</div>
			</div>
	</form>
</body>
<script>
	modalClose();
</script>
</html>
<!-- <table>
				<tr>	<th>작성자</th>
					<td><input type="text" name="name"> * 필수</td></tr>
				<tr>	<th>비밀번호</th>
					<td><input type="password" name="pass" required> * 필수 (게시물 수정
						삭제시 필요합니다.)</td></tr>
				<tr>	<th>이메일</th>
					<td><input type="text" name="email"></td></tr>
				<tr>	<th>제목</th>
					<td><input type="text" size="70" name="title" required> * 필수</td></tr>
				<tr>	<th>내용</th>
					<td><textarea cols="70" rows="15" name="content"></textarea></td>	</tr>
			</table>
			<br><br> <input type="submit" value="등록" onclick="return boardCheck()">
<input type="reset" value="다시 작성">
<input type="button" value="목록"	onclick="location.href='list.do'">
		</form>
</div>
</body>
</html>
		 -->