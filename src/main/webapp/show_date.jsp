<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 상영일자 -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--제이쿼리 ui css-->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    <!--제이쿼리 style css-->
    <link rel="stylesheet" href="/resources/demos/style.css">
    
    <!--제이쿼리 js-->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    
    <!--제이쿼리 ui js-->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <!-- 제이쿼리 캘린더 관련 공유받은 lib-->
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/jquery-ui-1.10.4.custom.min.js"></script>
    <link rel="stylesheet" href="resources/css/jquery-ui.min.css">

    <!-- Link date Swiper`s Jquery-->
    <script src="resources/js/swiper-bundle.min.js"></script>
    <!-- Link Movie Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <!-- Link date Swiper`s CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />  
    <!-- Link movie Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <!-- 공통 css(다같이 만들어쓰는 css)-->
    <link href="resources/css/common.css" type="text/css" rel="stylesheet">

 <!--   <script src="resources/js/jquery-3.6.1.min.js"></script>-->
   
    <script src="resources/js/user.js\"></script>

    <title>상영시간표</title>
</head>
<body>
  <jsp:include page="header.jsp"/>

    <div class="movie_date">
    <div class="wrapper">
        <!-- Swiper -->
         <div class="tab-container">
        <div class="swiper mySwiper show_date tab-banner">
          <div class="swiper-wrapper">
          
             <!-- 
            <div class="swiper-slide show_menu_date"><input type="text" id="first_date"  readonly/></div>
            <div class="swiper-slide show_menu_date"><input type="text" id="second_date"  readonly/></div>
             -->   
            <div class="swiper-slide item current" data-tab="today-tab"><a href="#">15 오늘</a></div>
            <div class="swiper-slide item" data-tab="aaa-tab"><a href="#">16 내일</a></div>
            <div class="swiper-slide item"><a href="#">17 토</a></div>
            <div class="swiper-slide item"><a href="#">18 일</a></div>
            <div class="swiper-slide item"><a href="#">19 월</a></div>
            <div class="swiper-slide item"><a href="#">20 화</a></div>
            <div class="swiper-slide item"><a href="#">21 수</a></div>
            <div class="swiper-slide item"><a href="#">22 목</a></div>
            <div class="swiper-slide item"><a href="#">23 금</a></div>
            <div class="swiper-slide item"><a href="#">24 토</a></div>
            <div class="swiper-slide item"><a href="#">25 일</a></div>
            <div class="swiper-slide item"><a href="#">26 월</a></div>
            <div class="swiper-slide item"><a href="#">27 화</a></div>  
            <div class="swiper-slide item"><a href="#">28 수</a></div>
            <div class="swiper-slide item"><a href="#">29 목</a></div>
            <div class="swiper-slide item"><a href="#">30 금</a></div>
            <div class="swiper-slide item"><a href="#">1 토</a></div>
                  
          </div>
<!--        <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div> -->
        </div>
        <div class="movie_calendar">
            <label for="startDate"></label>
            <input type="text" name="startDate" id="startDate" class="hidden" id="input"> 
        </div>
          
    
            
        <!-- Swiper -->
           <div class="min-hi1000 tab-content current" id="today-tab">
              <div class="swiper movie-mySwiper"> 
                <div class="swiper-wrapper"> 
                  <div class="swiper-slide"> 
                    <div class="swiper-section">
                      <img src="resources/images/movie_img2.jpg" />
	                      <c:url var="goUrl" value="reserve/reserveschedule.do">
								<c:param name="mv_num" value="${mv_num}"/>
						  </c:url>
                      <a href="${goUrl}" class="btn btn_type1">예매하기</a>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="swiper-section">
                      <img src="resources/images/movie_img1.jpg" />
                      <a href="" class="btn btn_type1">예매하기</a>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="swiper-section">
                      <img src="" />
                      <a href="" class="btn btn_type1">예매하기</a>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="swiper-section">
                      <img src="picture/1917.jpg" />
                      <a href="" class="btn btn_type1">예매하기</a>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="swiper-section">
                      <img src="resources/images/img1.jpg" />
                      <a href="" class="btn btn_type1">예매하기</a>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="swiper-section">
                      <img src="picture/ARASHI.jpg" />
                      <a href="" class="btn btn_type1">예매하기</a>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="swiper-section">
                      <img src="picture/6.45.jpg" />
                      <a href="" class="btn btn_type1">예매하기</a>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="swiper-section">
                      <img src="https://swiperjs.com/demos/images/nature-8.jpg" />
                      <a href="" class="btn btn_type1">예매하기</a>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="swiper-section">
                      <img src="https://swiperjs.com/demos/images/nature-9.jpg" />
                      <a href="" class="btn btn_type1">예매하기</a>
                    </div>
                  </div>
                </div>
              </div>
         </div>
         <div class="tab-content" id="aaa-tab">
         2번째 탭 
         </div>
        </div>


    
          </div>
    </div>
     


    

    <jsp:include page="footer.jsp"/>

<script>
  // 날짜관련 슬라이드를 위한 jquery
   var NewsSwiper = new Swiper(".mySwiper", {
        slidesPerView: 14,//아이템 숫자 
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
    });
      
 /* 
  function setColor(color){    
     document.getElementById(color).style="white";
  } 
*/

 // 캘린더 작업을 위한 jquery
 $(function() {
  var startDate = $("#startDate");
   $("#startDate").datepicker({
      minDate:+0,
      maxDate:"+1M",

       showOn: "button",
       buttonImage: "resources/images/calendar.jpg",
       buttonImageOnly: true,
       buttonText: "Select date"
   });
   
      $("#startDate").on("change", function() {               
            var chooseDate = $("#startDate").val().split("/");
            var kst = chooseDate[1];
            
            alert(kst);
            $("#first_date").val(kst);
            $("#second_date").val(Number(kst)+1);
            
   });
      
      /*var today = new Date();
      var day = ('0' + today.getDate()).slice(-2);
      var num =  1;
      var dateWrapper = $(".show_date .swiper-wrapper");
      var str = "";
      for(var i = 0; i < 14 ; i++ ){
         if(str >= 32){
            str == 1;
         }
         str += "<div class='swiper-slide'><a href=''>" + (Number(day)-1 + num++) + "일</a></div>";
      }
      dateWrapper.html(str);
     */
});


   var swiper = new Swiper(".movie-mySwiper", { 
        effect: "coverflow",
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: "auto",
        coverflowEffect: {
          rotate: 50,
          stretch: 0,
          depth: 100,
          modifier: 1,
          slideShadows: true,
        },
      });

   
   
   $(document).ready(function(){

       $('.tab-banner .item').click(function(){
           var tab_id = $(this).attr('data-tab');

           $(this).siblings('.tab-banner .item').removeClass('current');
           $(this).closest('.tab-container').find('.tab-content').removeClass('current');

           $(this).addClass('current');
           $("#"+tab_id).addClass('current');
       })
   });
   
</script>

</body>
</html>