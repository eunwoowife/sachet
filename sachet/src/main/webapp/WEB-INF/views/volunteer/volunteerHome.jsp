<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <title>Tabs and pills - UI elements | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
  
  
  <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
  </head>
<style>
#contentvol{
     margin-left: 450px !important;
    }
 
 @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap'); 
 #submitvol.row{
 margin:0px !important;
 width:100% !important;
 }
</style>
  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

       <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="index.html" class="app-brand-link">
              <span class="app-brand-logo demo">
                <svg
                  width="25"
                  viewBox="0 0 25 42"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                >
                  <defs>
                    <path
                      d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                      id="path-1"
                    ></path>
                    <path
                      d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                      id="path-3"
                    ></path>
                    <path
                      d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                      id="path-4"
                    ></path>
                    <path
                      d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                      id="path-5"
                    ></path>
                  </defs>
                  <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                      <g id="Icon" transform="translate(27.000000, 15.000000)">
                        <g id="Mask" transform="translate(0.000000, 8.000000)">
                          <mask id="mask-2" fill="white">
                            <use xlink:href="#path-1"></use>
                          </mask>
                          <use fill="#696cff" xlink:href="#path-1"></use>
                          <g id="Path-3" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-3"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                          </g>
                          <g id="Path-4" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-4"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                          </g>
                        </g>
                        <g
                          id="Triangle"
                          transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) "
                        >
                          <use fill="#696cff" xlink:href="#path-5"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                        </g>
                      </g>
                    </g>
                  </g>
                </svg>
              </span>
              <span class="app-brand-text demo menu-text fw-bolder ms-2">Sneat1</span>
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
                <div data-i18n="Analytics">HOME으로 돌아가기</div>
              </a>
            </li>

           

            <li class="menu-header small text-uppercase">
              <span class="menu-header-text">MY PAGE</span>
            </li>
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="Account Settings">CREDIT</div>
              </a>
              <ul class="menu-sub">
               
                <li class="menu-item">
                 
                  	<a href="#" onclick="javascript:myticket()"	class="menu-link">
                    <div data-i18n="Notifications">예매 내역 조회</div>
                  </a>
                </li>
                <li class="menu-item active">
                  <a href="#" onclick="javascript:myOrder()" class="menu-link">
                    <div data-i18n="Connections">구매 내역 조회</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                <div data-i18n="Authentications">ACCOUNT</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="auth-login-basic.html" class="menu-link" target="_blank">
                    <div data-i18n="Basic">회원 정보 수정</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="auth-register-basic.html" class="menu-link" target="_blank">
                    <div data-i18n="Basic">회원 탈퇴</div>
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
                  <a href="pages-misc-error.html" class="menu-link">

                    <div data-i18n="Error">봉사활동신청</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="volunteerlist.qs" class="menu-link">
                    <div data-i18n="Under Maintenance">봉사활동 승인 확인</div>
                  </a>
                </li>
                <li class="menu-item">
                    <a href="pages-misc-under-maintenance.html" class="menu-link">
                      <div data-i18n="Under Maintenance">봉사활동 인증서 발급</div>
                    </a>
                  </li>
              </ul>
            </li>
           
        </aside>
        <!-- / Menu -->



          <!-- / Navbar -->

         <!-- Content wrapper -->
          <div class="content-wrapper" id="contentvol" style="font-family: 'Nanum Gothic', sans-serif;">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">커뮤니티 /</span> 자원활동가 </h4>

             
                <div class="col-xl-6" >
                  <h6 class="text-muted">자원활동가</h6>
                  <div class="nav-align-top mb-4">
                    <ul class="nav nav-tabs nav-fill" role="tablist">
                      <li class="nav-item">
                        <button
                          type="button"
                          class="nav-link active"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#navs-justified-home"
                          aria-controls="navs-justified-home"
                          aria-selected="true"
                        >
                          <i class="tf-icons bx bx-home"></i> 모집공고
                          <span class="badge rounded-pill badge-center h-px-20 w-px-20 bg-label-danger">3</span>
                        </button>
                      </li>
                      <li class="nav-item">
                        <button
                          type="button"
                          class="nav-link"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#navs-justified-profile"
                          aria-controls="navs-justified-profile"
                          aria-selected="false"
                        >
                          <i class="tf-icons bx bx-user"></i> 모집분야
                        </button>
                      </li>
                      <li class="nav-item">
                        <button
                          type="button"
                          class="nav-link"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#navs-justified-messages"
                          aria-controls="navs-justified-messages"
                          aria-selected="false"
                        >
                          <i class="tf-icons bx bx-message-square"></i> 지원서 작성
                        </button>
                      </li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane fade show active" id="navs-justified-home" role="tabpanel">
                        <p>
                            <h3 > 모집 기간 (연장)</h3>
                            2022.8.2(화)~9.25.(일)

                        </p>
                        <pre class="mb-0">
                            <h3>모집 분야</h3>
 ○ 7개 팀(운영지원·학술포럼·기획홍보·전시·조향·프로그램·기술팀) 16개 분야
 ※ 상세 분야 및 업무는 모집 분야란 참고
                       

                            <h3>모집 대상</h3>
