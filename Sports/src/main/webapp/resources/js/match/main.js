var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0 so need to add 1 to make it 1!
var yyyy = today.getFullYear();
if(dd<10){
  dd='0'+dd
} 
if(mm<10){
  mm='0'+mm
} 

today = yyyy+'-'+mm+'-'+dd;
document.getElementById("match_Date").setAttribute("min", today);



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
	$("#container").hide();
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
	$("#skill option:eq(0)").prop("selected", true);
}

function btnClick(){
	console.log("소셜매칭 클릭");
	var string = "";
	string += $("select[name=city]").val() + " / ";
	string += $("select[name=city_detail]").val();
	console.log("주소 : " + string);
	//기능구현
}

function btnClick2(){
	console.log("매칭등록 클릭");
	var string = "";
	string += $("select[name=city]").val() + " / ";
	string += $("select[name=city_detail]").val() + " / ";
	string += $("input[name=match_date]").val() + " / ";
	string += $("input[name=person]").val() + " / ";
	string += $("select[name=skill]").val() + " / ";
	console.log(string);
	$("#genderModal").css({
		"display" :"block"
	});
}

function colseModal(){
	$("#genderModal").css({
		"display" :"none"
	});
}


