<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 폼</title>

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->


<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<link rel="stylesheet" type="text/css" href="../resources/css/util.css">
<script type="text/javascript" src="../resources/js/member.js"></script>


<style>

.join_link {
	text-align: right;
}

</style>
</head>
<body>


	<div class="limiter">
		<div class="container-login100">
			<!-- container로 감싼 틀 -->
			<div class="wrap-login100 p-t-30 p-b-50">
				<!-- wrapper로 감싼 틀 p-t-30: padding-bottom:30px; -->
				<span class="login100-form-title p-b-41"> <!-- login form title 부분-->
					로그인
				</span>
				<form action="login.do" method="post" name="frm" class="login100-form validate-form p-b-33 p-t-5">
					<!-- 로그인 폼 부분-->

					<div class="wrap-input100 validate-input"
					>
						<input class="input100" type="text" name="mem_id" id="mem_id"
							value="${mem_id}" placeholder="Id"> <span
							class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="mem_pw" id="mem_pw"
							placeholder="Password"> <span class="focus-input100"
							data-placeholder="&#xe80f;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn" onclick="return loginCheck()">로그인</button>
					</div>
					
					<c:if test="${!empty message }">
						<script>
							alert("${message}");
						</script>
					</c:if>
<%-- 					<div class="p-r-20" style="text-align: right;">
						<p>${message}</p>
					</div> --%>
					
					<div class="p-r-20" style="text-align: right;">
						<a href="join.do">회원 가입</a>
					</div>
				</form>

			</div>
		</div>
	</div>
<div id="dropDownSelect1"></div>


	<!--===============================================================================================-->
	<script src="../resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="../resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../resources/vendor/bootstrap/js/popper.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../resources/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="../resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="../resources/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../resources/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->

</body>
</html>

	<!--  
<form action="login.do" method="post" name="frm">
		<div class="form signup">
			<div class="form-header">
				<div class="show-signup">Sign Up</div>
				<div class="show-signin">Sign In</div>
				<div class="show-reset">Reset</div>
			</div>
			<div class="arrow"></div>
			<div class="form-elements">
				<div class="form-element">
					<input type="text" placeholder="Username">
				</div>
				<div class="form-element">
					<input type="password" placeholder="Password">
				</div>
				<div class="form-element">
					<input type="password" placeholder="Confirm password">
				</div>
				<div class="form-element">
					<button id="submit-btn">Sign Up</button>
				</div>
			</div>
		</div>
	</form>
	
	
	회원가입용
	<div class="wrap-input100 validate-input" >
				<input class="input100" type="text" name="user_id" placeholder="ID는 영문, 숫자 포함 4자이상 12자 이하">
	</div>
-->