○ 조향에 열정을 가지고 책임감 있게 활동할 수 있는 사람 
○ 재외동포나 외국인일 경우 한국어로 의사소통이 가능한 사람 
○ 고등학교 재학생 및 동일연령의 청소년,성인 누구나
<h7 style="color: red;">※ 청소년의 경우 보호자 동의 필수 </h7> 
                    		
                
                            <h3>모집 일정</h3>
○ 모집 기간 : 2022.12.11 (일)~ 12.13(화)

                                <h3>모집 분야</h3>
○7개 팀(운영지원·학술포럼·기획홍보·전시·조향·프로그램·기술팀) 16개 분야
※ 상세 분야 및 업무는 모집 분야란 참고
                    
             		 <h3>교육 및 활동 일정 </h3>
○ 팀별 세부 교육 2022.12.1(목)~12.9(금)
<h7 style="color: red;">※ 상기 일정은 변경될 수 있습니다.</h7> 
             		
             			<h3>지원 방법</h3>
○ 공식 홈페이지를 통한 온라인지원 
     
             			<h3>활동 혜택</h3>
○ 봉사 시간 인정 *1365 자원봉사 포털 회원가입 필수 <br>
○ 소정의 활동비활동 기간 중 간식 제공<br>
○ 유니폼,배지(ID카),굿즈 증정<br>
○ 메인 카탈로그에 이름 등재<br>
○ 활동증명서 수여<br>
○ 공결 확인용 공문 발급 * 신청자에 한함<br>
○ 우수자원활동가 선물 증정 <br>

<h3>문의사항</h3>
○ 향수 박람회 사무국 자원활동가 담당자 : 02-1234-5678~2<br>
○ E-mail : volunteer@sachet.or.kr

					
             			
             			</pre>
             			
                      </div>
                      <div class="tab-pane fade" id="navs-justified-profile" role="tabpanel">
                       <style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-9wq8{border-color:inherit;text-align:center;vertical-align:middle}
