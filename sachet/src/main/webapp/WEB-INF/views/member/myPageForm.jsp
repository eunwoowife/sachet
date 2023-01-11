<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date, java.text.SimpleDateFormat"%>
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

    <title>Account settings - Pages | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />

   

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
 
 <script type="text/javascript" language="javascript" defer="defer">
 	$(documnet).ready(function(){
 		$("#execute").click(function(){
 			url="/createCode.do";
 		var content=$("#content").val();
 		
 		$("#img").attr("src",url+"?content="+content);
 		});
 	});
 
 </script>
  </head>

  <body>
  
  
     
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
              <li class="menu-item active">
                <a href="myPageForm.me" class="menu-link">
                  <div data-i18n="Notifications">회원 정보</div>
                </a>
              </li>
              <li class="menu-item ">
                <a href="myPage.me" class="menu-link">
                  <div data-i18n="Notifications">회원 정보 수정</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="mydeleteForm.me" class="menu-link">
                  <div data-i18n="Connections">회원 탈퇴</div>
                </a>
              </li>
            </ul>
          </li>
          <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
              <div data-i18n="Authentications">CREDIT</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="myticketList.me" class="menu-link">
                  <div data-i18n="Basic">예매내역</div>
                </a>
              </li>
               
              
           
            </ul>
          </li>
          <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-cube-alt"></i>
              <div data-i18n="Misc">STAFF</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="volunteer.vo" class="menu-link">
                  <div data-i18n="Error">봉사 신청</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="volunteerlist.qs" class="menu-link">
                  <div data-i18n="Under Maintenance">봉사 신청 내역</div>
                </a>
              </li>
            </ul>
          </li>
       

  

     

      </aside>
    

    
     
     
     <!-- 로그인정보 추가 아바타 메뉴  -->
	 <jsp:include page="../common/dropdownlogin.jsp"/>
     
 
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h1 class="fw-bold py-3 mb-4">My Page</h1>

         
                    <hr class="my-0" />
                    <div class="card-body">
                   
                        <div class="row">
                          <div class="mb-3 col-md-6">
                            <label for="firstName" class="form-label">아이디</label>
                            <input
                              class="form-control"
                              type="text"
                              id="firstName"
                              name="userId"
                              value="${loginUser.userId }" 
                              autofocus
                              required
                              
                            />
                            <p id="idCheck" style="font-size: 10px; display: none;">이미 있는 아이디입니다.</p>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">이름</label>
                            <input class="form-control" type="text" name="userName" id="lastName" value="${loginUser.userName }"required/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">비밀번호</label>
                            <input class="form-control" type="password" name="userPwd" id="lastName" required/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">비밀번호 확인</label>
                            <input class="form-control" type="password" name="userPwd1" id="lastName" />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="email" class="form-label">이메일</label>
                            <input
                              class="form-control"
                              type="text"
                              id="email"
                              name="email"
                              value="${loginUser.email}"
                            />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="phoneNumber">휴대폰 번호</label>
                            <div class="input-group input-group-merge">
                          
                              <span class="input-group-text">KR (+82)</span>
                              <input
                                type="text"
                                id="phoneNumber"
                                name="phone"
                                class="form-control"
                                value="${loginUser.phone}"
                              />
                            </div>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">성별</label>
                            <br>
                            <input type="radio" name="gender" value="M">&nbsp;<label>남자</label>ㅤㅤㅤㅤ
                            <input type="radio" name="gender" value="F">&nbsp;<label>여자</label>
                          </div>
                          <div class="mb-3 col-md-6 field-birth">
               
               				<label for="lastName" class="form-label">생일</label>
                         	<input type="text"  class="form-control" readonly name="userBirth" value="${loginUser.birth }">
                         	
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="address" class="form-label">주소</label>
                                                  <input type="text" class="form-control" id="sample6_address" placeholder="주소" name="add1" value="${loginUser.address }"><br>
                           
                          </div>
                          
                        </div>
               
                      
                      
                    </div>
                    
                    <!-- /Account -->
                  </div>
                  
               

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
              
                  <%String year = new SimpleDateFormat("yyyy").format(new Date()); %>
                  Copyrightⓒ <%=year %> SACHET ALL rights reserved
                  
                </div>
                <div>
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a
                    href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
                    target="_blank"
                    class="footer-link me-4"
                    >Documentation</a
                  >

                  <a
                    href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                    target="_blank"
                    class="footer-link me-4"
                    >Support</a
                  >
                </div>
              </div>
            </footer>
            <!-- / Footer -->

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
   <script>
    	$(function(){
    		$("input[value=${loginUser.gender}]").attr("checked",true);
    	})
    
    
    </script>
   
   <script>
   function myticket(){
	   location.href="myticket.me"; 
	   }
   
   </script>
   
   <script>
 	function myOrder(){
 		location.href="myOrder.me";
 	}
    
    </script>
    
    <script>
    function volunteer(){
    	location.href="volunteer.me";
    }
    </script>


  </body>
  
 
 
</html>
