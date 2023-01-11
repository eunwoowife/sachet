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
            background-color:rgb(247, 245, 245);
            width:80%;
            margin:auto;
        }
        .innerOuter {
            border:1px solid lightgray;
            width:80%;
            margin:auto;
            padding:5% 10%;
            background-color:white;
        }

        #boardList {text-align:center;}
        #boardList>tbody>tr:hover {cursor:pointer;}

        #pagingArea {width:fit-content; margin:auto;}
        
        #searchForm {
            width:80%;
            margin:auto;
        }
        #searchForm>* {
            float:left;
            margin:5px;
        }
        .select {width:20%;}
        .text {width:53%;}
        .searchBtn {width:20%;}
    </style>
</head>
<body>
    
  

    <div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% 10%;">
            <h2>STAFF 관리게시판 </h2>
            <br>
          
          <!-- 
            <button type="submit" class="btn btn-secondary" style="float:right;" >검색</button>
           -->
        
            <br>
            <br>
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                    <tr>
                    	
                        <th>지원번호</th>
                        <th>영어이름</th>
                        <th>주소</th>
                        <th>핸드폰 번호</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach var="vo" items="${list}">
                    <tr>
                    	
                        <td>${vo.volNo}</td>
                        <td>${vo.volNameEng}</td>
                        <td>${vo.volAddress}</td>
                        <td>${vo.volPhone}</td>
                        <td>${vo.volPhone}</td>
                        <td></td>
                       
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
            			console.log($(this).children().eq(0).text());
            			location.href="detail.vo?volNo="+$(this).children().eq(0).text();
            		})
            	})
            
            </script>
  

</body>
</html>