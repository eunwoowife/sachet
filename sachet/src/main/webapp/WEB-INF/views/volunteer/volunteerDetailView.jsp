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
            width:80%;
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
        
        .myButton {
	box-shadow:inset 0px 1px 0px 0px #a4e271;
	background:linear-gradient(to bottom, #89c403 5%, #77a809 100%);
	background-color:#89c403;
	border-radius:6px;
	border:1px solid #74b807;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #528009;
}
.myButton:hover {
	background:linear-gradient(to bottom, #77a809 5%, #89c403 100%);
	background-color:#77a809;
}
.myButton:active {
	position:relative;
	top:1px;
}

.deny {
	box-shadow:inset 0px 39px 0px -24px #e67a73;
	background-color:#e4685d;
	border-radius:4px;
	border:1px solid #ffffff;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	padding:6px 15px;
	text-decoration:none;
	text-shadow:0px 1px 0px #b23e35;
}
.deny:hover {
	background-color:#eb675e;
}
.deny:active {
	position:relative;
	top:1px;
}
    </style>
</head>
<body>
         <jsp:include page="../common/header.jsp"/>
  
    <div class="content">
        <br><br>
       
       <c:choose>
       <c:when test="${loginUser.userNo eq '1001'}">
        <div class="innerOuter">
		
            <h2>STAFF 지원자 상세보기</h2>
            
              <c:if test="${v.volStatus eq 'A'}">
            
            <a href="#" class="myButton">합격 처리</a>
            
            </c:if>
            
            <c:if test="${v.volStatus eq 'N'}">
            
            <a href="#" class="deny">불합격 처리</a>
            
            </c:if>
          
            <br>

            <a class="btn btn-secondary" style="float:right;" href="javascript:history.back(); ">목록으로</a>
            <br><br>

            <table id="contentArea" algin="center" class="table">
         
                <tr>
                    <th width="100">이름</th>
                    <td colspan="3">${v.volNameKor}
                     &nbsp;&nbsp;(${v.volNameEng})
                    </td>
                    
                </tr>
                
                
                <tr>
                    <th>주소</th>
                    <td>${v.volAddress}</td>
                   
                </tr>
                <tr>
                <th >연락처</th>
                    <td>${v.volPhone}</td>
                </tr>
                <tr>
                    <th >소속</th>
                    <td > ${v.volSchool}</td>
                    <th>외국어 능력 </th>
                    <c:if test="${v.volLangRange eq '4'}">
                    <td>상</td>
                    </c:if>
                     <c:if test="${v.volLangRange eq '3'}">
                    <td>중</td>
                    </c:if>
                     <c:if test="${v.volLangRange eq '2'}">
                    <td>중하</td>
                    </c:if>
                     <c:if test="${v.volLangRange eq '1'}">
                    <td>하</td>
                    </c:if>
                    <c:if test="${v.volLangRange eq '0'}">
                    <td>無</td>
                    </c:if>
                   
                   
                   
                    
                </tr>
                <tr>
                    <th>지원팀</th>
                    <td >${v.volVol}</td>
                    <th>지원분야</th>
                    <td>${v.volVolified}</td>
                
                  
                </tr>
                <tr>
                	<td>지원 동기</td>
                    <td colspan="4">${v.volPath}</td>
                </tr>
            
            </table>
            <br>
				
            <div align="center">
                <!-- 수정하기, 삭제하기 버튼은 이 글이 본인이 작성한 글일 경우에만 보여져야 함 -->
              <a class="btn btn-primary" onclick="volunteerAppr('${v.userNo}');">적합</a> <a
				class="btn btn-danger" onclick="volunteerdeny('${v.userNo}');">부적합</a>
            </div>
            <br> <br>
       </c:when>
       <c:otherwise>
       	<script>
        			alert('관리자만 확인할 수 있습니다.');
        			javascript:history.back();
        		</script>
       </c:otherwise>
       </c:choose>
       
         		
   		 </div>
    
	<script>
	function volunteerAppr(userNo){
		$.ajax({
			url:"volunteerAppr.vo",
			type :"post",
			data:{
				userNo:userNo
				},
			success:function(result){
				if(result>0){
					alert("합격 승인되었습니다.");
					location.reload();
				}else{
					alert("승인에 실패하였습니다.")
				}
			}	,
			error:function(){
				console.log("실패");
			}
			})
			
		}
	
	function volunteerdeny(userNo){
		$.ajax({
			url:"volunteerDeny.vo",
			type :"post",
			data:{
				userNo:userNo
				},
			success:function(result){
				if(result>0){
					alert("불합격 승인되었습니다.");
					location.reload();
				}else{
					alert("승인에 실패하였습니다.")
				}
			}	,
			error:function(){
				console.log("실패");
			}
			})
			
		}
	
	
	
	</script>
    
  
    
</body>
</html>