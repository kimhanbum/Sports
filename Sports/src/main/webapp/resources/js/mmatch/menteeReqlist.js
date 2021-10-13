$(function(){
	$('#mmSelect').change(function(){
		console.log("멘토(내게신청) 현황 이동");
		location.href="/sports/mypage/mentorReqList";
	});
});

function respRequest(state,id,code,tel){
	console.log("respRequest : "+state + ","+ code);
	$.ajax({
		url : "responsRequest",
		type : "post", 
		data : {"state":state,"id":id,"code":code,"tel":tel},
		dataType : "json",
		cache : false,
		success : function(data){
			console.log('성공');
			if(data == 1 ){
				if(state ==2){
					alert("해당 요청을 수락했습니다.");
				}else if(state ==3){
					alert("해당 요청을 거절했습니다.");
				}
			}
			go(1);
		},
		error : function(){
			console.log('에러');
		}
	});
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
	console.log("mentorReq:"+sdata);
	output = "";
	$.ajax({
		url : "menteeReqList_ajax",
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
				console.log('성공');
				var output='';
				//ajax로 가져온 list로 col 구성 
				$(data.reqlist).each(function(index,item){
				  output +='<tr><td><div>'+item.sports_name+'</div></td>'
						 +'<td><div>'+item.mentee_title+'</div></td>'
					     +'<td colspan="2">'
				         +'<span>'+item.user_name+'/'+item.user_mobile+'</span>';
				  if(item.match_state == 1){
					  output+='(요청대기)';
				  }else if(item.match_state == 2){
					  output+='(요청수락)';
				  }else if(item.match_state == 3){
					  output+='(요청거절)';
				  }
				  
				  output+='</td><td colspan="1" style="text-align: right !important;">';
				  if(item.match_state == 1){
					output+='<button class="genric-btn info circle" onclick="javascript:respRequest(2,'+"'"+item.user_id+"',"+"'"+item.match_code+"',"+"'"+item.user_mobile+"'"+');">요청수락</button>  ';
					output+='<button class="genric-btn info circle" onclick="javascript:respRequest(3,'+"'"+item.user_id+"',"+"'"+item.match_code+"',"+"'"+item.user_mobile+"'"+');">요청거절</button>  ';
				  }
				  output+='<button class="genric-btn info circle" onclick="javascript:detail('+"'"+item.match_code+"'"+');">상세보기</button></td>';	
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