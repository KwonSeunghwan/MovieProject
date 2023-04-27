<!-- admin 게시글 목록 페이지 -->
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
<title>관리자 페이지 (영화 목록)</title>
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
							<!-- <a href="AD_ME_01.html"> -->
								<!-- <img
								src="../resources/admin/images/logo_white.png" class="logo_img"></a><br /> -->
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
					<h2>영화 목록</h2>

					<input type="button" class="btn gary_btn write_board_btn"
						value="영화 등록" onclick="location.href='write.do'">
					<table class="list table">
						<tr>
							<td>순번</td>
							<td>제목</td>
							<td>감독</td>
							<td>배우진</td>
							<td>줄거리</td>
							<td>영화가격</td>



						</tr>
						<!--  <tr onClick="location.href='postInfo.do'"> 연결 방식 변경해야함 // 임시용
                        <td>1</td>
                        <td>미니언즈</td>
                        <td>촉촉하고 부드러운 호박고구마의 모험 이야기</td>
                        <td>7,000원</td>
                        <td>홍길동</td>
                        <td>홍길순,홍길용</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>공조 2</td>
                        <td>니모와 여행을 떠난다</td>
                        <td>7,000원</td>
                        <td>엄준식</td>
                        <td>홍길순,홍길양,이지명</td>
                    </tr> -->

						<c:forEach var="board" items="${boardList}">
							<tr class="record">
								<td>${board.mv_num}</td>
								<td><a
									href="<c:url value='view.do?mv_num=${board.mv_num}'/>">
										${board.mv_name}</a></td>
								<td>${board.mv_director}</td>
								<td>${board.mv_actor}</td>
								<td><c:set var="str1" value="${board.summary}" /> <c:if
										test="${fn:length(str1) > 19}">
								${fn:substring(board.summary, 0, 17)}...
							</c:if> <c:if test="${fn:length(str1) <= 19}">
								${board.summary}...
							</c:if></td>
								<td>${board.mv_price}</td>
							</tr>
						</c:forEach>
					</table>


					<!--         <div class="paging">
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
