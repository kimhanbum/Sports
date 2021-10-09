$(function (){
	getList();

	$('#sports_name').click(function(){
	   var select = $("#sports_name").val();
      $.ajax({
         url : "../pm/select",
         data :{
        	 "select" : select
         },
         success : function(rdata){
        	console.log(rdata);
            if(rdata.length > 0){
            	//기존 select option을 제거
            	$("#sports_name > option").remove();
            	var output="<option selected>-- 선택 --</option>"
            	
            	//ajax로 가져온 select option구성
            	$(rdata).each(function(index,item){
            		value = '"' +  item.sports_NAME  + ' ' + item.cal +  '"' ; 
            		output += '<option value=' +  value +'>'+item.sports_NAME+'</option>'
            	})
            	
            	console.log(output);
            	
            	//구성한 option을 append
            	$('#sports_name').append(output);
            	//console.log("select=" + select);
            	//$("#sports_name").val(select);
            	//console.log(select)
            }
         },
         error : function(){
        	 console.log('에러');
         }
      });//ajax
   });//click
   
   $(".add").click(function(){
	   console.log("time"+time);
	   var data = $('#sports_name').val().split(" ");
	   
	   $.ajax({
		   type:"post",
		   url : "../pm/add",
		   async : false,
		   data:{
			   cal : data[1],
			   sports_name : data[0],
			   time : $("#time").val()
		   },
		   success : function(){
			console.log("성공")
		   }
			   
	   })//ajax end
	   getList();
   })

   $(document).on('click', '#remove', function(){
	var delnum = $(this).next().val();
	console.log(delnum);
	if(!confirm("해당 칼로리를 삭제하시겠습니까?")){
		return;
	}
	$.ajax({
		url : "../pm/delete",
		data :{
			"num" : delnum 
		},
		success: function(data){
			console.log("성공");
			getList();
		}
	})
	
})//click
   
})//전체

function getList(){
	$.ajax({
		url: "../pm/list",
		success : function(rdata){//rdata = object
			$("#kcal_list tbody").remove();
			var output = '';
        	$(rdata).each(function(index,item){
        	console.log("종목="+item.SPORTS_NAME)
			output += "<tr><td>  이미지 "; 
  			output += "<input id='num' type='hidden' value=" + item.PM_NO + ">";
  			output+= "</td>";
			output+= "<td>" + item.SPORTS_NAME +"</td>";
			output+= "<td>" + item.PM_KCAL + "</td>"
  			/*console.log("PM_NO" + item.PM_NO);*/
		})//each
        	$("#kcal_list tbody").append(output);
        	/*var pm_no = $('#num').val();
			console.log(pm_no);*/
		}
	})//ajax
	
}//getList function end






