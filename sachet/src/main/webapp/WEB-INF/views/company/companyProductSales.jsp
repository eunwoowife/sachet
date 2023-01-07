<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
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
        padding-left: 100px;
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
    
    #hohoho:hover{
    	cursor:pointer;
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
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                <div data-i18n="Authentications">MY BOOTH</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="boothStatus.co" class="menu-link" >
                    <div data-i18n="Basic">나의 부스 조회</div>
                  </a>
                </li>
                 <li class="menu-item">
                  <a href="productList.co" class="menu-link" >
                    <div data-i18n="Basic">상품 관리</div>
                  </a>
                </li>
                 <li class="menu-item">
                  <a href="experienceList.co" class="menu-link" >
                    <div data-i18n="Basic">체험 관리</div>
                  </a>
                </li>
             
              </ul>
            </li>
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-cube-alt"></i>
                <div data-i18n="Misc">SALES DETAIL</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item active">
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
          
          
            <div class="productSalesOuter">
        
        <br><br><br><br><br><br>
        <div class="psHead" align="center" style="margin-right:100px;">
            <h1>판매상품관리</h1>
        </div>
        
        <div style="margin-left:100px;">
                <div class="col-lg-4 col-md-4 order-1">
                  <div class="row">
                    <div class="col-lg-6 col-md-12 col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img
                                src="${pageContext.request.contextPath}/resources/images/wallet-info.png"
                                alt="chart success"
                                class="rounded"
                              />
                            </div>
                            <div class="dropdown">
                              <button
                                class="btn p-0"
                                type="button"
                                id="cardOpt3"
                                data-bs-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false"
                              >
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt3">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span class="fw-semibold d-block mb-1">기업 상품 누적 수입</span>
                          <h3 class="card-title mb-2">₩<fmt:formatNumber value="${sum }" type="number"/></h3>
                          <small class="fw-semibold" style="color:blue;"><i class="bx bx-up-arrow-alt"></i>총 ${sList.size() }건</small>
                        </div>
                      </div>
                    </div>
        </div>
        </div>
        </div>
    <br><br>
    <div style="margin-left: 100px;">
        <p>총 ${sList.size() }건</p>
        <select class="form-select sortList" id="exampleFormControlSelect1" style="width:300px; float:left;">
            <option value="">상품 수령상태 변경처리</option>
            <option value="N">미수령</option>
            <option value="Y">수령완료</option>
        </select>
            <button class="btn btn-primary" style="float:left;" onclick="changeStatus();">변경</button>
        
        <br clear="both">
    </div>
    <hr>

    <div class="psBody">
        <table>
            <tr>
                <th>선택</th>
                <th>주문번호</th>
                <th>주문일</th>
                <th>주문상품정보</th>
                <th>수량</th>
                <th>금액</th>
                <th>주문자정보</th>
                <th>상품수령상태</th>
            </tr>
            
            	<c:forEach var="s" items="${sList }">
            <tr>
                <td><input class="form-check-input" type="checkbox" name="checkedOrderDetailNo" id="orderDetailNo" value="${s.orderDetailNo }"></td>
                <td>${s.orderDetailNo}</td>
                <td>${s.orderDate }</td>
                <td id="hohoho" onclick="location.href='productDetail.co?pno=${s.productNo}'">${s.productName }</td>
                <td>${s.count }</td>
                <td><fmt:formatNumber value="${s.productPrice * s.count }" type="number"/></td>
                <td>${s.userId }<br>
                   	${s.userName }<br>
                    ${s.userPhone }<br>
                </td>
                <c:if test="${s.useStatus eq 'N' }"><td><span class="badge rounded-pill bg-label-warning">미수령</span></td></c:if>
                <c:if test="${s.useStatus eq 'Y' }"><td><span class="badge rounded-pill bg-label-primary">수령완료</span></td></c:if>
            </tr>
            </c:forEach>
            
        </table>
        <br><br><br><br>
    </div>

    </div>
          
          
          
          </div>
          </div>
          
          <script>
          	function changeStatus(){
          		var value = $(".sortList").val();
          		var odNoList = [];
          		$("input[name='checkedOrderDetailNo']:checked").each(function(i){
          			odNoList.push($(this).val());
          		})
//           		alert(odNoList);
//           		alert(value);
				$.ajax({
					url : "changeStatus.co",
					data : {status : value,
								odNoList : odNoList},
					success : function(result){
						console.log("통신성공");
						if(result>0){
							location.reload();
						}else{
							alert("현재 상태를 변경할 수 없습니다.");
						}
					},
					error : function(){
						console.log("통신실패");
					}
				})
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