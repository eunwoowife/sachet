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
	
	<!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
   <link href="${pageContext.request.contextPath}/resources/css/boxicons.css" />

    <!-- Core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/core.css" class="template-customizer-core-css" />
<link href="${pageContext.request.contextPath}/resources/css/theme-default.css" class="template-customizer-theme-css" />
<link href="${pageContext.request.contextPath}/resources/css/demo.css" />

    <!-- Vendors CSS -->
<link href="${pageContext.request.contextPath}/resources/css/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="${pageContext.request.contextPath}/resources/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${pageContext.request.contextPath}/resources/js/config.js"></script>
  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
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
									<a href="javascript:void(0);">
											 <button
                          type="button"
                          data-bs-toggle="modal"
                          data-bs-target="#modalToggle${b.comNo }"
                        >
                         	자세히보기
                        </button>
										<h2>${b.boothName }</h2>
										<div class="content">
											<p>${b.boothDetail }</p>
										</div>
									</a>
								</article>
                        <!-- Modal 1-->
                        <div
                          class="modal fade"
                          id="modalToggle${b.comNo }"
                          aria-labelledby="modalToggleLabel"
                          tabindex="-1"
                          style="display: none"
                          aria-hidden="true"
                        >
                          <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="modalToggleLabel">${b.boothName }</h5>
                                <button
                                  type="button"
                                  class="btn-close"
                                  data-bs-dismiss="modal"
                                  aria-label="Close"
                                ></button>
                              </div>
                              <div class="modal-body">${b.boothDetail }
                              <br><br><br>
                              
                              <img src="${b.comLogoFp }" width="300px;" height="300px;"><br>
                              <span>기업명 : ${b.comName }<br>
                              대표자명 : ${b.comOwner }<br>
                              주소 : ${b.comAddress }
                              </span>
                              <br><br><br>
                              
                              부스위치<br>
                              </div>
                              <div class="modal-footer">
                                <button
                                  class="btn btn-primary"
                                  data-bs-target="#modalTogglee${b.comNo }"
                                  data-bs-toggle="modal"
                                  data-bs-dismiss="modal"
                                >
                                 CLOSE
                                </button>
                              </div>
                            </div>
                          </div>
                        </div>
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
			
			   <script  src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
          <script  src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
          <script  src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
          <script  src="${pageContext.request.contextPath}/resources/js/perfect-scrollbar.js"></script>

          <script  src="${pageContext.request.contextPath}/resources/js/menu.js"></script>
          <!-- endbuild -->

          <!-- Vendors JS -->

          <!-- Main JS -->
          <script  src="${pageContext.request.contextPath }/resources/js/main.js"></script>
      	



          <!-- Page JS -->

          <!-- Place this tag in your head or just before your close body tag. -->
          <script async defer src="https://buttons.github.io/buttons.js"></script>

	</body>
</html>