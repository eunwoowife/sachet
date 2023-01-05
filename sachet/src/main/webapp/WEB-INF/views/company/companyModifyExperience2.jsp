<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	}
	
	.addProductTitle{
		margin-right:200px;
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
            <li class="menu-item active open">
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
                 <li class="menu-item active">
                  <a href="experienceList.co" class="menu-link" >
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
                  <a href="pages-misc-error.html" class="menu-link">
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
                      <img src="${pageContext.request.contextPath}/resources/uploadFiles/jo.png" class="w-px-40 h-auto rounded-circle"/>
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
          
          
           <div class="addProductOuter">
           		<div class="addProductTitle" align="center">
           		<h1>체험수정</h1>
           		<br><br>
           		</div>
           		
           		<div class="addForm" style="margin-left:250px;">
           		
  					<form action="experienceUpdate.co?eno=${e.experNo }" method="post" enctype="multipart/form-data">
           			  <label class="form-label">체험명</label>
           			  <div class="form-floating">
                        <input
                          type="text"
                          class="form-control"
                          id="floatingInput"
                          placeholder="Product Name"
                          aria-describedby="floatingInputHelp"
                          style="width:700px;"
                          value="${e.experTitle }"
                          name="experTitle"
                          required
                        />
                        <label for="floatingInput">체험명</label>
                        </div>
                        
                         <div class="mb-3">
                        <label for="defaultSelect" class="form-label">체험일</label>
                        <select id="defaultSelect" class="form-select experDateList" style="width:700px;" name="experDate">
                          <option>체험일</option>
                          <option value="1">1/11</option>
                          <option value="2">1/12</option>
                          <option value="3">1/13</option>
                        </select>
                      </div>
                      
                      <script>
                      	$(function(){
//                       		var hehe = $(".experDateList option");
//                       		console.log(hehe);
								$(".experDateList option").each(function(){
// 									console.log($(this).val());
									if($(this).val()=="${e.experDate}"){
										$(this).attr("selected", true);
									}
								})
                      	})
                      </script>
                        
                         <div class="mb-3">
                        <label for="defaultSelect" class="form-label">체험시간</label>
                        <select id="defaultSelect" class="form-select experTimeList" style="width:700px;"name="experTime">
                          <option>체험시간</option>
                          <option value="1">10:00 ~ 12:00</option>
                          <option value="2">13:00 ~ 15:00</option>
                          <option value="3">15:00 ~ 17:00</option>
                          <option value="4">17:00 ~ 19:00</option>
                        </select>
                      </div>
                      
                      <script>
                      	$(function(){
                      		$(".experTimeList option").each(function(){
                      			if($(this).val()=="${e.experTime}"){
                      				$(this).attr("selected", true);
                      			}
                      		})
                      	})
                      </script>
                      
                         <label for="exampleFormControlTextarea1" class="form-label">체험설명</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="10"  style="resize: none; width:700px;" name="experDetail">${e.experDetail }</textarea>
           				
           					
      					  <label for="html5-number-input" class="col-md-2 col-form-label">체험정원</label>
                        <div class="col-md-10">
                          <input class="form-control" type="number" id="html5-number-input" style="width:700px;" min="1" name="capacity" value="${e.capacity }"/>
                        </div>
                        
                          <label for="html5-number-input" class="col-md-2 col-form-label">체험가격(￦)</label>
                        <div class="col-md-10">
                          <input class="form-control" type="number" id="html5-number-input" style="width:700px;" min="1000" name="experPrice" value="${e.experPrice }"/>
                        </div>
                        
                        
                        <br>
                        
                        <table>
                        	  <tr>
					                <td align="center">
					                	 <label for="exampleFormControlTextarea1" class="form-label">상품 대표이미지</label>
					                	<input type="file" id="file1" onchange="loadImg(this,1);" name="upfile">
					                    <img src="${e.experImgFp}" id="titleImg" width="300" height="300">
					                     <!--기존 파일이 있으면 수정하기 버튼을 눌렀을 때 해당 파일정보가 같이 전송될 수 있도록 hidden으로 작업 -->
			                       		<input type="hidden" name="experImgOn" value="${e.experImgOn }">
			                       		<input type="hidden" name="experImgFp" value="${e.experImgFp }">
					                </td>
					            </tr>
                        </table>
                        
						
						<br><br>
						
						  <div class="mt-2" align="center" style="margin-right:430px;">
                          <button type="submit" class="btn btn-primary me-2">수정하기</button>
                          <button type="button" class="btn btn-outline-secondary" onclick="history.back();">취소</button>
                        </div>
                        <br><br><br>
						
           		
           		</form>
           </div>
          
          
          
          </div>
          </div>
          
          
           <script>

   
			$(function(){
                $("#file-area").hide();

				$("#titleImg").click(function(){
					$("#file1").click();
				});
			});

            function loadImg(inputFile,num){
				//inputFile : 현재 변화가 생긴 input type="file" 요소 객체
				//num : 몇번째 input 요소인지 확인 후 해당 영역에 미리보기를 위한 매개변수

				//files속성은 업로드된 파일의 정보를 배열의 형태로 묶어서 반환하는 속성
				//파일 선택시 length가 1을 반환 취소하면 0을 반환한다.
				// console.log(inputFile.files.length);

				if(inputFile.files.length==1){
					//선택된 파일이 존재하면
					//선택된 파일을 읽어서 해당 영역에 미리보기 띄워주기

					//파일을 읽어주기 위한 객체 FileReader
					var reader = new FileReader();

					//파일을 읽어들이는 메소드 -  어떤 파일을 읽을것인지 매개변수로 제시
					//readAsDataURL(파일);
					//파일을 읽어들이는 순간 해당 파일만의 고유 url을 부여한다.
					//부여된 url을 src속성에 추가하면 된다.
					reader.readAsDataURL(inputFile.files[0]);

					//파일 읽기가 완료되 시점에 src에 url을 부여하는 함수 만들기
					reader.onload = function(e){
						//e는 이벤트 객체
						//부여된 url은 e객체 target의 result에 들어있음.
						// console.log(e);

						//각 영역에 맞춰서 이미지 미리보기
						switch(num){
							case 1 : $("#titleImg").attr("src",e.target.result); break;
						}
					}
				}else{ //취소 누를 시 미리보기 없애기
					switch(num){
							case 1 : $("#titleImg").attr("src",null); break;
						}
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