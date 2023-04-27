<!-- admin 게시글 상세 정보 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지 (영화 상세 정보)</title>
</head>
<link href="../resources/admin/css/admin_common.css" type="text/css"
	rel="stylesheet">
<script src="../resources/admin/js/jquery-3.5.1.min.js"></script>
<script src="../resources/admin/js/jquery-migrate-1.4.1.min.js"></script>
<script src="../resources/admin/js/jquery-ui.min.js"></script>
<script src="../resources/admin/js/jquery-admin.js"></script>
<script type="text/javascript" src="../resources/js/board.js"></script>
<body>
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
					<h2 class="login_title">영화 상세 정보</h2>
					<table class="detail_board_member_tb detail_board_tb">
						<tr>
							<th>제목</th>
							<td>${board.mv_name}</td>
						</tr>
						<tr>
							<th>감독</th>
							<td>${board.mv_director}</td>
						</tr>
						<tr>
							<th>배우진</th>
							<td>${board.mv_actor}</td>
						</tr>
						<tr>
							<th>줄거리</th>
							<td>${board.summary}</td>
						</tr>
						<!--    <tr>
                        <th>포스터</th>
                        <td><img src="../resources/admin/images/good_pr_img4.jpg" class="admin_list_img_size"></td>
                    </tr> -->
						<tr>
							<th>영화가격</th>
							<td>${board.mv_price}원</td>
						</tr>


					</table>
					<br />
					<div class="center_btn">
						<!--     <button type="submit" class="btn gray_border_btn" 
              	  onClick="location.href='update.do'">게시글수정</button> -->

						<input type="button" value="게시글 수정" class="btn gray_border_btn"
							onclick="location.href='update.do?mv_num=${board.mv_num}'">

						<button type="button" class="btn gray_btn"
							onclick="history.go(-1)">뒤로가기</button>
					</div>
				</div>
			</div>
		</div>
</body>
</html>
