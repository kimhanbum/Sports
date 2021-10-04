<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>마이페이지>물섭취량</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
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
    var yearMonth=year+"/"+month;
    
	var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid'],
      header: {
  	    left:   '',
	    center: 'title',
	    right:  ''
      },
      defaultDate:dateString,
      navLinks: false, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {  
        var title = prompt('Event Title:');
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
            allDay: arg.allDay
          })
        }
        calendar.unselect()
      },
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events:function(info, successCallback, failureCallback){
    	  if (calendar === undefined)
    	  {	
    		  month = Number(month);
    		  console.log("calendar is undefined : " + month);
    		  
    	  }
    	  else{
    		  if(month < 10){
    			  month = "0"+ month;
    		  }
    		  yearMonth=year+"/"+month;
    		  console.log("calendar is def : " + yearMonth);
    	  }
          $.ajax({
                 url: '${pageContext.request.contextPath}/water/wateradd',
                 data: {"yearMonth" : yearMonth, 
                	 	"WI_NO" : $("#WI_NO").val(),
                	 	"USER_ID" : "admin01",
                	 	},
                 type : "post",
                 dataType: 'json',
                 success: 
                     function(result) {

                         var events = [];
                        
                         if(result!=null){
                             
                                 $.each(result, function(index, element) {
                                 
                                  events.push({
                                         title: element.title,
                                         start: element.start,
                                         end: element.end,  
                                         //color : element.color,
                                  }); //.push()
                                              
                                  
                             }); //.each()
                             
                             console.log(events);
                             
                         }//if end                           
                         successCallback(events);                               
                     }//success: function end                          
          }); //ajax end
      }, //events:function end
      
    });
	
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


	<!-- 마이페이지 중앙 article -->
	<article class="ftco-section">
		<div style="border:1px solid black;">
			<div class="d-flex justify-content-around mb-3" style="margin:16px 0px 0px 0px !important">
		 		<button id="prev" class="p-2 btn btn-dark">이전달</button>
		 		<div id="yearMonth" style="vertical-align: center; font-size: 30px;"></div>
	  			<button id="next" class="p-2 btn btn-dark">다음달</button>
	  		</div>
	  		<br>
	  		<!-- <div id="colorList">
	  			<div class="color-circle" style="background-color:green;"></div>
	  			<span class="color-info">&nbsp;아침</span>
	  			<div class="color-circle" style="background-color:orange;"></div>
	  			<span class="color-info">&nbsp;점심</span>
	  			<div class="color-circle" style="background-color:yellow;"></div>
	  			<span class="color-info">&nbsp;저녁</span>
	  			<div class="color-circle" style="background-color:blue;"></div>
	  			<span class="color-info">&nbsp;간식</span>
	  			<div class="color-circle" style="background-color:pink;"></div>
	  			<span class="color-info">&nbsp;물</span>
	  		</div> -->
  		 	
	  		<br>
	  		<div id='calendar'></div>
	  		<br>
	  		
  		</div>
	</article>
<!-- Footer 영역  -->
<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
</body>
</html>