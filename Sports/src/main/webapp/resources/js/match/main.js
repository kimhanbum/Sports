
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
document.getElementById("match_Date").setAttribute("min", today);

var sport_name= null;

$(document).ready(function(){
	  initJson();//json 파일 가져오는 함수
	  initPage();//city 세팅해주는 함수
	  initSport();
});

function logNow(logContents){
	console.log(logContents);
}


function initSport(){
	var sport_num = Number($("#sport_num").text());
	var sendData = {sports_num: sport_num};
	
	$.ajax({
		type: "POST",
		contentType: "application/json; charset=utf-8;",
		async: false,
		url: "./selSportName",
		data : JSON.stringify(sendData),
		success: function (result) {
			sport_name = result;
			logNow(sport_name);
		},
		error:function(request,status,error){
			logNow("code:"+request.status+"\n"+
					"message:"+request.responseText+"\n"+
					"error:"+error);
		}
	});
}

var address_json = null;//전역으로 사용
function initJson() {
	  $.ajax({
	     async: false,
	     dataType: "json",
	     url: "../resources/json/address.json",//이 주소에서
	     success: function (result) {//결과가져오기 > object형태임 > 로그보셈
	    	 address_json = result;
	    	 logNow(address_json);
	     }
	  });
}

function initPage(){//페이지 로딩되면 city 셀렉바 옵션 추가
	var city = address_json.city;
	for(var i = 0; i < city.length; i++){
		$("#city").append('<option value="'+ i +'">'+ city[i] +'</option>');
	}
}

function initAddress(){//선택된 city에 해당하는 디테일 주소 초기화 //city 변경될때마다 = onchange 될때마다 함수호출
	$("#city_detail option").remove();//기존 옵션 내용 초기화
	
	var tmp_txt = "city_detail_" + $("#city").val();;//선택된 city에 해당하는 json 파일의 key값 스트링으로 생성
	eval("var address_detail = address_json." + tmp_txt);//eval > 코드로 인식해주는 함수
	//var address_detail = address_json.city_detail_@ 
	//@에 숫자 들어간 형태로 코드생성 > json에서 해당 키값에 해당하는 데이터 가져옴
	$("#city_detail").append('<option value="">&nbsp;세부지역&nbsp;&nbsp;</option>');//옵션 첫 디폴트값 생성
	for(var i = 0; i < address_detail.length; i++){//디테일 지역 옵션 추가
		$("#city_detail").append('<option value="'+ i +'">'+ address_detail[i] +'</option>');
	}
}

function showSocialMatching(){
	console.log("소셜매칭");
	$("#container").show();
	$("#btnSubmit").attr("onclick", "btnClick();");
	$("#text").html("Social<br>Match<br>");
	$("#btnSubmit").html("Search&nbsp&nbsp;");
	$("#city option:eq(0)").prop("selected", true); //값이 1인 option 선택
	$("#city_detail option:eq(0)").prop("selected", true);
	$("#date").find('input[type=date]').each(function(){
		$(this).val('');
	});
	$("#person").find('input[type=number]').each(function(){
		$(this).val(0);
	});
	$("#skill option:eq(0)").prop("selected", true);
}

function showMatchingRegi(){
	console.log("매칭등록");
	$("#container").hide(); //게시판 
	$("#btnSubmit").attr("onclick", "btnClick2();");
	$("#text").html("Match<br>Reigster<br>");
	$("#btnSubmit").html("Reigster");
	$("#city option:eq(0)").prop("selected", true); //값이 1인 option 선택
	$("#city_detail option:eq(0)").prop("selected", true);
	$("#date").find('input[type=date]').each(function(){
		$(this).val('');
	});
	$("#person").find('input[type=number]').each(function(){
		$(this).val(0);
	});
	$("#skill option:eq(0)").prop("selected", true);  //초기값 설정
}

function btnClick(){
	var user_id = $("#user_id").text();
	if(user_id == ""){
		location.href="/sports/member/login";
	}else{
		console.log("소셜매칭 클릭");
		var string = "";
		string += $("select[name=city]").val() + " / ";
		string += $("select[name=city_detail]").val();
		console.log("주소 : " + string);
	//기능구현
	}
}

