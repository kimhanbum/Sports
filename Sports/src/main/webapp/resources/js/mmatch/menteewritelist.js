$(function(){
	$('#mmSelect').change(function(){
		console.log("멘토페이지 이동");
		location.href="/sports/mypage/mentorwriteList";
	});
});

function modify(code){
	console.log("modity:"+code);	
	location.href="/sports/mmatch/menteeModify?code="+code;
}
function del(code){
	console.log("del:" + code);
	if(confirm("해당글을 삭제하시겠습니까?")){
		$.ajax({
			url : "delWMentee",
			type : "Post", 
			data : {"code":code,},
			dataType : "json",
			cache : false,
			success : function(data){
				if(data == 1){
					alert("해당글을 삭제 했습니다.");
					go(1);
				}   				
			},
			error : function(){
				console.log('에러');
			}
		});		
	}
}
//ajax 화면 처리를 위한 최상위 메소드
function go(page){
	//출력 페이지,검색항목,검색키워드로 쿼리스트링 작성
	var data = "page="+page;
	ajax(data);
}
//페이지네이션 화면 출력 메서드
function setPaging(href,digit){
	var output='<a ';
	if(href==""){
		output+='class="gray" ';
	}
	output+= href + ' id="paging">' + digit + "</a>";
	return output;
}

//화면처리 ajax
function ajax(sdata){
	console.log(sdata);
	output = "";
	$.ajax({
		url : "menteewriteList_ajax",
		type : "get", 
		data : sdata,
		dataType : "json",
		cache : false,
		success : function(data){
			//멘토 게시글 리스트 삭제
			$('tbody').empty(); 
			
			//pagination 삭제
			$(".pagination").empty();
			
			//검색 결과 갯수와 검색키워드 표시
			$('#writingcount').text(data.listcount);
			
			if(data.listcount > 0 ){
				var output='';
				//ajax로 가져온 list로 col 구성 
				$(data.menteelist).each(function(index,item){
				  output +='<tr><td><div></div>'+item.sports_name+'</td>'
						 +'<td><div>'+item.mentee_title+'</div></td>'
					     +'<td><span>'+item.mentee_amount+'</span>원</td>'
					     +'<td><div>'+item.mentee_name+'</div></td>'
						 +'<td colspan="1" style="text-align: right !important;">'
						 +'<button class="genric-btn info circle" onclick="javascript:detail('+"'"+item.mentee_code+"'"+')">상세보기</button>'
						 +'<button class="genric-btn info circle" onclick="javascript:modify('+"'"+item.mentee_code+"'"+');">수정하기</button>'
						 +'<button class="genric-btn info circle" onclick="javascript:del('+"'"+item.mentee_code+"'"+');">삭제하기</button>'
					     +'</td></tr>';
				});
				//해당 결과를 append
				$('tbody').append(output); 
				
				
				//pagination 시작
				output = "";
				
				digit = '&laquo;';
				href="";
				if(data.page > 1){
					href = 'href=javascript:go('+(data.page-1) + ')';
				}
				output += setPaging(href,digit);
				
				for(var i = data.startpage; i<=data.endpage; i++){
					digit=i;
					href="";
					if(i !=data.page){
						href='href=javascript:go('+i+')';
					}
					else{
						href='class="active"';
					}
					output += setPaging(href,digit);
				}
				
				digit = '&raquo;';
				href="";
				if(data.page < data.maxpage){
					href = 'href=javascript:go('+(data.page+1) + ')';
				}
				output += setPaging(href,digit);
				$('.pagination').append(output);
			}
			else{
				//등록글 없음 표시 붙이기
				output='<font style="padding-left:10px;" size=5>등록된 글이 없습니다.</font>';
				$('tbody').append(output); 
			}
		},
		error : function(){
			console.log('에러');
		}
	});
}