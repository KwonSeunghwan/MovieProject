<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/common.css'/>">
</head>
<body>
	<header>
		<div>
			<h1 class="logo">
				<a href="<c:url value='/index.do'/>"><img src="<c:url value='/picture/logo.png'/>"></a>
			</h1>
			<ul class="login-menu">
			<%-- 	<c:choose>
					<c:when
						test="${sessionScope.userId == null || sessionScope.userId == '' }">
						<li><a href="member/login.do">로그인&nbsp;</a></li>
						<li><a href="member/join.do">회원가입&nbsp;</a></li>
					</c:when>
				</c:choose> --%>
				
				 <c:choose>
                        <c:when test="${loginUser.mem_id == null || loginUser.mem_id == '' }">
                        	<li><a href="<c:url value='/member/login.do'/>">로그인</a></li>
                          	<li><a href="<c:url value='/member/join.do'/>">회원가입</a></li>
                                                   
                        </c:when>
                        <c:otherwise>
                        	<li><a>${loginUser.mem_name}님 반갑습니다.</a></li>
                            <li><a href="<c:url value='/member/myPage.do'/>">마이 페이지</a></li>
                            <li><a href="<c:url value='/member/logout.do'/>">로그아웃</a></li>
                        </c:otherwise>
                    </c:choose>
				
				
				
				
				
			</ul>
			<nav>
			<ul class = "headmenu">
				<li ><a href="<c:url value='/movie.do'/>">영화</a></li>
				<li ><a href="<c:url value='/show_date.do'/>">예매</a></li>
			</ul>
		</nav>
		</div>
		
	</header>
</body>
</html>