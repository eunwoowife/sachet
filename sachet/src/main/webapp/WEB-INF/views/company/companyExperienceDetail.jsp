<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
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
button {
    margin: 20px;
}

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

.w-btn:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}


.w-btn-gra2 {
    background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
    color: white;
}

.w-btn-gra-anim {
    background-size: 400% 400%;
    animation: gradient1 5s ease infinite;
}

@keyframes gradient1 {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

    .prodetailLeft{
       float: left;
       margin-top: 120px;
       width: 800px;

    }

    .productDetailContainer{
        margin-left: 100px;
    }

    .prodetailRight{
        margin-left: 700px;
        position: fixed;
        float: left;
        width: 600px;
        height: 700px;
        margin-top: 180px;
    }
    

    .w-btn-gray {
    background-color: #7bb7df;
    color: #e3dede;
    }

    .w-btn-gray-outline:hover {
    background-color: #a3a1a1;
    color: #e3dede;
}

    .proButtonArea{
        margin-top: 50px;
        margin-left:3px;
    }

      #productCount>tbody{
        font-size: 15px;
        font-weight: 100;
        line-height: 3rem;
      }

      #quantity{
        margin-top: 5px;
        width: 20px;
        height: 27px;
        text-align:center;
        border: none;
        background: transparent;
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
            <li class="menu-item">
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
                <li class="menu-item">
                  <a href="pages-account-settings-connections.html" class="menu-link">
                    <div data-i18n="Connections">회원 탈퇴</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                <div data-i18n="Authentications">MY BOOTH</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="auth-login-basic.html" class="menu-link">
                    <div data-i18n="Basic">나의 부스 조회</div>
                  </a>
                </li>
                 <li class="menu-item">
                  <a href="productList.co" class="menu-link">
                    <div data-i18n="Basic">상품 관리</div>
                  </a>
                </li>
                 <li class="menu-item active">
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
                  <a href="pages-misc-under-maintenance.html" class="menu-link">
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
          
	<br><br>
    <div class="productDetailContainer">
        <div class="prodetailLeft" align="center">
            <a href="http://image.jtbcplus.kr/data/contents/jam_photo/202109/06/f8cd9254-5e56-4fc9-a82a-83d071337a7c.jpg" data-lightbox="example-set">
                <img src="${e.experImgFp }" alt="">
            </a>

                <br><br><br><br><br><br><br>
            
            <div class="prodetailContent2">
<pre >
${e.experDetail }
</pre>
    <br><br><br><br><br><br><br><br><br><br><br><br>

            </div>
            
        </div>
        <div class="prodetailRight">
            <div class="card-body">
                <b style="font-size: 20px;">${e.boothName }</b>
                  <p style="font-size:23px; color: gray;">${e.experTitle }</p>
               <div class="productPrice">
                   <b style="font-size: 20px; color: rgb(97, 97, 97);">₩<fmt:formatNumber value="${e.experPrice }" type="number"/></b>
               		<br><br>		
               </div>
               
                <p>시간　
                	<c:if test="${e.experDate == 1 }">2022.01.11</c:if>
                	<c:if test="${e.experDate == 2 }">2022.01.12</c:if>
                	<c:if test="${e.experDate == 3 }">2022.01.13</c:if>
                	/ 
                	<c:if test="${e.experTime == 1 }">10:00~12:00</c:if>
          			<c:if test="${e.experTime == 2 }">13:00~15:00</c:if>
           			<c:if test="${e.experTime == 3 }">15:00~17:00</c:if>
           			<c:if test="${e.experTime == 4 }">17:00~19:00</c:if>
   				</p>
                <p>정원　${e.capacity }명</p>
                </div>
          

               <div class="proButtonArea">
               <button class="w-btn w-btn-gray" type="button" onclick="goModify();">
               수정하기
                 </button>
                <button class="w-btn w-btn-gra2 w-btn-gra-anim" type="button" style="margin-left:-10px;" onclick="goDelete();">
                삭제하기
                </button>
                </div>
              </div>
        </div>
        


        
    </div>
    
    <script>
    	function goModify(){
    		location.href="experienceModifyForm.co?eno=${e.experNo}";
    	}
    	
    	function goDelete(){
    		var question = window.confirm("정말로 삭제하시겠습니까?");
    		if(question){
    			location.href="experienceDelete.co?eno=${e.experNo}";
    		}else{
    			location.href="experienceDetail.co?eno=${e.experNo}";
    		}
    	}
    </script>
    
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

<br><br><br><br><br><br><br><br><br><br><br><br>


</body>
</html>