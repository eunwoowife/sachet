<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
	
	.addProductOuter{
		margin-top:150px;
		margin-left:200px;
		margin-right:200px;
	}
	
	.addProductTitle{
		margin-right:200px;
	}
	
	 th, td{
        padding-left: 150px;
    }

    th, td{
        text-align: center;
    }
    
    td{
    	padding-bottom:40px;
    }
    
    th{
    	padding-bottom:20px;
    }
	
</style>
<body>
  <br>
        
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
              <span class="menu-header-text">ADMINISTRATOR PAGE</span>
            </li>
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="Account Settings">BOOTH APPROVAL</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="boothSetting.boo" class="menu-link">
                    <div data-i18n="Notifications">승인 대기중인 부스</div>
                  </a>
                </li>
                <li class="menu-item active">
                  <a href="approvedBooth.boo" class="menu-link">
                    <div data-i18n="Notifications">승인된 부스</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="deniedBooth.boo" class="menu-link">
                    <div data-i18n="Notifications">승인 거절된 부스</div>
                  </a>
                </li>
              </ul>
              </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                <div data-i18n="Authentications">CALCULATION</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="calculationProductForm.sm" class="menu-link" >
                    <div data-i18n="Basic">판매 상품 정산</div>
                  </a>
                </li>
                 <li class="menu-item">
                  <a href="productList.co" class="menu-link" >
                    <div data-i18n="Basic">판매 체험 정산</div>
                  </a>
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
                      <img src="" class="w-px-40 h-auto rounded-circle"/>
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
          
          
            <div class="productSalesOuter">
        
        <br><br><br><br><br><br>
        <div class="psHead" align="center" style="margin-right:100px;">
            <h1>승인된 부스</h1>
        </div>
    <br><br>
    <div style="margin-left: 170px;">
        <p>총${booList.size() }건</p>
        
    </div>
    <hr>

    <div class="psBody">
        <table>
        		<c:if test="${empty booList }">
        		<br><br>
        		 <div style="margin-left:650px;">
        			<h5 style="font-family: 'IBM Plex Sans KR', sans-serif; color:#696CFF;'">승인 완료된 부스가 없습니다.</h5>
        		 </div>
        		</c:if>
            
            	<c:if test="${not empty booList }">
            <tr>
                <th>부스신청일</th>
                <th>기업명</th>
                <th>부스명</th>
                <th>부스등급</th>
                <th>부스금액</th>
                <th>부스상태</th>
            </tr>
            
				<c:forEach var="boo" items="${booList }">
            <tr>
                <td>${boo.reportingDate }</td>
                <td onclick="location.href='boothDetail.boo?cno=${boo.comNo }'" style="cursor:pointer;">${boo.comName }</td>
                <td onclick="location.href='boothDetail.boo?cno=${boo.comNo }'" style="cursor:pointer;">${boo.boothName }</td>
                <td>
                	<c:if test="${boo.boothPrice eq 3 }">Premium</c:if>
                	<c:if test="${boo.boothPrice eq 2 }">Deluxe</c:if>
                	<c:if test="${boo.boothPrice eq 1 }">Standard</c:if>
                </td>
                <td>
                	<c:if test="${boo.boothPrice eq 3 }"><fmt:formatNumber value="7000000" type="number"/></c:if>
                	<c:if test="${boo.boothPrice eq 2 }"><fmt:formatNumber value="4000000" type="number"/></c:if>
                	<c:if test="${boo.boothPrice eq 1 }"><fmt:formatNumber value="3000000" type="number"/></c:if>
                </td>
                <td>
               		<c:if test="${boo.boothStatus eq 'N'}"><span class="badge bg-label-primary">부스접수</span></c:if>
                	<c:if test="${boo.boothStatus eq 'P'}"><span class="badge bg-label-info">결제완료</span></c:if>
                	<c:if test="${boo.boothStatus eq 'J'}"><span class="badge bg-label-warning">부스심사</span></c:if>
                	<c:if test="${boo.boothStatus eq 'Y'}"><span class="badge bg-label-success">승인완료</span></c:if>
                </td>
            </tr>
                </c:forEach>
            </c:if>
            
        </table>
    </div>

    </div>
          
          
          
          </div>
          </div>
          
        
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