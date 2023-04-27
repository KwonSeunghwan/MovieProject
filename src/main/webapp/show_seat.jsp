<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--좌석예약-->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="resources/css/common.css" type="text/css" rel="stylesheet">

    <title>좌석예약</title>
    <script src="resources/js/jquery.js"></script>
    <script>
    
    var seat_check = false;
    var current_p=null;
    
   $(function() {
   		$(".row-btn").on("click", function() {
   			if(current_p!=null){
				   				
   				current_p.css("background-color", "lightgray");
   			}
   			
   			
   			current_p=$(this);
   			$("#seat-cho").text($(this).val());
   	  		$(this).css("background-color", "black").css("color", "white");
			$("#seat-name").text($(this).val());
			document.getElementById("seat-name").value = $("#seat-name").text();
   	 	});
	});
   
//	   	function open_win(url,name){
//			window.open(url,name,"width=500,height=230");
//		}

  </script>

</head>
<body>
    <jsp:include page="header.jsp"/>
    <div class="seat-choice min-hi1000">
        <div class="wrapper">
            <div class="view-seat">
                <div class="tit-line">
                    <div class="tit-name movie-show">
                        관람좌석
                    </div>
                </div>
                <div class="sh-screen">
                    
                    <div class="theater-number movie-show">
                      ${theater_num}상영관
                    </div>
                     <img class="door_top" src="resources/images/img-door-left.png">
                    <div class="screen-img">
                        <img src="resources/images/img-theater-screen.png">
                    </div>
                </div>
                <div class="sh-seat">
                    <div class="seat-btn">
                        <button class="col-btn">A</button>
                        <div class="left-seat-btn">
                            <button class="row-btn" value="A-1">1</button>
                            <button class="row-btn" value="A-2">2</button>
                            <button class="row-btn" value="A-3">3</button>
                            <button class="row-btn" value="A-4">4</button>
                        </div>
                        <div class="right-seat-btn">
                            <button class="row-btn" value="A-5">5</button>
                            <button class="row-btn" value="A-6">6</button>
                            <button class="row-btn" value="A-7">7</button>
                            <button class="row-btn" value="A-8">8</button>
                        </div>
                    </div>
                    <div class="seat-btn">
                        <button class="col-btn">B</button>
                        <div class="left-seat-btn">
                            <button class="row-btn" value="B-1">1</button>
                            <button class="row-btn" value="B-2">2</button>
                            <button class="row-btn" value="B-3">3</button>
                            <button class="row-btn" value="B-4">4</button>
                        </div>
                        <div class="right-seat-btn">
                            <button class="row-btn" value="B-5">5</button>
                            <button class="row-btn" value="B-6">6</button>
                            <button class="row-btn" value="B-7">7</button>
                            <button class="row-btn" value="B-8">8</button>
                        </div>
                    </div>
                    <div class="seat-btn">
                        <button class="col-btn">C</button>
                        <div class="left-seat-btn">
                            <button class="row-btn" value="C-1">1</button>
                            <button class="row-btn" value="C-2">2</button>
                            <button class="row-btn" value="C-3">3</button>
                            <button class="row-btn" value="C-4">4</button>
                        </div>
                        <div class="right-seat-btn">
                            <button class="row-btn" value="C-5">5</button>
                            <button class="row-btn" value="C-6">6</button>
                            <button class="row-btn" value="C-7">7</button>
                            <button class="row-btn" value="C-8">8</button>
                        </div>
                    </div>
                    <div class="seat-btn">
                        <button class="col-btn">D</button>
                        <div class="left-seat-btn">
                            <button class="row-btn" value="D-1">1</button>
                            <button class="row-btn" value="D-2">2</button>
                            <button class="row-btn" value="D-3">3</button>
                            <button class="row-btn" value="D-4">4</button>
                        </div>
                        <div class="right-seat-btn">
                            <button class="row-btn" value="D-5">5</button>
                            <button class="row-btn" value="D-6">6</button>
                            <button class="row-btn" value="D-7">7</button>
                            <button class="row-btn" value="D-8">8</button>
                        </div>
                    </div>
                    <div class="seat-btn">
                        <button class="col-btn">E</button>
                        <div class="left-seat-btn">
                            <button class="row-btn" value="E-1">1</button>
                            <button class="row-btn" value="E-2">2</button>
                            <button class="row-btn" value="E-3">3</button>
                            <button class="row-btn" value="E-4">4</button>
                        </div>
                        <div class="right-seat-btn">
                            <button class="row-btn" value="E-5">5</button>
                            <button class="row-btn" value="E-6">6</button>
                            <button class="row-btn" value="E-7">7</button>
                            <button class="row-btn" value="E-8">8</button>
                        </div>
                    </div>
                    <div class="seat-btn">
                        <button class="col-btn">F</button>
                        <div class="left-seat-btn">
                            <button class="row-btn" value="F-1">1</button>
                            <button class="row-btn" value="F-2">2</button>
                            <button class="row-btn" value="F-3">3</button>
                            <button class="row-btn" value="F-4">4</button>
                        </div>
                        <div class="right-seat-btn">
                            <button class="row-btn" value="F-5">5</button>
                            <button class="row-btn" value="F-6">6</button>
                            <button class="row-btn" value="F-7">7</button>
                            <button class="row-btn" value="F-8">8</button>
                        </div>
                    </div>
                    <div class="seat-btn">
                        <button class="col-btn">G</button>
                        <div class="left-seat-btn">
                            <button class="row-btn" value="G-1">1</button>
                            <button class="row-btn" value="G-2">2</button>
                            <button class="row-btn" value="G-3">3</button>
                            <button class="row-btn" value="G-4">4</button>
                        </div>
                        <div class="right-seat-btn">
                            <button class="row-btn" value="G-5">5</button>
                            <button class="row-btn" value="G-6">6</button>
                            <button class="row-btn" value="G-7">7</button>
                            <button class="row-btn" value="G-8">8</button>
                        </div>
                    </div>
                    <div class="seat-btn">
                        <button class="col-btn">H</button>
                        <img class="door_left" src="resources/images/img-door-top.png">
                        <div class="left-seat-btn">
                            <button class="row-btn" value="H-1">1</button>
                            <button class="row-btn" value="H-2">2</button>
                            <button class="row-btn" value="H-3">3</button>
                            <button class="row-btn" value="H-4">4</button>
                        </div>
                        <div class="right-seat-btn">
                            <button class="row-btn" value="H-5">5</button>
                            <button class="row-btn" value="H-6">6</button>
                            <button class="row-btn" value="H-7">7</button>
                            <button class="row-btn" value="H-8">8</button>
                        </div>
                    </div>


                </div>
            </div>
            <div class="view-info">

                <div class="title-name">영화제목</div>
                <div class="movie-name movie-info">${movie.mv_name}</div>

                <div class="title-name">선택좌석</div>
                <div class="ch-seat movie-info" id="seat-cho"></div>

                <div class="title-name">결제금액</div>
                <div class="pr-price movie-info">${movie.mv_price}원</div>
                <div class="movie-result">
                	<div class="flex_type">
                    <a href="#" class="btn_type2" onclick="history.go(-1)">이전</a>
		                <form id = "fo" method="get" action="reserve/reserve.do">
		 	                <input type="hidden" name = "mv_name" value="${movie.mv_name}">
							<input type="hidden" name = "theater_num" value="${theater_num}">
							<input type="hidden" name = "theater_date" value="${theater_date}">
							<input type="hidden" name = "seat" id="seat-name" value="">
		                    <input type="submit" value="다음">
		                    <!--  onclick="open_win('reserve/reserve.do','예매완료')" -->
		                </form>
	                </div>
                </div>                
            </div>
        </div>
    </div>
					
				
    <jsp:include page="footer.jsp"/>
</body>
</html>