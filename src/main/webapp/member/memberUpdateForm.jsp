<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 수정 폼</title>

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
.logch {
	display: flex;
}

.logch input {
	margin-right: 10px;
}

.btn_ex_1 {
	border-radius: 10px;
	background-color: #F2AB39;
	color: white;
	font-size: 12px;
	font-weight: 900;
	padding-left: 10px;
	padding-right: 10px;
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
					회원 정보 변경 <!-- <br>  '*' 표시항목은 필수 입력 항목 입니다. -->

				</span>

				<form class="login100-form validate-form p-b-33 p-t-5"
					action="update.do" method="post" name="frm">
					<input type="hidden" name="grade" value="0">
					<!-- 등급 숨겨서 적용 없으면 null 값으로 들어가 오류 발생 -->

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="mem_name" id="mem_name"
							placeholder="name" value="${mVo.mem_name}" readonly> <span
							class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input">

						<div class="logch">

							<input class="input100" type="text" name="mem_id"
								placeholder="Id" id="mem_id" value="${mVo.mem_id}" readonly>
							<span class="focus-input100" data-placeholder="&#xe82a;"></span>
						</div>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="mem_pw" id="mem_pw"
							placeholder="Password"> <span class="focus-input100"
							data-placeholder="&#xe80f;"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="mem_pw_check"
							id="mem_pw_check" placeholder="Confirm password"> <span
							class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="mem_email"
							id="mem_email" placeholder="Email" value="${mVo.mem_email}">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="mem_phone"
							id="mem_phone" placeholder="Phone" value="${mVo.mem_phone}">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn" onclick="return idModify()">
							수정하기</button>
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