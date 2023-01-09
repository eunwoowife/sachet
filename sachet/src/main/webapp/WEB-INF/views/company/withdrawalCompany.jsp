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
      <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Account settings - Pages | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

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
		font-family: 'IBM Plex Sans KR', sans-serif;
	}
	</style>
  <body>
  
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="index.jsp" class="app-brand-link">
              <span class="app-brand-logo demo">
              </span>
              <img style="margin-top:20px;" src="${pageContext.request.contextPath}/resources/images/로고10.png" height="80px;" >
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboard -->
            <li class="menu-item">
              <a href="index.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Analytics" style="margin-bottom:45px;"></div>
              </a>
            </li>

           

            <li class="menu-header small text-uppercase">
              <span class="menu-header-text">MY COMPANY PAGE</span>
            </li>
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="Account Settings">ACCOUNT</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="mypage.co" class="menu-link">
                    <div data-i18n="Notifications">회원 정보</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="updateForm.co" class="menu-link">
                    <div data-i18n="Notifications">회원 정보 수정</div>
                  </a>
                </li>
                <li class="menu-item active">
                  <a href="withdrawalForm.co" class="menu-link">
                    <div data-i18n="Connections">회원 탈퇴</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                <div data-i18n="Authentications">MY BOOTH</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="boothStatus.co" class="menu-link">
                    <div data-i18n="Basic">나의 부스 조회</div>
                  </a>
                </li>
                 <li class="menu-item">
                  <a href="productList.co" class="menu-link">
                    <div data-i18n="Basic">상품 관리</div>
                  </a>
                </li>
                 <li class="menu-item">
                  <a href="experienceList.co" class="menu-link">
                    <div data-i18n="Basic">체험 관리</div>
                  </a>
                </li>
             
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-cube-alt"></i>
                <div data-i18n="Misc">SALES DETAIL</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="productSales.co" class="menu-link">
                    <div data-i18n="Error">상품 판매 내역</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="experienceSales.co" class="menu-link">
                    <div data-i18n="Under Maintenance">체험 판매 내역</div>
                  </a>
                </li>
              </ul>
            </li>
         

    

       

        </aside>

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">


              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Place this tag where you want the button to render. -->

                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="${loginUser.logoFp}" class="w-px-40 h-auto rounded-circle"/>
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-semibold d-block">${loginUser.userName }</span>
                            <small class="text-muted">Company</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="logout.me">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">Log Out</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
				
            <div class="container-xxl flex-grow-1 container-p-y">
              <h1 class="fw-bold py-3 mb-4">회원 탈퇴</h1>

         
                    <hr class="my-0" />
                    <div class="card-body" align="center">
                    	<img src="${pageContext.request.contextPath}/resources/images/withdrawalNotice.jpg">
                    	<br><br><br><br><br>
                  <h3>회원탈퇴를 위해 비밀번호를 입력해주세요.</h3>
                      <div class="mb-3 col-md-6" align="center">
                            <input class="form-control" type="password" name="userPwd" id="inputPwd" />
                            <p id="checkResult" style="font-size: 10px; display:none;" required>비밀번호가 일치하지 않습니다.</p>
                          </div>
                          
                          
                          <div class="mt-2" align="center">
                          <button type="reset" class="btn btn-outline-secondary" onclick="goCancel();">취소</button>
                          <button type="button" class="btn btn-primary me-2" id="withdrawalCompany">탈퇴하기</button>
                        </div>
                  </div>
                  
                  
                  </div>
                  
                  <script>
                  	$(function(){
                  		$("#withdrawalCompany").click(function(){
                  			$.ajax({
                  				url : "checkbooth.co",
                  				data : {comNo : ${loginUser.userNo}},
                  				success : function(result){
                  					console.log(result);
                  					if(result>0){
                  						alert("현재 부스 및 상품(체험)이 등록된 상태로 탈퇴가 어렵습니다.");
                  					}else{
                  						$.ajax({
                  							url : "pwdCheck.co",
                  							data : {checkPwd : $("#inputPwd").val()},
                  							success : function(result){
                  								console.log("비밀번호체크 통신성공");
                  								if(result=='YYYYY'){
			                  						$.ajax({
			                  							url : "withdrawal.co",
			                  							data : {comNo : ${loginUser.userNo}},
			                  							success : function(result){
			                  								console.log("탈퇴 통신성공");
			                  								if(result>0){
			                  										location.href="logout.me";
			                  									}
			                  							},
			                  							error : function(){
			                  								console.log("탈퇴 통신실패");
				                  							}
				                  						})
                  								}else{
                  									$("#checkResult").css("display", "block").css("color", "red").text("비밀번호가 일치하지 않습니다.");
                  								}
                  							},
                  							error : function(){
                  								console.log("비밀번호체크 통신실패");
                  							}
                  						})
                  					}
                  				},
                  				error : function(){
                  					console.log("통신실패");
                  				}
                  			})
                  		})
                  	})
                  </script>



            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->


<script>
		function goCancel(){
			location.href="mypage.co";
		}
	</script>
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
	



    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
   
    


  </body>
  
 
 
</html>
