<!-- admin 게시글 수정 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지 (영화 수정)</title>
</head>
<link href="../resources/admin/css/admin_common.css" type="text/css"
	rel="stylesheet">
<script src="../resources/admin/js/jquery-3.5.1.min.js"></script>
<script src="../resources/admin/js/jquery-migrate-1.4.1.min.js"></script>
<script src="../resources/admin/js/jquery-ui.min.js"></script>
<script src="../resources/admin/js/jquery-admin.js"></script>
<script type="text/javascript" src="../resources/js/board.js"></script>
<body>
	<form name="frm" method="post" action="update.do">

		<div class="main_content">
			<div class="left_content">
				<div class="left_wrapper">
					<header>
						<div class="header_logo">
							<h4>
								<a href="AD_ME_01.html"> <!-- <img src="../resources/admin/images/logo_white.png"
								class="logo_img"></a><br /> --> <a class="header_text" href="<c:url value='/board/memlist.do'/>"
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
						<h2 class="login_title">영화 수정</h2>
						<table class="detail_board_member_tb detail_board_tb">

							<input type="hidden" name="mv_num" value="${board.mv_num}">
							<tr>
								<th>제목</th>
								<td><input type="text" class="form-box" name="mv_name"
									value="${board.mv_name}"></td>
							</tr>
							<tr>
								<th>감독</th>
								<td><input type="text" class="form-box" name="mv_director"
									value="${board.mv_director}"></td>
							</tr>
							<tr>
								<th>배우진</th>
								<td><input type="text" class="form-box" name="mv_actor"
									value="${board.mv_actor}"></td>
							</tr>
							<tr>
								<th>줄거리</th>
								<td><input type="text" class="form-box" name="summary"
									value="${board.summary}"></td>
							</tr>

							<tr>
								<th>영화가격</th>
								<td><input type="text" class="form-box" name="mv_price"
									value="${board.mv_price}"></td>
							</tr>

						</table>
						<br />
						<div class="center_btn">
							<button type="submit" class="btn gray_border_btn"
								onclick="return boardCheck()">수정하기</button>
							<button type="button" class="btn gray_btn"
								onclick="modalOpen('help');">영화삭제</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-wrap help">
				<div class="modal help">
					<h3 class="title"></h3>
					<div class="content">
						<div class="member_del_value">
							<h2>${board.mv_name}영화를삭제하시겠습니까?</h2>
							<input type="button" class="btn gray_border_btn" value="삭제하기"
								onclick="location.href='delete.do?mv_num=${board.mv_num}'" /> <input
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

<%-- <h1>게시글 수정</h1>
		
			<input type="hidden" name="num" value="${board.num}">
			<table>
				<tr>	<th>작성자</th>
					<td>
				<input type="text" size="12" name="name" value="${board.name}"> * 필수</td></tr>
				<tr>	<th>비밀번호</th>
				<td>
				<input type="password" size="12" name="pass"> *
						필수 (게시물 수정 삭제시 필요합니다.)</td></tr>
				<tr>	<th>이메일</th>
					<td>
				<input type="text" size="40" maxlength="50" name="email" value="${board.email}"></td></tr>
				<tr>	<th>제목</th>
				<td>
				<input type="text" size="70" name="title"
						value="${board.title}"></td></tr>
				<tr>	<th>내용</th>
					<td>
					<textarea cols="70" rows="15" name="content">${board.content}</textarea></td></tr>
			</table>
			<br><br> <input type="submit" value="등록" onclick="return boardCheck()">


</body>
</html>
				
 --%>
