<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
</head>
<body>
	<footer>
		<div id="wrapper">
			<div class="sns">
				<ul>
					<li>
					<a href="https://facebook.com/" target="_blank">
					<img src="<c:url value='/picture/facebook.png'/>" class="sns_img"></a>
					</li>
					<li>
					<a href="http://www.instargram.com" target="_blank">
					<img src="<c:url value='/picture/instagram.png'/>" class="sns_img"></a>
					</li>
					<li>
					<a href="http://www.youtube.com" target="_blank">
					<img src="<c:url value='/picture/youtube.png'/>" class="sns_img"></a>
					</li>
					<li>
					<a href="https://twitter.com/" target="_blank">
					<img src="<c:url value='/picture/twitter.png'/>" class="sns_img"></a>
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