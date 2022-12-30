<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--
	Phantom by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Phantom by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/noscript.css" /></noscript>
	</head>
	<style>
		 @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
		 
		   *{
    	font-family: 'IBM Plex Sans KR', sans-serif !important;
    }
	</style>
	<body class="is-preload">
	
	<jsp:include page="../common/header.jsp" />
				<br><br><br><br><br><br><br><br><br><br>
		<!-- Wrapper -->
			<div id="wrapper">
				
				<!-- Main -->
					<div id="main">
						<div class="inner">
							<header>
								<div align="center">
									<h2 style="color:gray;">부스목록</h2>
								</div>
							</header>
							<section class="tiles" id="boothStyle">
							
							<c:forEach var="b" items="${booList }">
								<article class="style${b.comNo}">
									<span class="image">
										<img src="${b.boothImgFp }" alt="" />
									</span>
									<a href="generic.html">
										<h2>${b.boothName }</h2>
										<div class="content">
											<p>${b.boothDetail }</p>
										</div>
									</a>
								</article>
							</c:forEach>
							
						
							</section>
						</div>
					</div>


			</div>
			
			
<%-- 	<jsp:include page="../common/header.jsp" /> --%>
<!-- 				<br><br><br><br><br><br><br><br><br><br> -->
<!-- 		<!-- Wrapper --> -->
<!-- 			<div id="wrapper"> -->
				
<!-- 				Main -->
<!-- 					<div id="main"> -->
<!-- 						<div class="inner"> -->
<!-- 							<header> -->
<!-- 								<div align="center"> -->
<!-- 									<h2 style="color:gray;">부스목록</h2> -->
<!-- 								</div> -->
<!-- 							</header> -->
<!-- 							<section class="tiles"> -->
							
<%-- 							<c:forEach var="b" items="${booList }"> --%>
<!-- 								<article class="style2"> -->
<!-- 									<span class="image"> -->
<%-- 										<img src="${b.boothImgFp }" alt="" /> --%>
<!-- 									</span> -->
<!-- 									<a href="generic.html"> -->
<%-- 										<h2>${b.boothName }</h2> --%>
<!-- 										<div class="content"> -->
<%-- 											<p>${b.boothDetail }</p> --%>
<!-- 										</div> -->
<!-- 									</a> -->
<!-- 								</article> -->
<%-- 							</c:forEach> --%>
							
						
<!-- 							</section> -->
<!-- 						</div> -->
<!-- 					</div> -->

			

<!-- 			</div> -->
			
			

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/resources/js2/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js2/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js2/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js2/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js2/main.js"></script>

	</body>
</html>