.tg .tg-fsme{background-color:#efefef;border-color:inherit;text-align:center;vertical-align:middle}
</style>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-9wq8{border-color:inherit;text-align:center;vertical-align:middle}
.tg .tg-fsme{background-color:#efefef;border-color:inherit;text-align:center;vertical-align:middle}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 640px">
<colgroup>
<col style="width: 111px">
<col style="width: 117px">
<col style="width: 321px">
<col style="width: 91px">
</colgroup>
<thead>
  <tr>
    <th class="tg-fsme">팀<br></th>
    <th class="tg-fsme">분야</th>
    <th class="tg-fsme">업무</th>
    <th class="tg-fsme">인원</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-fsme" rowspan="7">운영지원</td>
    <td class="tg-9wq8">상황실<br></td>
    <td class="tg-9wq8">사무국 전화 응대<br>상황실 보고 사항 정리<br>서류 보조 및 물품관리</td>
    <td class="tg-9wq8">2<br></td>
  </tr>
  <tr>
    <td class="tg-9wq8">굿즈</td>
    <td class="tg-9wq8">굿즈 판매 및 정산</td>
    <td class="tg-9wq8"></td>
  </tr>
  <tr>
    <td class="tg-9wq8">안내데스크</td>
    <td class="tg-9wq8">관람객 응대 <br>자원활동가 및 리더 출결 관리<br>자원활동가 쿠폰 및 음료 관리</td>
    <td class="tg-9wq8">2</td>
  </tr>
  <tr>
    <td class="tg-9wq8">체험관</td>
    <td class="tg-9wq8">입 퇴장 안내 및 검표<br>체험관 뒷정리<br>체험 유의사항 안내<br>체험 안전사고 대처 </td>
    <td class="tg-9wq8">10<br></td>
  </tr>
  <tr>
    <td class="tg-9wq8">티켓</td>
    <td class="tg-9wq8">티켓 발권 (현장,온라인) 및 정산 <br>발권 대기줄 관리</td>
    <td class="tg-9wq8">4</td>
  </tr>
  <tr>
    <td class="tg-9wq8">부대행사</td>
    <td class="tg-9wq8">설치 보조 및 물품 정리<br>부스 관리 및 안내<br>부스 운영 보조 <br>관객 질서 유도,안전 사고 대처</td>
    <td class="tg-9wq8">8</td>
  </tr>
  <tr>
    <td class="tg-9wq8">배지<br></td>
    <td class="tg-9wq8">배지 (ID카드)발급 및 안내<br>게스트 패키지 관리 및 안내물 배포<br>게스트 라운지 관리 및 운영 </td>
    <td class="tg-9wq8">3</td>
  </tr>
  <tr>
    <td class="tg-fsme">학술포럼</td>
    <td class="tg-9wq8">강연 프로그램 행사 보조</td>
    <td class="tg-9wq8">강연 프로그램 및 행사 보조</td>
    <td class="tg-9wq8">1<br></td>
  </tr>
  <tr>
    <td class="tg-fsme" rowspan="3">기획홍보</td>
    <td class="tg-9wq8">프레스센터/인터뷰</td>
    <td class="tg-9wq8">프레스 센터 운영 및 기자 응대<br>인터뷰 및 지원 스케줄 관리</td>
    <td class="tg-9wq8">1</td>
  </tr>
  <tr>
    <td class="tg-9wq8">SNS</td>
    <td class="tg-9wq8">SNS관리 및 콘텐츠 업로드<br>뉴스클리핑 보도 현황관리 </td>
    <td class="tg-9wq8">1<br></td>
  </tr>
  <tr>
    <td class="tg-9wq8">공식기록(사진/영상)</td>
    <td class="tg-9wq8">행사 사진 촬영 및 기록물 관리<br>프레스 센터 및 SNS 담당자 사진 전달<br></td>
    <td class="tg-9wq8">2</td>
  </tr>
  <tr>
    <td class="tg-fsme">전시</td>
    <td class="tg-9wq8">전시물 관리 및 관람객 안내</td>
    <td class="tg-9wq8">전시물 관리 및 관람객 안내<br>팝업스토어 운영 </td>
    <td class="tg-9wq8">9<br></td>
  </tr>
  <tr>
    <td class="tg-fsme" rowspan="2">프로그램</td>
    <td class="tg-9wq8">행사지원</td>
    <td class="tg-9wq8">프로그램 이벤트 사전 세팅 및 진행보조<br>관객 투표 진행</td>
    <td class="tg-9wq8">2</td>
  </tr>
  <tr>
    <td class="tg-9wq8">VIP담당</td>
    <td class="tg-9wq8">게스트 통역 및 수행<br>호텔투숙/퇴실게스트 명단 체크<br>게스트 관리지원</td>
    <td class="tg-9wq8">2</td>
  </tr>
  <tr>
    <td class="tg-fsme">기술</td>
    <td class="tg-9wq8">상황실</td>
    <td class="tg-9wq8">상황 모니터링<br>기타 기술 업무 보조</td>
    <td class="tg-9wq8">2<br></td>
  </tr>
</tbody>
</table>
                      </div>
                      <div class="tab-pane fade" id="navs-justified-messages" role="tabpanel">
                        <div class="container-xxl flex-grow-1 container-p-y">
            
              <div class="row" id="submitvol">
                <div class="col-md-6"style="width:550px;">
                  <div class="card mb-4" >
                    <form id="volunteerform" action="volsubmit.vo" method="POST">
                    <h5 class="card-header" style="width:500px;">자원활동가 지원서</h5>
                    <div class="card-body" style="width:500px;">
                      <div>
                        <label for="defaultFormControlInput" class="form-label">이름(국문)</label>
                        <input
                          type="text"
                          class="form-control"
                          id="defaultFormControlInput"
                          aria-describedby="defaultFormControlHelp"
                          name="volNameKor"
                        />
                        <label for="defaultFormControlInput" class="form-label" >이름(영문)</label>
                        <input
                        type="text"
                        class="form-control"
                        id="defaultFormControlInput"
                        aria-describedby="defaultFormControlHelp"
                        name="volNameEng"
                      />

                      <label for="defaultFormControlInput" class="form-label">주소(현 거주지)</label>
                        <input
                        type="text"
                        class="form-control"
                        id="defaultFormControlInput"
                        aria-describedby="defaultFormControlHelp"
                        name="volAddress"
                      />
                      <label for="defaultFormControlInput" class="form-label">연락처(핸드폰)</label>
                      <input
                      type="text"
                      class="form-control"
                      id="defaultFormControlInput"
                      aria-describedby="defaultFormControlHelp"
                      name="volPhone"
                    />
                 
                        <label for="defaultFormControlInput" class="form-label">학교 및 전공</label>
                        <input
                        type="text"
                        class="form-control"
                        id="defaultFormControlInput"
                        aria-describedby="defaultFormControlHelp"
                        name="volSchool"
                      />
                      
 					 <div class="mb-3">
                  <label for="exampleFormControlSelect1" class="form-label">지원팀</label>
                  <select class="form-select" id="exampleFormControlSelect1" aria-label="Default select example" name="volVol">
                    <option selected>지원팀</option>
                    <option value="루이비통">루이비통</option>
                    <option value="조말론">조말론</option>
                    <option value="YSL">YSL</option>
                    <option value="CELINE">CELINE</option>
                  </select>
                    <br>
                  
                    </div>
                    
                    	 <div class="mb-3">
                  <label for="exampleFormControlSelect1" class="form-label">지원분야</label>
                  <select class="form-select" id="exampleFormControlSelect2" aria-label="Default select example" name="volVolified">
                    <option selected>지원분야</option>
                    <option value="상황실">상황실</option>
                    <option value="굿즈">굿즈</option>
                    <option value="안내데스크">안내데스크</option>
                    <option value="체험관">체험관</option>
                    <option value="부대행사">부대행사</option>
                    <option value="배지">배지</option>
                    <option value="강연 프로그램 행사">강연 프로그램 행사</option>
                    <option value="프레스센터/인터뷰">프레스센터/인터뷰</option>
                    <option value="SNS">SNS</option>
                    <option value="공식기록(사진/영상)">공식기록(사진/영상)</option>
                    <option value="전시물 관리 및 관람객 안내">전시물 관리 및 관람객 안내</option>
                    <option value="행사지원">행사지원</option>
                     <option value="VIP">VIP담당</option>
                      <option value="상황실">상황실</option>
                    
                  </select>
                    <br>
                  
                    </div>

                <div class="mb-3">
                  <label for="exampleFormControlSelect1" class="form-label">지원경로</label>
                  <select class="form-select" id="exampleFormControlSelect3" aria-label="Default select example" name="volPath">
                    <option selected>지원경로</option>
                    <option value="대외활동사이트">대외활동 사이트</option>
                    <option value="뉴스레터">뉴스레터 및 보도자료 </option>
                    <option value="구인광고">구인광고</option>
                    <option value="SNS">SNS</option>
                    <option value="기타">기타</option>
                  </select>
                    <br>
                  	</div>
                    <div>
                      <label for="smallInput" class="form-label" >외국어</label>
                      <input
                        id="smallInput"
                        class="form-control form-control-sm"
                        type="text"
                        name="volLang"
                      
                      />
                    </div><br>
                  <div class="mb-3">
                    <label for="formRange2" class="form-label">외국어 능력</label>
                    <input type="range" class="form-range" min="0" max="5" id="formRange2" name="volLangRange"/>
                  </div>
                  
             
 						<div class="row mt-3">
                        <div class="d-grid gap-2 col-lg-6 mx-auto">
                          <button class="btn btn-primary btn-lg" type="submit">제출하기</button>
                          <button class="btn btn-secondary btn-lg" type="button">취소하기</button>
                        </div>
                      </div>
  		                 </form>
                      </div>
                    </div>
                  </div>
                </div>
               


              <!-- Tabs -->

              <hr class="container-m-nx border-light mt-5" />

              
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
    <!-- / Layout wrapper -->
    
      <!-- Core JS -->

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

</script>
  </body>
  
</html>
