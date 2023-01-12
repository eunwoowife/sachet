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
    
     <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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
  
  <c:if test="${not empty alertMessage }">
	<script>
		alert("${alertMessage}");
	</script>
		<c:remove var="alertMessage" scope="session"/>
	</c:if>
	
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
                <li class="menu-item active">
                  <a href="updateForm.co" class="menu-link">
                    <div data-i18n="Notifications">회원 정보 수정</div>
                  </a>
                </li>
                <li class="menu-item">
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
              <h1 class="fw-bold py-3 mb-4">기업 정보 수정</h1>

              <div class="row">
                <div class="col-md-12">
                  
                 <form id="formAccountSettings" action="update.co" method="post" enctype="multipart/form-data">
                  <div class="card mb-4">
                    <h5 class="card-header">기업 로고이미지</h5>
                    <!-- Account -->
                    <div class="card-body">
                      <div class="d-flex align-items-start align-items-sm-center gap-4">
                        <img
                          src="${loginUser.logoFp}"
                          class="d-block rounded"
                          height="100"
                          width="100"
                          id="uploadedAvatar"
                        />
                        <div class="button-wrapper">
                        <br><br>
                        
                          <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                            <span class="d-none d-sm-block">사진 변경</span>
                            <i class="bx bx-upload d-block d-sm-none"></i>
                            <input
                              type="file"
                              id="upload"
                              class="account-file-input"
                              hidden
                              accept="image/png, image/jpeg"
                              name="upfile"
                            />
                          </label>
                       		<!--기존 파일이 있으면 수정하기 버튼을 눌렀을 때 해당 파일정보가 같이 전송될 수 있도록 hidden으로 작업 -->
                       		<input type="hidden" name="logoOn" value="${loginUser.logoOn }">
                       		<input type="hidden" name="logoFp" value="${loginUser.logoFp }">
                       		
                          <button type="button" class="btn btn-outline-secondary account-image-reset mb-4">
                            <i class="bx bx-reset d-block d-sm-none"></i>
                            <span class="d-none d-sm-block">취소</span>
                          </button>

                          <p class="text-muted mb-0">이미지 파일의 확장자는 JPG, GIF 또는 PNG만 가능하며, 800K를 초과할 수 없습니다.</p>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">

                        <div class="row">
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">기업명</label>
                            <input class="form-control" type="text" name="userName" id="lastName" value="${loginUser.userName }" readonly/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">사업자 등록번호</label>
                            <input class="form-control" type="text" name="comBrnum" id="lastName" value="${loginUser.comBrnum }" readonly/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">기업 대표자명</label>
                            <input class="form-control" type="text" name="comOwner" id="lastName" value="${loginUser.comOwner }" readonly/>
                          </div>
                           <div class="mb-3 col-md-6">
                           
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="firstName" class="form-label" >아이디</label>
                            <input
                              class="form-control"
                              type="text"
                              id="firstName"
                              name="userId"
                              value="${loginUser.userId }"
                              readonly
                              />
                            </div>
                            <div class="mb-3 col-md-6">
                              
                              </div>
                         
                          <div class="mb-3 col-md-6">
                            <label for="email" class="form-label" >이메일</label>
                            <input
                              class="form-control"
                              type="text"
                              id="email"
                              name="comEmail"
                              value="${loginUser.comEmail }"
                            />
                          </div>
                          <div class="mb-3 col-md-6">
                          
                          </div>
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="phoneNumber">대표 전화번호</label>
                            <div class="input-group input-group-merge">
                          
                              <span class="input-group-text">KR (+82)</span>
                              <input
                                type="text"
                                id="phoneNumber"
                                name="phone1"
                                class="form-control"
                                value="${loginUser.phone1 }"
                              />
                            </div>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="phoneNumber">예비 전화번호</label>
                            <div class="input-group input-group-merge">
                          
                              <span class="input-group-text">KR (+82)</span>
                              <input
                                type="text"
                                id="phoneNumber"
                                name="phone2"
                                class="form-control"
                                value="${loginUser.phone2 }"
                              />
                            </div>
                          </div>
                          
                          <div class="mb-3 col-md-6">
                            <label for="address" class="form-label">주소</label>
                            <input type="button" class="form-control" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                            <input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" name="postNo" value="${loginUser.postNo }">
                            <input type="text" class="form-control" id="sample6_address" placeholder="주소" name="add1" value="${loginUser.address }"><br>
                            <input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소" name="add2">
                            <input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목" name="add3">
                          </div>
                          
                          
                        </div>
                        <br><br>
                        
                        
                         <div class="mb-3 col-md-6" align="center">
                            <label for="lastName" class="form-label">비밀번호 확인</label>
                            <input class="form-control" type="password" name="userPwd" id="inputPwd" />
                            <p id="checkResult" style="font-size: 10px; display:none;">헤헤</p>
                          </div>
                          <div class="mb-3 col-md-6">
                          
                          </div>
                          <br><br>
                          
                        <div class="mt-2" align="center">
                          <button type="submit" class="btn btn-primary me-2" disabled id="updateBtn">수정하기</button>
                          <button type="reset" class="btn btn-outline-secondary" onclick="goCancel();">취소</button>
                        </div>
                      </form>
                    </div>
                    <!-- /Account -->
                  </div>
                 

           
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
    	$(function(){
    		var $pwdInput = $("#inputPwd");
    		
    		$pwdInput.keyup(function(){
    			
   			if($pwdInput.val().length>=3){
    			$.ajax({
    				url : "pwdCheck.co",
    				data : {checkPwd : $pwdInput.val()},
    				success : function(result){
    					if(result=='NNNNN'){
    						$("#checkResult").css("display", "block").css("color", "red").text("비밀번호가 일치하지 않아, 정보 수정이 어렵습니다.");
      						$("#inputId").focus();
			    			}else{
			    				$("#checkResult").css("display", "block").css("color", "green").text("비밀번호가 일치하여 정보 수정이 가능합니다.");
			    				$("#updateBtn").removeAttr("disabled");
			    			}
    					},
    					error : function(){
    						console.log("통신실패");
    					}
    				})
    			}
    		})
    	})
    </script>


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
   
   
   <script>
      /**
 * Account Settings - Account
 */

'use strict';

document.addEventListener('DOMContentLoaded', function (e) {
  (function () {
    const deactivateAcc = document.querySelector('#formAccountDeactivation');

    // Update/reset user image of account page
    let accountUserImage = document.getElementById('uploadedAvatar');
    const fileInput = document.querySelector('.account-file-input'),
      resetFileInput = document.querySelector('.account-image-reset');

    if (accountUserImage) {
      const resetImage = accountUserImage.src;
      fileInput.onchange = () => {
        if (fileInput.files[0]) {
          accountUserImage.src = window.URL.createObjectURL(fileInput.files[0]);
        }
      };
      resetFileInput.onclick = () => {
        fileInput.value = '';
        accountUserImage.src = resetImage;
      };
    }
  })();
});

    </script>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
    </script>
    
    


  </body>
  
 
 
</html>
