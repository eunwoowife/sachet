<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
    
     @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    
    *{
    	font-family: 'IBM Plex Sans KR', sans-serif;
    }
        .content {
            background-color:#ffffff;
            width:80%;
            margin:auto;
        }
        .innerOuter {
            border:1px solid white;
            width:91%;
            margin:auto;
            padding:5% 10%;
            background-color:white;
        }

        #boardList {text-align:center;
        	border-collapse:collapse;
        	border-spacing:0;}
        	
        #boardList>thead>tr{
        background-color:#ffffff;
        border-color:#ffffff;
        }	
        #boardList>tbody>tr:hover {cursor:pointer;}

        #pagingArea {width:fit-content; margin:auto; padding:5%}
        
        
    
.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}


.w-btn-indigo {
    background-color: aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline {
    border: 3px solid aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline:hover {
    color: #1e6b7b;
    background: aliceblue;
}
    </style>
</head>
<body>
    
  

    <div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% 10%;">
            <h2>1:1문의 게시판 </h2>
            <br>
          
          <!-- 
            <button type="submit" class="btn btn-secondary" style="float:right;" >검색</button>
           -->
           <c:if test="${loginUser.userNo gt '1000'}">
            <a class="w-btn w-btn-indigo" style="float:right; "  href="insert.qs">글쓰기</a>
           </c:if>
            <c:if test="${loginUser.userNo lt '1000'}">
              <a class="w-btn w-btn-indigo" style="float:right;" href="insertC.qs">글쓰기</a>
            </c:if>
            <br>
            <br>
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                    <tr>
                        <th>글번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>조회수</th>
                        <th>작성일</th>
                        <th>답변여부</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach var="que" items="${list}">
                    <tr>
                        <td>${que.quesNo}</td>
                        <td>${que.quesTitle}</td>
                        <td>${que.quesWritter}</td>
                        <td>${que.quesCount}</td>
                        <td>${que.quesDate}</td>
                       <c:if test="${que.questatus eq'Y'}">
                       
                        <td>미답변</td>
                        </c:if>
                        <c:if test="${que.questatus eq'G'}">
                       
                        <td>답변완료</td>
                        </c:if>
                    </tr>
                         </c:forEach>
                  
                   
                   
                
                </tbody>
            </table>
            <br>

            <div id="pagingArea">
                <ul class="pagination">
                	<!-- currentPage가 1이면 숨기기 -->
                	<c:choose>
                		<c:when test="${pi.currentPage ne 1 }">
                			<li class="page-item"><a class="page-link" href="list.qs?currentPage=${pi.currentPage-1}">Previous</a></li>
                		</c:when>
	                    <c:otherwise><!-- currentPage가 1일경우 (1페이지) -->
	                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
	                    </c:otherwise>
                	</c:choose>
                	<c:forEach begin="${pi.startPage }" end="${pi.endPage }" var="p">
	                  <c:choose>
                		<c:when test="${pi.currentPage eq p }">
                			<li class="page-item disabled"><a class="page-link" href="list.qs?currentPage=${p}">${p}</a></li>
                		</c:when>
                		<c:otherwise>
	                    	<li class="page-item"><a class="page-link" href="list.qs?currentPage=${p}">${p}</a></li>
                		</c:otherwise>
                		</c:choose>
                	</c:forEach>
                    
                    <!-- currentPage가 maxPage와 일치하면 숨기기  -->
                    <c:choose>
						<c:when test="${pi.currentPage eq pi.maxPage }">
		                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="list.qs?currentPage=${pi.currentPage +1}">Next</a></li>
						</c:otherwise>                    
                    </c:choose>
                </ul>
            </div>

            <br clear="both"><br>

            <br><br>
        </div>
        <br><br>

    </div>

   <script>
            	$(function(){
            		$("#boardList>tbody tr").click(function(){
            			//console.log($(this).children().eq(0).text());
            			location.href="detail.qs?quesNo="+$(this).children().eq(0).text();
            		})
            	})
            
            </script>
  

</body>
</html>