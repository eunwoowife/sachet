<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#productOuter{
		margin-top:200px;
		margin-left:300px;
		margin-right:300px;
	}
	
	.col{
		height:800px;
	}
	
	.card img{
		margin-top:80px;
	}
	
	#pagingArea{
		margin-left:510px;
		margin-top:120px;
	}
	
		.col:hover{
		cursor:pointer;
	}
	
	.col:hover img {
		filter: grayscale(100%);
}
	
	
</style>
<body>
<jsp:include page="../common/header.jsp" />
  <br>
              <!-- Grid Card -->
              
              <div id="productOuter" align="center">
              
              <h2 class="pb-1 mb-4 text-muted">체험목록</h2>
              <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
              
              <c:forEach var="e" items="${eList }">
                <div class="col" onclick="location.href='detail.exp?eno=${e.experNo}'">
                  <div class="card h-100">
                    <img id="zoom" class="card-img-top" src="${e.experImgFp}" />
                    <div class="card-body">
                      <b>${e.boothName }</b>
                    	<p style="font-size:12px;">${e.experTitle }</p>
                     <div class="productPrice">
                     	<b style="color:gray;">₩<fmt:formatNumber value="${e.experPrice }" type="number"/></b>
                     	<br><br><br>
                     </div>
                     	<div class="expDetail">
                     		<p style="font-size:12px;">시간　${e.experDate } / 
                     			<c:if test="${e.experTime == 1 }">10:00~12:00</c:if>
                     			<c:if test="${e.experTime == 2 }">13:00~15:00</c:if>
                     			<c:if test="${e.experTime == 3 }">15:00~17:00</c:if>
                     			<c:if test="${e.experTime == 4 }">17:00~19:00</c:if>
                     		</p>
                     		<p style="font-size:12px;">정원　${e.capacity }명</p>
                     	</div>
                    </div>
                  </div>
                </div>
                </c:forEach>
              
              
<!--                 <div class="col"> -->
<!--                   <div class="card h-100"> -->
<%--                     <img class="card-img-top" src="${pageContext.request.contextPath}/resources/uploadFiles/makePerfume.png" alt="Card image cap" /> --%>
<!--                     <div class="card-body"> -->
<!--                       <b style="font-size:20px;]">LOUIS VUITTION</b> <br> -->
<!--                       <p>루이비통 7향 1택 조향(30ml)</p> -->
<!--                      <div class="productPrice"> -->
<!--                      	<b style="color:gray;">₩100,000</b> -->
<!--                      	<br><br><br> -->
<!--                      </div> -->
<!--                       	<div class="expDetail"> -->
<!--                     	<p style="font-size:12px;">시간　2023.01.11 / 10:00~12:00</p> -->
<!--                     	<p style="font-size:12px;">정원　30명</p> -->
<!--                     	</div> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </div> -->

                    <div id="pagingArea" style="margin-left:550px;">
                		<ul class="pagination">
                		
                		<c:choose>
                		<c:when test="${pi.currentPage!=1 }">
		                    <li class="page-item"><a class="page-link" href="productListView.pro?currentPage=${pi.currentPage-1 }">Previous</a></li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li class="page-item disabled"><a class="page-link" href="productListView.pro?currentPage=${pi.currentPage-1 }">Previous</a></li>
	                    </c:otherwise>
                    	</c:choose>
                    	
                    	<c:forEach var="g" begin="${pi.startPage }" end="${pi.endPage }">
                    	<c:choose>
                    	<c:when test="${pi.currentPage eq g }">
		                    <li class="page-item disabled"><a class="page-link" href="productListView.pro?currentPage=${g }">${g }</a></li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li class="page-item"><a class="page-link" href="productListView.pro?currentPage=${g }">${g }</a></li>
	                    </c:otherwise>
	                    </c:choose>
	                    </c:forEach>
	                    
	                    <c:choose>
	                    <c:when test="${pi.currentPage ne pi.maxPage }">
		                    <li class="page-item"><a class="page-link" href="productListView.pro?currentPage=${pi.currentPage+1}">Next</a></li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li class="page-item disabled"><a class="page-link" href="productListView.pro?currentPage=${pi.currentPage+1}">Next</a></li>
	                    </c:otherwise>
	                    </c:choose>
	                    
                		</ul>
          		  </div>

                
                
                <br><br><br>
                </div>
              </div>
              
<br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>