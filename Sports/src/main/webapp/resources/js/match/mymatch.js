
var sport_name= null;

$(document).ready(function(){
	var user_id = $("#user_id").text();
	console.log(user_id);
	var sport_num = document.getElementById('sport_num').innerHTML;
	console.log(sport_num);
	
	if(sport_num ==1){
		$("#sport_num").html("축구");
	}
});


function RegiOk(){
	if(confirm('요청에 수락하시겠습니까?')){
		return true;
	}else
		return false;
}

function UpdateClick(Regi_num){
	console.log(Regi_num);
	
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1;
	var yyyy = today.getFullYear();
	if(dd<10){
	  dd='0'+dd
	} 
	if(mm<10){
	  mm='0'+mm
	} 

	today = yyyy+'-'+mm+'-'+dd;
	document.getElementById("Date").setAttribute("min", today);
	
	$.ajax({
		async: false,
		type: "post",
		url: "./selRegi",
		dataType: "json",
		data:{
			"REGISTER_NUM": Regi_num
		},
		success: function (result) {
			console.log(result);
			var num = result[0]["register_NUM"];
			var city =result[0]["match_ADR"];
			var city_detail =result[0]["match_DTL_ADR"];
			var person =result[0]["match_PRS"];
			var date =result[0]["match_TIME"];
			var skill =result[0]["match_SKL"];
			console.log(skill);
			$("#UpdateModal #regi_num").val(num);
			$("#UpdateModal #City").val(city);
			$("#UpdateModal #Detail").val(city_detail);
			$("#UpdateModal #Date").val(date);
			$("#UpdateModal #Person").val(person);
			$("#Skill").val(skill).prop("selected", true);
		}, 
		error: function(){
			alert("불러오기실패");
		}
	});
	
	var sport =  sport_name;
	$("#UpdateModal #Sport").val(sport);
	
	$("#UpdateModal").css({
		"display" :"block"
	});
}

function updateModal(){
	if(confirm('정말 수정 하시겠습니까?')){
		var Regi_num = JSON.parse($("#UpdateModal #regi_num").val());
		var MATCH_TIME = $("input[name=Date]").val();
		var MATCH_PRS =  $("input[name=Person]").val();
		var MATCH_SKL =	 $("select[name=Skill]").val();
		console.log(Regi_num);
		console.log(MATCH_TIME);
		console.log(MATCH_PRS);
		console.log(MATCH_SKL);
		
		$.ajax({
			async: false,
			type: "post",
			url: "./MactingUpdate",
			dataType: "json",
			data:{
	    	   "REGISTER_NUM": Regi_num,
	    	   "MATCH_TIME" : MATCH_TIME,
	    	   "MATCH_PRS" : MATCH_PRS,
	    	   "MATCH_SKL" : MATCH_SKL
			},
			success: function (result) {
					alert('수정 되었습니다.');
					location.reload();
			}, error:function(request,status,error){
		        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }
		});
	}else{
		return false;
	}
}

function deleteModal(){
	if(confirm('정말 삭제 하시겠습니까?')){
		var Regi_num = JSON.parse($("#UpdateModal #regi_num").val());
		$.ajax({
			async: false,
			type: "post",
			url: "./Regidelete",
			dataType: "json",
			data:{
	    	   "REGISTER_NUM": Regi_num,
			},
			success: function (result) {
					alert('삭제 되었습니다.');
					location.reload();
			}, error:function(request,status,error){
		        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }
		});
	}else{
		return false;
	}
	
}

function closeModal1(){
	$("#UpdateModal").css({
		"display" :"none"
	});
}