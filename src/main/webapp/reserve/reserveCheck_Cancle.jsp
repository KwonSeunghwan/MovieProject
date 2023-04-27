<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>마이 페이지</title>
<!-- Custom fonts for this template-->
<link href="../resources/page/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../resources/page/css/sb-admin-2.min.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="../resources/css/common.css">
<script type="text/javascript" src="<c:url value="../resources/js/member.js"/>"></script>
<body id="page-top" onload="printClock()">
<jsp:include page="../header.jsp" />
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="../member/mypage.do">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					오늘의 영화관 <sup></sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<!-- <li class="nav-item active"><a class="nav-link"
				href="#"> <i class="fas fa-fw fa-tachometer-alt"></i>  -->
				
				<!-- <span> -->
				
				
		
			<div style="border:1px solid #dedede; width:224px; height:200px; line-height:200px; 
			color:white; font-size:35px; text-align:center;" id="clock">
			</div>

	

				<!-- </span> --></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">나의 오늘의 영화</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="/reserve/reserveComplete.do"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>영화예매</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Ticketing Screens:</h6>
						<a class="collapse-item" href="<c:url value='/reserve/reserveCheck.do'/>">예매내역</a> <!-- <a
							class="collapse-item" href="cards.html">Cards</a> -->
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
	<!-- 		<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Utilities:</h6>
						<a class="collapse-item" href="utilities-color.html">Colors</a> <a
							class="collapse-item" href="utilities-border.html">Borders</a> <a
							class="collapse-item" href="utilities-animation.html">Animations</a>
						<a class="collapse-item" href="utilities-other.html">Other</a>
					</div>
				</div></li> -->

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">${loginUser.mem_id}(${loginUser.mem_id})님</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>회원정보</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="<c:url value='/member/update.do?mem_id=${loginUser.mem_id}'/>">회원 정보 수정</a> <!-- <a
							class="collapse-item" href="register.html">Register</a> <a
							class="collapse-item" href="forgot-password.html">Forgot
							Password</a> -->
						<div class="collapse-divider"></div>
						<!-- <h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a> <a
							class="collapse-item" href="blank.html">Blank Page</a> -->
					</div>
				</div></li>

			<!-- Nav Item - Charts -->
			<!-- <li class="nav-item"><a class="nav-link" href="charts.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
			</a></li> -->

			<!-- Nav Item - Tables -->
			<!-- <li class="nav-item"><a class="nav-link" href="tables.html">
					<i class="fas fa-fw fa-table"></i> <span>Tables</span>
			</a></li> -->

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

			<!-- Sidebar Message -->
			<!-- <div class="sidebar-card d-none d-lg-flex">
				<img class="sidebar-card-illustration mb-2"
					src="img/undraw_rocket.svg" alt="...">
				<p class="text-center mb-2">
					<strong>SB Admin Pro</strong> is packed with premium features,
					components, and more!
				</p>
				<a class="btn btn-success btn-sm"
					href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to
					Pro!</a>
			</div> -->

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

		<div class="checkCancle_container min-hi1000">
			<div class="wrapper"> 
				<div class="checkCancle_content">
					<form method="post" action="reserveCancle.do" id="frm">
						<table border="1">
							<tr>
								<th>예매 번호</th>
								<th>고객명</th>
								<th>영화 제목</th>
								<th>상영관 번호</th>
								<th>상영 시간</th>
								<th>좌석 번호</th>
							</tr>
							<tr>
								<td><input type="text" name="re_num" value="${reserve.re_num}"></td>
								<td><input type="text" name="mem_name" value="${reserve.mem_name}"></td>
								<td><input type="text" name="mv_name" value="${reserve.mv_name}"></td>
								<td><input type="text" name="th_num" value="${reserve.th_num}"></td>
								<td><input type="text" name="th_date" value="${reserve.th_date}"></td>
								<td><input type="text" name="seat_num" value="${reserve.seat_num}"></td>
							</tr>
						</table>
						<div class="checkCancle_btn_content">
							<a href="#" class="btn_type3" onclick="history.go(-1)">확인</a>	
							<input type="button" value="예매 취소" onclick="cancle()">
						</div>
					</form>
				</div>
			</div>
		</div>
		

	<!-- Bootstrap core JavaScript-->
	<script src="../resources/page/vendor/jquery/jquery.min.js"></script>
	<script
		src="../resources/page/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../resources/page/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../resources/page/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="../resources/page/vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="../resources/page/js/demo/chart-area-demo.js"></script>
	<script src="../resources/page/js/demo/chart-pie-demo.js"></script>


	<script>
	function cancle() {
	 		result = confirm("예매를 취소하겠습니까?")
	    if (result) {
	        alert("예매가 취소되었습니다.");
	        document.getElementById('frm').submit();
	    } else {
	        result = false
	    }
	}
	
	function printClock() {
	    
	    var clock = document.getElementById("clock");            // 출력할 장소 선택
	    var currentDate = new Date();                                     // 현재시간
	    var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // 현재 날짜
	    var amPm = 'AM'; // 초기값 AM
	    var currentHours = addZeros(currentDate.getHours(),2); 
	    var currentMinute = addZeros(currentDate.getMinutes() ,2);
	    var currentSeconds =  addZeros(currentDate.getSeconds(),2);
	    
	    if(currentHours >= 12){ // 시간이 12보다 클 때 PM으로 세팅, 12를 빼줌
	    	amPm = 'PM';
	    	currentHours = addZeros(currentHours - 12,2);
	    }

	   // if(currentSeconds >= 50){// 50초 이상일 때 색을 변환해 준다.
	   //    currentSeconds = '<span style="color:#de1951;">'+currentSeconds+'</span>'
	   // }
	    clock.innerHTML = currentHours+":"+currentMinute+" : "+currentSeconds +" <span style='font-size:30px;'>"+ amPm+"</span>"; //날짜를 출력해 줌
	    
	    setTimeout("printClock()",1000);         // 1초마다 printClock() 함수 호출
	}

	function addZeros(num, digit) { // 자릿수 맞춰주기
		  var zero = '';
		  num = num.toString();
		  if (num.length < digit) {
		    for (i = 0; i < digit - num.length; i++) {
		      zero += '0';
		    }
		  }
		  return zero + num;
	}
	</script>
	<jsp:include page="../footer.jsp" />
</body>

</html>