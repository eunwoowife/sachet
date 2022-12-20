<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
              
              
                <div class="col">
                  <div class="card h-100">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/uploadFiles/makePerfume.png" alt="Card image cap" />
                    <div class="card-body">
                      <b style="font-size:20px;]">LOUIS VUITTION</b> <br>
                      <p>루이비통 7향 1택 조향(30ml)</p>
                     <div class="productPrice">
                     	<b style="color:gray;">₩100,000</b>
                     	<br><br><br>
                     </div>
                      	<div class="expDetail">
                    	<p style="font-size:12px;">시간　2023.01.11 / 10:00~12:00</p>
                    	<p style="font-size:12px;">정원　30명</p>
                    	</div>
                    </div>
                  </div>
                </div>
               <div class="col">
                  <div class="card h-100">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/uploadFiles/향수2.png" alt="Card image cap" />
                    <div class="card-body">
                      <b>LOUIS VUITTION</b>
                    	<p style="font-size:12px;">스펠 온 유 (SPELL ON YOU)</p>
                     <div class="productPrice">
                     	<b style="color:gray;">₩410,000</b>
                     </div>
                    </div>
                  </div>
                </div>
                <div class="col">
                  <div class="card h-100">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/uploadFiles/향수3.png" alt="Card image cap" />
                    <div class="card-body">
                      <b>LOUIS VUITTION</b>
                    	<p style="font-size:12px;">스펠 온 유 (SPELL ON YOU)</p>
                     <div class="productPrice">
                     	<b style="color:gray;">₩410,000</b>
                     </div>
                    </div>
                  </div>
                </div>
                
               <div class="col">
                  <div class="card h-100">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/uploadFiles/향수4.png" alt="Card image cap" />
                    <div class="card-body">
                      <b>LOUIS VUITTION</b>
                    	<p style="font-size:12px;">스펠 온 유 (SPELL ON YOU)</p>
                     <div class="productPrice">
                     	<b style="color:gray;">₩410,000</b>
                     </div>
                    </div>
                  </div>
                </div>
                <div class="col">
                  <div class="card h-100">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/uploadFiles/향수5.png" alt="Card image cap" />
                    <div class="card-body">
                      <b>LOUIS VUITTION</b>
                    	<p style="font-size:12px;">스펠 온 유 (SPELL ON YOU)</p>
                     <div class="productPrice">
                     	<b style="color:gray;">₩410,000</b>
                     </div>
                    </div>
                  </div>
                </div>
                <div class="col">
                  <div class="card h-100">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/uploadFiles/향수6.png" alt="Card image cap" />
                    <div class="card-body">
                      <b>LOUIS VUITTION</b>
                    	<p style="font-size:12px;">스펠 온 유 (SPELL ON YOU)</p>
                     <div class="productPrice">
                     	<b style="color:gray;">₩410,000</b>
                     </div>
                    </div>
                  </div>
                </div>
                
                
                   <div id="pagingArea" align="center">
                		<ul class="pagination">
		                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
		                    <li class="page-item"><a class="page-link" href="#">1</a></li>
		                    <li class="page-item"><a class="page-link" href="#">2</a></li>
		                    <li class="page-item"><a class="page-link" href="#">3</a></li>
		                    <li class="page-item"><a class="page-link" href="#">4</a></li>
		                    <li class="page-item"><a class="page-link" href="#">5</a></li>
		                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                		</ul>
          		  </div>

                
                
                <br><br><br>
                </div>
              </div>
              
<br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>