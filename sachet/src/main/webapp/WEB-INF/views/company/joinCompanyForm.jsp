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

    <title>Account settings - Account | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />
    
     <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    
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
            class="layout-navbar container-xxl navbar navbar-expand-xl align-items-center bg-navbar-theme"
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
                              <img src="" class="w-px-40 h-auto rounded-circle" />
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

              <div class="row">
                <div class="col-md-12">
                  
                 <form id="formAccountSettings" action="insert.co" method="post" enctype="multipart/form-data">
                  <div class="card mb-4">
                    <h5 class="card-header">기업 로고이미지</h5>
                    <!-- Account -->
                    <div class="card-body">
                      <div class="d-flex align-items-start align-items-sm-center gap-4">
                        <img
                          class="d-block rounded"
                          height="100"
                          width="100"
                          id="uploadedAvatar"
                        />
                        <div class="button-wrapper">
                        <br><br>
                          <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                            <span class="d-none d-sm-block">사진 등록</span>
                            <i class="bx bx-upload d-block d-sm-none"></i>
                            <input
                              type="file"
                              id="upload"
                              class="account-file-input"
                              name="upfile"
                              hidden
                            />
                          </label>
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
                            <input class="form-control" type="text" name="userName" id="lastName" required/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">사업자 등록번호</label>
                            <input class="form-control" type="text" name="comBrnum" id="brNumber" required placeholder="'-'를 제외한 10자리 숫자를 입력해주세요."/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">기업 대표자명</label>
                            <input class="form-control" type="text" name="comOwner" id="lastName" required/>
                          </div>
                          <div class="mb-3 col-md-6" style="margin-top:30px;">
                            <button id="checkCom" type="button" class="btn rounded-pill btn-primary">사업자 확인</button>
                          </div>
                          
                          <script>
                          	$(function(){
                          		$("#checkCom").click(function(){
                          		   
//                           			var data = $("#brNumber").val();
//                           			var data = '['+data+']';
//                           			console.log(data);
									var data = {
										"b_no": [$("#brNumber").val()], // 사업자번호 "xxxxxxx" 로 조회 시,
									}; 
                          			
                          			$.ajax({
                          			  url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=f%2B2P%2FOamXbhdo2LxA3sYOUqdyo5yMBrotkYV4I1XM2nS7xlXDZWPuZ7vbVTxb%2B7DyDP0gexZuIlncEiIdDlxDQ%3D%3D",
                          			  type: "POST",
                          			  data: JSON.stringify(data), // json 을 string으로 변환하여 전송
                          			  dataType: "JSON",
                          			  contentType: "application/json",
                          			  accept: "application/json",
                          			  success: function(result) {
                          				 console.log(result);
                          				console.log(result.data[0].tax_type);
                          				
                          				
                          				if(result.data[0].tax_type!="국세청에 등록되지 않은 사업자등록번호입니다."){
                          					$("#enrollBtn").removeAttr("disabled");
                          					alert("사업자 상태가 확인되었습니다. ("+result.data[0].tax_type+")");
                          				}else{
                          					alert(result.data[0].tax_type+"\n사업자 정보를 다시 확인해주세요.");
                          				}
                          			  },
                          			  error: function(result) {
                          			      console.log(result.responseText); //responseText의 에러메세지 확인
                          			  }
                          			});
                          			
                          		})
                          	})
                          </script>
                          
                          
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
                              <p id="checkResult" style="font-size: 10px; display:none;">헤헤</p>
                            </div>
                            <div class="mb-3 col-md-6">
                              
                              </div>
                            <div class="mb-3 col-md-6">
                              <label for="lastName" class="form-label">비밀번호</label>
                              <input class="form-control" type="password" name="userPwd" id="userPwd" required/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">비밀번호 확인</label>
                            <input class="form-control" type="password" id="checkPwd" />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="email" class="form-label">이메일</label>
                            <input
                              class="form-control"
                              type="text"
                              id="email"
                              name="comEmail"
                              placeholder="john.doe@example.com"
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
                                placeholder="010-1111-1111　'-'포함하여 입력"
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
                                placeholder="010-1111-1111　'-'포함하여 입력"
                              />
                            </div>
                          </div>
                          
                          <div class="mb-3 col-md-6">
                            <label for="address" class="form-label">주소</label>
                            <input type="button" class="form-control" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                            <input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" name="postNo">
                            <input type="text" class="form-control" id="sample6_address" placeholder="주소" name="add1"><br>
                            <input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소" name="add2">
                            <input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목" name="add3">
                          </div>
                          
                        </div>
                        <br><br>
                        <div class="mt-2" align="center">
                          <button type="submit" class="btn btn-primary me-2" disabled id="enrollBtn">회원가입</button>
                          <button type="reset" class="btn btn-outline-secondary">취소</button>
                        </div>
                      </form>
                    </div>
                    <!-- /Account -->
                  </div>
                  
                  
                 <script>
                  	$(function(){
                  		var $idInput = $("#inputId");
                  		
                  		$idInput.keyup(function(){
                  		
                  		if($idInput.val().length>=3){
                  			$.ajax({
                  				url : "idCheck.co",
                  				data : {checkId : $idInput.val()},
                  				success : function(result){
                  					if(result=='NNNNN'){
                  						$("#checkResult").css("display", "block").css("color", "red").text("이미 존재하거나 탈퇴한 회원입니다.");
                  						$("#inputId").focus();
                  					}else{
                  						$("#checkResult").css("display", "block").css("color", "green").text("사용가능한 아이디입니다.");
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
</div>
</div>
</div>

		<script>
        	function goLogin(){
        		location.href="loginForm.me";
        	}
        	</script>


    
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
