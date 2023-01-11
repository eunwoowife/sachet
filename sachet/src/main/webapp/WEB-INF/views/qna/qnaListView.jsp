<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

<title>SACHET</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon-2.ico" />


    <meta name="description" content="" />

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

  <body>
   
   		   <jsp:include page="../common/newheader.jsp"/>
   		    
   		    
   
		<div class="qnaouter" style="padding:20% 10%;">
		
			<!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"></span>Q&A</h4>

              <!-- Accordion -->
              <h5 class="mt-4">자주 묻는 질문 </h5>
              <br>
              <div class="row">
                         <c:forEach var="q" items="${list}">
               
                <div class="col-md">
                  <c:if test="${q.qnaCate eq '1'}">
                  <small class="text-light fw-semibold">회원정보</small>
                  </c:if>
                <c:if test="${q.qnaCate eq '2'}">
                  <small class="text-light fw-semibold">예매구매✍</small>
                  </c:if>
                  <c:if test="${q.qnaCate eq '3'}">
                  <small class="text-light fw-semibold">기업관련</small>
                  </c:if>
                    <c:if test="${q.qnaCate eq '4'}">
                  <small class="text-light fw-semibold">기타</small>
                  </c:if>
                  
                  <div id="accordionIcon" class="accordion mt-3 accordion-without-arrow">
                    <div class="accordion-item card">
                      <h2 class="accordion-header text-body d-flex justify-content-between" id="accordionIconOne">
                        <button
                          type="button"
                          class="accordion-button collapsed"
                          data-bs-toggle="collapse"
                          data-bs-target="#accordionIcon-${q.qnaNo}"
                          aria-controls="accordionIcon-${q.qnaNo}"
                        >
                           ${q.qnaTitle}
                        </button>
                      </h2>
						
                      <div id="accordionIcon-${q.qnaNo}" class="accordion-collapse collapse" data-bs-parent="#accordionIcon">
                        <div class="accordion-body">
                        ${q.qnaContent }
                        </div>
                      </div>
                    </div>
					
                         </c:forEach>
                         
                  </div>
                </div>
              </div>
              <!--/ Accordion -->

              <!--/ Advance Styling Options -->
            </div>
            <!-- / Content -->

         

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    







  <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script  src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
    <script  src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
    <script  src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
    <script  src="${pageContext.request.contextPath}/resources/js/perfect-scrollbar.js"></script>

    <script  src="${pageContext.request.contextPath}/resources/js/menu.js"></script>
    
    <!-- endbuild -->
	
    <!-- Vendors JS -->
	
    <!-- Main JS -->
    <script  src="${pageContext.request.contextPath }/resources/js/main.js"></script>
		
		</div>
	
  </body>
</html>
