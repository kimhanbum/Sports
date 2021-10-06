<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>마이페이지>물섭취량</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="manifest" href="site.webmanifest">-->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<link href='${pageContext.request.contextPath}/resources/calendar/packages/core/main.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/calendar/packages/daygrid/main.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/calendar/packages/timegrid/main.css' rel='stylesheet' />
<script src='${pageContext.request.contextPath}/resources/calendar/packages/core/main.js'></script>
<script src='${pageContext.request.contextPath}/resources/calendar/packages/interaction/main.js'></script>
<script src='${pageContext.request.contextPath}/resources/calendar/packages/daygrid/main.js'></script>
<script src='${pageContext.request.contextPath}/resources/calendar/packages/timegrid/main.js'></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
<script>
$(document).ready(function() {
    var calendarEl = document.getElementById('calendar');
    var today = new Date();
    var year = today.getFullYear();
    var month = ('0' + (today.getMonth() + 1)).slice(-2);
    var day = ('0' + today.getDate()).slice(-2);
    var dateString = year + '-' + month  + '-' + day;
    var yearMonth=year+"-"+month; 
    
    getData();
    
	var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid'],
      header: {
  	    left:   '',
	    center: 'title',
	    right:  '',
      },
      defaultDate:dateString,
      //변경
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      //INSERT처리(눌렀을 때 반응 처리) 
      select: function(arg) { 
    	 console.log(arg);
    	console.log(arg.startStr);
        var title = prompt('물 섭취량:');
        if (title) {
          	calendar.addEvent({
            title: title,
            start: arg.startStr,
            end: arg.endStr,
          })
          
          //ajax 데이터베이스에 저장
          $.ajax({
        	  type: "post",
        	  url : '${pageContext.request.contextPath}/water/wateradd',
        	  data: {
        		  title: title,
        		  time_start: arg.startStr,
        		  time_end: arg.endStr
        	  },
        	  success:function(){
        		  console.log("성공");
        	  }
          })
        	  
   
        }
        calendar.unselect()
      },
      editable: true,
      eventLimit: true, // allow "more" link when too many events

      
     events: items
    });
	
	
	function getData(){
		 $.ajax({
             url: '${pageContext.request.contextPath}/water/list',
             data: {"yearMonth" : yearMonth
             	 	},
             dataType: 'json',
             async:false,
             
             success: 
                 function(result) {

                     items = [];
                    
                     if(result!=null){
                         
                             $.each(result, function(index, element) {
                             
                            	 items.push({
                                     title: element.title,
                                     start: element.time_start,
                                     end: element.time_end,  
                                     //color : element.color,
                              }); //.push()
                                          
                              
                         }); //.each()
                         
                         console.log(items);
                         
                     }//if end                           
                                                   
                 }//success: function end                          
      }); //ajax end 
      return items;
	}
	
	
	
    calendar.render();	
    $(".fc-center h2").css("display","none");
    year=$(".fc-center h2").text().split(" ")[1];
    $('#yearMonth').text(year+'년 '+month+'월 ');
    
    $("#prev").click(function(){
    	month=Number(month)-1;
    	if(month==0){
    		month=12;
    		year=Number(year)-1;
    	}
    	console.log(month);
    	calendar.prev();
    	$(".fc-center h2").css("display","none");
    	year=$(".fc-center h2").text().split(" ")[1];
    	$('#yearMonth').text(year+'년 '+month+'월 ');
    });
    
    $("#next").click(function(){
    	month=Number(month)+1;
    	if(month==13){
    		month=1;
    		year=Number(year)+1;
    	}
    	console.log(month);
    	calendar.next();
    	$(".fc-center h2").css("display","none");
    	year=$(".fc-center h2").text().split(" ")[1];
    	$('#yearMonth').text(year+'년 '+month+'월 ');
    });
 
  });


</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 800px;
    margin: 0 auto;
  }

</style>
</head>
<body>
  <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div>

 <!-- slider Area Start-->
    <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="${pageContext.request.contextPath}/resources/image/water/water.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>물 섭취량 기록</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->

<section class="blog_area section-padding">
  <div class="row">
    <div class="col-lg-2">
      <!-- 마이 페이지 좌측 asideLeft 메뉴들 -->
	  <jsp:include page="/WEB-INF/views/sport_comm/asideLeft.jsp"/>
    </div>
    <div class="col-lg-10 mb-5 mb-lg-0">
    <!-- 마이페이지 중앙 article -->
	<article class="ftco-section">
		<div style="border:1px solid black;">
			<div class="d-flex justify-content-around mb-3" style="margin:16px 0px 0px 0px !important">
		 		<button id="prev" class="p-2 btn btn-dark">이전달</button>
		 		<div id="yearMonth" style="vertical-align: center; font-size: 30px;"></div>
	  			<button id="next" class="p-2 btn btn-dark">다음달</button>
	  		</div>
	  		<br>
	  		<br>
	  		<div id='calendar'></div>
	  		<br>
  		 	<!-- <div style="width:40%; float:right; text-align:right">
				<button style="width:120px; height:40px; vertical-align:middle;
				font-size:17px; cursor:pointer" onclick="javascript:allSave();">저장</button>
  		 	</div> -->
  		</div>
	</article> 
    </div>
  </div> 
</section>

<!-- Footer 영역  -->
<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
</body>
</html>