(function ($) {

})(jQuery);
function Tang(){
    var x = document.getElementById("quantity").value;//lay gia tri cu trong text
    if(parseInt(x) >= 0){
        document.getElementById("quantity").value = parseInt(x) +1;// + gia tri lay dc len 1 roi gan kq vao o text
    }
}
function Giam(){
    var x = document.getElementById("quantity").value;
    if(parseInt(x) >= 1){
        document.getElementById("quantity").value = parseInt(x) -1;
    }
}

function showSocialMatching(){
	console.log("소셜매칭");
	$("#container").show();
	$("#btnSubmit").attr("onclick", "btnClick();");
	
}

function showMatchingRegi(){
	console.log("매칭등록");
	$("#container").hide();
	$("#btnSubmit").attr("onclick", "btnClick2();");
	
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
	
}