function btnClick2(){
	var user_id = $("#user_id").text();
	if(user_id == ""){
		location.href="/sports/member/login";
	}else{
		console.log("매칭등록 클릭");
		var sport =  sport_name;
		var city = $("#city option:checked").text();
		var city_detail = $("#city_detail option:checked").text();
		var date = $("input[name=match_date]").val();
		var person = $("input[name=person]").val();
		var skill = $("select[name=skill]").val();
		
		$("#RegisterModal #Sport").val(sport);
		$("#RegisterModal #City").val(city);
		$("#RegisterModal #Detail").val(city_detail);
		$("#RegisterModal #Date").val(date);
		$("#RegisterModal #Skill").val(skill);
		$("#RegisterModal #Person").val(person);
		$("#RegisterModal").css({
			"display" :"block"
		});
	}
}

function btnApply(){
	var user_id = $("#user_id").text();
	if(user_id == ""){
		location.href="/sports/member/login";
	}else{
		$("#ApplyModal").css({
			"display" :"block"
		});
	}
}

function closeModal1(){
	$("#RegisterModal").css({
		"display" :"none"
	});
}

function closeModal2(){
	$("#ApplyModal").css({
		"display" :"none"
	});
}

function registerModal(){ //레지스터모달(모달등록버튼) 눌렀을때 이벤트
	var REGISTER_ID = $("#modal_id").text();
	var SPORT_NUM = $("#sport_num").text();
	var MATCH_ADR = $("#city option:checked").text();
	var MATCH_DTL_ADR = $("#city_detail option:checked").text();
	var MATCH_TIME = $("input[name=match_date]").val();
	var MATCH_PRS = $("input[name=person]").val();
	var MATCH_SKL = $("select[name=skill]").val();
	
	if($.trim($("#city option:checked").text())=="지역"){
		alert("지역을 선택하세요.");
		$("#RegisterModal").css({
			"display" :"none"
		});
		return false;
	}
	
	if($.trim($("#city_detail option:checked").text())=="세부지역"){
		alert("세부지역을 선택하세요.");
		$("#RegisterModal").css({
			"display" :"none"
		});
		return false;
	}
	
	if($.trim($("input[name=match_date]").val())==""){
		alert("날짜를 선택하세요.");
		$("#RegisterModal").css({
			"display" :"none"
		});
		return false;
	}
	
	if($.trim($("input[name=person]").val())=="0"){
		alert("1명이상 입력하세요.");
		$("#RegisterModal").css({
			"display" :"none"
		});
		return false;
	}
	
	if($.trim($("select[name=skill]").val())==""){
		alert("실력을 선택하세요.");
		$("#RegisterModal").css({
			"display" :"none"
		});
		return false;
	}
	
	$.ajax({
		async: false,
		type: "post",
		url: "./Regi",
		dataType: "text",
		data:{
    	   "REGISTER_ID": REGISTER_ID,
    	   "SPORT_NUM" : SPORT_NUM,
    	   "MATCH_ADR" : MATCH_ADR,
    	   "MATCH_DTL_ADR" : MATCH_DTL_ADR,
    	   "MATCH_TIME" : MATCH_TIME,
    	   "MATCH_PRS" : MATCH_PRS,
    	   "MATCH_SKL" : MATCH_SKL
		},
		success: function (result) {
			alert('매칭이 등록되었습니다.');
			location.reload();
		}, error: function(){
			alert('이미 등록된 매칭이 있습니다.');
		}
	});
	
}

function ApplyModal(){
	var REGISTER_ID = $("#modal_id").text();
	var SPORT_NUM = $("#sport_num").text();
	var MATCH_ADR = $("#city option:checked").text();
	var MATCH_DTL_ADR = $("#city_detail option:checked").text();
	var MATCH_TIME = $("input[name=match_date]").val();
	var MATCH_PRS = $("input[name=person]").val();
	var MATCH_SKL = $("select[name=skill]").val();
	
	$.ajax({
		async: false,
		type: "post",
		url: "./Regi",
		dataType: "text",
		data:{
    	   "REGISTER_ID": REGISTER_ID,
    	   "SPORT_NUM" : SPORT_NUM,
    	   "MATCH_ADR" : MATCH_ADR,
    	   "MATCH_DTL_ADR" : MATCH_DTL_ADR,
    	   "MATCH_TIME" : MATCH_TIME,
    	   "MATCH_PRS" : MATCH_PRS,
    	   "MATCH_SKL" : MATCH_SKL
		},
		success: function (result) {
			alert('등록성공');
			location.reload();
		}, error: function(){
			alert('실패');
		}
	});
}

