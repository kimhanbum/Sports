<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>물섭취량</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<jsp:include page="/WEB-INF/views/sports_management/pmlink.jsp"/>

</head>

<body>
	<div class="container">
	<div class="row">
		<div class="col-md-12">
			<canvas id ="myChart">
			</canvas>
			<input type="hidden" id="goaldata" name="goaldata" value="${goaldata}">
			<input type="text" id="title" name="title"><button id="add"></button>
			<div>${goaldata}</div>
		</div>
	</div>
	</div>
	
<script>
//ajax로 값을 가져와요
// [{label:""물섭취량""}]
function getDoughnut(goaldata, title){		
	

	var ctx = $("#myChart");
	//var doughnutLabels = ["목표물섭취량", "내 섭취량"];
	//var doughnutdata = [100, 70];
	 doughnutChart = new Chart(ctx,{
		type : 'doughnut', //pie, line, doughnut, polarArea
		data: {
			labels : ["목표 물 섭취량", "내 섭취량"],//doughnutLabels,	
			datasets : [{
				data : [
					goaldata,
					title
					],
				backgroundColor: ['#4e73df', '#1cc88a'],
				hoverBackgroundColor: ['#2e59d9', '#17a673'],
				hoverBorderColor: "rgba(234, 236)",
			}],
		},
		options:{
			cutoutPercentage: 90
		}
	});
	
	}
	var goaldata = '${goaldata}';
	var title = '${title}';
	
		
	getDoughnut(goaldata, title);
	

	$("#add").click(function(){
		
		  $.ajax({	
				type: "post",
				url : "${pageContext.request.contextPath}/water/wateradd2",
				data:{
					goaldata: $("#goaldata").val(),
					title : $("#title").val()
				},
				success: function(rdata){
					console.log("성공");
					doughnutChart.destroy();
					getDoughnut(rdata.goaldata, rdata.title);
				}
			})
	})

	</script>
</body>
</html>