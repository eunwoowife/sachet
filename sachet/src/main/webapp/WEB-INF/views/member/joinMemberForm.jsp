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

    <meta name="description" content="" />

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
    <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/js/config.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    
    
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet"/>
  </head>
  
  <style>
  * {
        margin: 0;
        padding: 0;
        list-style: none;
    } 
    .outer{
        width: 70%;
        align-items: center;
        margin-left: 180px;
    }
    a {
        text-decoration: none;
        color:#333;
    }
    #top{
        height: 100px;
    }
    #logo{
        float: left;
        font-size: 60px;
        margin-top: 10px;
        margin-left: 100px;
    }
    #userarea{
        float: right;
        margin-top: 80px;
        margin-left: 0;
        width: 300px;
    }
    nav {
        width: 100%;
        mask-image: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, #FFFFFF 25%, #FFFFFF 75%, rgba(255, 255, 255, 0) 100%);
        margin: 0 auto;
        margin-top: 80px;
        }
    nav ul {
    text-align: center;
    background: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0.2) 25%, rgba(255, 255, 255, 0.2) 75%, rgba(255, 255, 255, 0) 100%);
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
    }
    nav ul li {
        float:left;
        width:180px;
        position:relative;
    }
    nav ul li a {
        padding: 10px;
        color: rgba(0, 35, 122, 0.5);
        font-size: 18px;
        text-decoration: none;
        display: block;
        }
        nav ul li a:hover {
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
        background: rgba(255, 255, 255, 0.1);
        color: rgba(0, 35, 122, 0.7);
        }
    nav ul li ul {
        width:100%;
        display:none;
        position: absolute;
        font-size:14px;
    }
    nav ul li:hover ul {
        display:block;
    }
    nav ul li ul li:hover {
        transition: ease 1s;
        }
    #userarea ul li{
        float: left;
        margin-left: 40px;
    }
    #userarea ul li img{
        width: 25px;
    }
     #userarea ul li:hover{
    	cursor:pointer;
    }
  </style>

  
  <body>
  
  
  <div class="outer">
  
  <div id="top">
        <div id="logo">
            <img src="${pageContext.request.contextPath}/resources/images/로고10.png" alt="" width="300px";>
        </div>
        <div id="userarea">
       <c:if test="${not empty loginUser }">
       		${loginUser.userName }님, 안녕
       </c:if>
            <ul>
            	<c:choose>
            	<c:when test="${empty loginUser }">
                <li><img src="${pageContext.request.contextPath}/resources/images/login.png" alt="" onclick="goLogin();"></li>
                </c:when>
                <c:otherwise>
	                 <li><img src="${pageContext.request.contextPath}/resources/images/logout.png" alt=""  style="width:28px;" onclick="goLogout();"></li>
	                <c:choose>
	                <c:when test="${loginUser.userNo>1000 }">       
	                 <li><img src="${pageContext.request.contextPath}/resources/images//user.png" alt="" onclick="goMypage();"></li>
	                </c:when>
	                <c:otherwise>
	                <li><img src="${pageContext.request.contextPath}/resources/images//user.png" alt="" onclick="goMycomPage();"></li>
	                </c:otherwise>
	                </c:choose>
                </c:otherwise>
                </c:choose>
                <li><img src="${pageContext.request.contextPath}/resources/images/shopping-cart.png" alt=""></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/settings.png" alt=""></li>
            </ul>
        </div>
        </div>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
         

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">


          

    
           
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
             

              

                <!-- User -->
             
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-semibold d-block">John Doe</span>
                            <small class="text-muted">Admin</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-user me-2"></i>
                        <span class="align-middle">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-cog me-2"></i>
                        <span class="align-middle">Settings</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                          <span class="flex-grow-1 align-middle">Billing</span>
                          <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="auth-login-basic.html">
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
              <h1 class="fw-bold py-3 mb-4">회원가입</h1>

         
                    <hr class="my-0" />
                    <div class="card-body">
                      <form id="formAccountSettings" action="insert.me" method="POST">
                        <div class="row">
                          <div class="mb-3 col-md-6">
                            <label for="firstName" class="form-label">아이디</label>
                            <input
                              class="form-control"
                              type="text"
                              id="inputId"
                              name="userId"
                              autofocus
                              required
                            />
                            <p id="checkResult1" style="font-size: 10px; display:none;">사용중인 아이디입니다.</p>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">이름</label>
                            <input class="form-control" type="text" name="userName" id="lastName" required/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">비밀번호</label>
                            <input class="form-control" type="password" name="userPwd" id="userPwd" required/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">비밀번호 확인</label>
                            <input class="form-control" type="password" name="checkPwd" id="checkPwd" required/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="email" class="form-label">이메일</label>
                            <input
                              class="form-control"
                              type="text"
                              id="email"
                              name="email"
                              placeholder="john.doe@example.com"
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
                                placeholder="010-1111-1111　'-'포함하여 입력"
                              />
                            </div>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">성별</label>
                            <br>
                            <input type="radio" name="gender" value="M">&nbsp;<label>남자</label>ㅤㅤㅤㅤ
                            <input type="radio" name="gender" value="F">&nbsp;<label>여자</label>
                          </div>
                          <div class="mb-3 col-md-6 field-birth" name="userBirth">
                            <label for="state" class="form-label">생년월일</label>
                            <br>
                            <select class="box" id="memberyear" name="byear" style="width: 80px; height: 30px;">  
                              <option  selected></option>
                            </select> 년
                            <select class="box" id="membermonth" name="bmonth" style="width: 50px; height: 30px;">
                                <option  selected></option>
                            </select> 월
                            <select class="box" id="memberday" name="bday" style="width: 50px; height: 30px;">
                                <option  selected></option>
                            </select> 일
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="address" class="form-label">주소</label>
                            <input type="button" class="form-control" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                            <input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" name="zipcode">
                            <input type="text" class="form-control" id="sample6_address" placeholder="주소" name="add1"><br>
                            <input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소" name="add2">
                            <input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목" name="add3">
                          </div>
                          
                        </div>
                        <br><br>
                        <div class="mt-2" align="center">
                          <button type="submit" class="btn btn-primary me-2">회원가입</button>
                          <button type="reset" class="btn btn-outline-secondary">취소</button>
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
</div>

 			<script>
        	function goLogin(){
        		location.href="loginForm.me";
        	}
        	</script>

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../assets/js/pages-account-settings-account.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>

    <script>
         $(document).ready(
        		  function () {
        		    for (var i = 2022; i > 1930; i--) {
        		      $('#memberyear').append('<option value="' + i + '">' + i + '</option>');
        		    }
        		    for (var i = 1; i < 13; i++) {
        		    	var mm = i > 9 ? i : "0"+i ;
        		      $('#membermonth').append('<option value="' + mm + '">' + mm + '</option>');
        		    }
        		    for (var i = 1; i < 32; i++) {
        		    	var dd = i > 9 ? i : "0"+i ;  
        		      $('#memberday').append('<option value="' + dd + '">' + dd + '</option>');
        		  	  }
        		  		 }
        				);
        
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

<script>
	$(function(){
  		var $idInput = $("#inputId");
  		
  		$idInput.keyup(function(){
  		
  		if($idInput.val().length>=3){
  			$.ajax({
  				url : "idCheck.me",
  				data : {checkId : $idInput.val()},
  				success : function(result){
  					if(result=='NNNNN'){
  						$("#checkResult1").css("display", "block").css("color", "red").text("이미 존재하거나 탈퇴한 회원입니다.");
  						$("#inputId").focus();
  					}else{
  						$("#checkResult1").css("display", "block").css("color", "green").text("사용가능한 아이디입니다.");
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
  </body>
</html>
