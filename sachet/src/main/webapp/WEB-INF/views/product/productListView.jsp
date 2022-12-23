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
		height:700px;
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
              
              <h2 class="pb-1 mb-4 text-muted">상품목록</h2>
              <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
              
               <c:forEach var="p" items="${pList }">
                <div class="col" onclick="location.href='detail.pro?pno=${p.productNo}'">
                  <div class="card h-100">
                    <img id="zoom" class="card-img-top" src="${p.productImgFp}" />
                    <div class="card-body">
                      <b>${p.boothName }</b>
                    	<p style="font-size:12px;">${p.productName }</p>
                     <div class="productPrice">
                     	<b style="color:gray;">₩<fmt:formatNumber value="${p.productPrice }" type="number"/></b>
                     </div>
                    </div>
                  </div>
                </div>
                </c:forEach>
                
                
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