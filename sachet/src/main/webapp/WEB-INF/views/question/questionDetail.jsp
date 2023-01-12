<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SACHET</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
     @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    
    *{
    	font-family: 'IBM Plex Sans KR', sans-serif;
    }
        .content {
            background-color:white;
            width:85%;
            margin:auto;
        }
        .innerOuter {
            border:1px solid white;
            width:80%;
            margin:auto;
            padding:5% 10%;
            background-color:white;
        }

        table * {margin:5px;}
        table {width:100%;}
    </style>
</head>
<body>
        
         <jsp:include page="../common/header.jsp"/>
  
    <div class="content">
        <br><br>
        <c:choose>
        
        <c:when test="${loginUser.userNo eq que.userNo or loginUser.userNo eq '1001'}">
        <div class="innerOuter">
		
            <h2>게시글 상세보기</h2>
            <br>

            <a class="btn btn-secondary" style="float:right;" href="javascript:history.back();">목록으로</a>
            <br><br>

            <table id="contentArea" algin="center" class="table">
         
                <tr>
                    <th width="100">제목</th>
                    <td colspan="3">${que.quesTitle}</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>${que.quesWritter}</td>
                    <th>작성일</th>
                    <td>${que.quesDate}</td>
                </tr>
                
                
                
                 <tr>
                        <th>카테고리</th>
                        
                         <c:if test ="${que.quesCate eq '1'}">
               			 <td colspan="3"> 회원 정보 관련</td>
                        </c:if>
                        <c:if test ="${que.quesCate eq '2'}">
               			 <td colspan="3"> 예매 구매 관련</td>
                        </c:if>
                         <c:if test ="${que.quesCate eq '3'}">
               			 <td colspan="3"> 기업 관련</td>
                        </c:if>
                         <c:if test ="${que.quesCate eq '4'}">
               			 <td colspan="3" >기타문의</td>
                        </c:if>
                    
                        
                    </tr>
                
                
                
                
                <tr>
                    <th>내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><p style="height:150px;">${que.quesConte}</p></td>
                </tr>
            
            </table>
            <br>
			<c:if test="${loginUser.userName eq que.quesWritter}">
            <div align="center">
                <!-- 수정하기, 삭제하기 버튼은 이 글이 본인이 작성한 글일 경우에만 보여져야 함 -->
          
                
              <a class="btn btn-primary" style="background-color  :#BAD1F0; border-color:#BAD1F0;" onclick="postFormSubmit(1);">수정하기</a> <a
						class="btn btn-danger" style="background-color :white; color:#BAD1F0; border-color:lightgray;" onclick="postFormSubmit(2);">삭제하기</a>
            </div>
            <br><br>
            
           <form id="postForm" method="post">
					<input type="hidden" name="quesNo" value="${que.quesNo }"> <input
						type="hidden" name="quesCate" value="${que.quesCate}">
				</form>

				<script>
            	function postFormSubmit(num){
            		
            		//동적으로 DOM요소 만들어서 이벤트(submit)
            		var form = $("<form>");
            		var cBno = $("<input>").prop("type","hidden").prop("name","quesNo").prop("value","${que.quesNo}");
					var cFp = $("<input>").prop("type","hidden").prop("name","quesCate").prop("value","${que.quesCate}");
					
					//form태그에 input요소 두개 넣기
					form.append(cBno).append(cFp);
					
					if(num==1){ 
						form.prop("action","updateForm.qs");
					}else{
						
						form.prop("action","delete.qs");
					}
					
					
					
					$("body").append(form);
					
					form.prop("method","POST").submit();
					
			
            	}
            </script>
            
            </c:if>
			


            <!-- 댓글 기능은 나중에 ajax 배우고 나서 구현할 예정! 우선은 화면구현만 해놓음 -->
            
            <table id="replyArea" class="table" align="center">
				<thead>
					<c:choose>
					
						<c:when test="${loginUser.userNo eq '1001'}">
							<tr>
								<th colspan="2"><textarea class="form-control"
										name="rcontent" id="content" cols="55" rows="2"
										style="resize: none; width: 100%;"></textarea></th>
								<th style="vertical-align: middle"><button
										class="btn btn-secondary" onclick="addReply();">등록하기</button></th>
							</tr>
						</c:when>
						<c:otherwise>
							<tr>
								<th colspan="2"><textarea class="form-control"
										name="rcontent" id="content" cols="55" rows="2"
										style="resize: none; width: 100%;" readonly>관리자만 작성할 수 있습니다.</textarea>
										
								</th>
								<th style="vertical-align: middle"><button
										class="btn btn-secondary" disabled>등록하기</button></th>
							</tr>
						</c:otherwise>
					</c:choose>
					<tr>
						<td colspan="3">답변
						</td>
					</tr>
				</thead>
			
				<tbody>
				</tbody>
				

			</table>
			
        </div>
        <br><br>
        </c:when>
        <c:otherwise>
        		<script>
        			alert('글작성자만 확인할 수 있습니다.');
        			javascript:history.back();
        		</script>
        </c:otherwise>
        </c:choose>

    </div>
    
  <script>
  
  $(function(){
		selectReplyList(); //dom요소 생성 후 실행(페이지 구성될때 댓글리스트 조회해오기)
	})
	
	//댓글 조회 함수
	function selectReplyList(){
		$.ajax({
			url : "rlist.qs",
			data : {quesReFNo : ${que.quesNo}},
			success : function(result){
				//console.log(result);
				var resultStr = "";
				
				for(var i=0; i<result.length; i++){
					resultStr += "<tr>"
								+"<th>"+result[i].replyWriter+"</th>"
								+"<td>"+result[i].questionReplyContent+"</td>"
								+"<td>"+result[i].questionReplyCreateDate+"</td>"
								+"</tr>";
				}
				//조회해온 데이터 dom요소에 추가 
				$("#replyArea>tbody").html(resultStr);
				//댓글 수 
				$("#rcount").text(result.length);
			},
			error : function(){
				console.log("통신 실패");
			}
			
		})
	}
  
  
  function addReply(){
		
		var $vali = $("#content");
		//console.log($("#content").val());
		
		
  		$.ajax({
  			url : "rinsert.qs",
  			data : {
  				quesReFNo : ${que.quesNo},
  				questionReplyContent : $("#content").val(),
  				// admin 문자 자체로 나오기 때문에 문자열 처리 해줘야함 해주지 않으면 변수로 인식 
  				replyWriter : "${loginUser.userId}"  
  			},
  			success : function(result){
  				if(result=="yes"){
  					selectReplyList();
  					$vali.val("");
  				}
  			},
  			error : function(){
  				console.log("통신 실패");
  			}
  		})
  		
 	}
  
  </script>
    
  
    
</body>
</html>