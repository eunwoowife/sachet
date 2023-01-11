<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SACHET</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon-2.ico" />

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
	
	.addProductOuter{
		margin-top:150px;
		margin-left:200px;
		margin-right:200px;
	}
	
   #haha, #hehe{
    	float:left;
    }
    
    #haandhe{
    	margin-left:120px;
    }
    
     table tr td{
    height: 30px;
 }

 .row1{
   height: 50px;
 }

 .row3{
    height: 5%;
 }
 .row6{
    height:5%;
 }
 
 .row7{
    height: 5%;
 }

 .row9{
    height: 5%;
 }

 .row10{
    height: 5%;
 }

 .row12{
    height: 5%;
 }
 
 .row13{
 	height: 15%;
 }
 
 #boothTable{
 	 width: 600px;
    height: 500px;
    padding: 50px;
 }
 
 .boothSelect{
    width: 100%;
    height: 100%;
    border-radius: 5%;
    border: none;
    background-color: gray;
    cursor: pointer;
    color: #22264e;
 }


#listarea{
  border: #d6dadb 1px solid;
  border-radius: 10px;
  width: 120%;
  padding: 17px;
  height: 520px;
}
.btnA{
  float: right;
  margin: 5px;
  width: 80px;
}

.Boothprice{
padding: 10px;
margin-left: 80px;
}

.Boothprice div{
margin-left: 20px;
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
                <li class="menu-item active">
                  <a href="boothSetting.boo" class="menu-link">
                    <div data-i18n="Notifications">승인 대기중인 부스</div>
                  </a>
                </li>
                <li class="menu-item">
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
                <li class="menu-item active open">
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
        	
        	
        	<div align="center" style="margin-left:-80px;">
        	<h1 style="color:gray;">${b.boothName }</h1>
        		<pre>
${b.boothDetail }
        		</pre>
        	</div>
        	<br><br>
        	
			<div id="haandhe">
            <div id="haha">
            	<p style="margin-left:220px; font-weight:bold; font-size:18px;">부스이미지</p>
            <img style="margin-top:20px;" src="${b.boothImgFp}" >
          	</div>
          	
          	<div id="hehe" style="margin-left:200px;">
          	  	<p style="margin-left:270px; font-weight:bold; font-size:18px;">부스위치</p>
               <div class="col-sm-10">
                      <div id="listarea">
                        <table id="boothTable">
                              <tr class="row1">
                                <td colspan="4" rowspan="2" width=""><input type="button" name="b1" class="boothSelect premium booth1" value="Premium" onclick="selectNo(1);"></td>
                                <td></td>
                                <td colspan="7" rowspan="2" width=""><input type="button" name="b2" class="boothSelect premium booth2" value="Premium" onclick="selectNo(2);"></td>
                                <td width="8%"></td>
                                <td colspan="2" rowspan="2" width="20%"><input type="button" name="b5" class="boothSelect deruxe booth5" value="Deluxe" onclick="selectNo(5);"></td>
                              </tr>
                              <tr class="row2">
                                <td width="3%"></td>
                                <td></td>
                              </tr>
                              <tr class="row3">
                                <td width="100px"></td>
                                <td width="5%"></td>
                                <td width="5%"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td width="2%"></td>
                                <td width="5%"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row4">
                                <td rowspan="7"><input type="button" name="b3" class="boothSelect premium booth3" value="Premium" onclick="selectNo(3);"></td>
                                <td></td>
                                <td colspan="2" rowspan="2"><input type="button" name="b8" class="boothSelect booth8" value="Standard" onclick="selectNo(8);"></td>
                                <td></td>
                                <td colspan="5" rowspan="2"><input type="button" name="b9" class="boothSelect booth9" value="Standard" onclick="selectNo(9);"></td>
                                <td></td>
                                <td colspan="2" rowspan="2"><input type="button" name="b10" class="boothSelect booth10" value="Standard" onclick="selectNo(10);" ></td>
                                <td></td>
                                <td rowspan="2"><input type="button" name="b11" class="boothSelect booth11" value="Standard" onclick="selectNo(11);"></td>
                              </tr>
                              <tr class="row5">
                                <td></td>
                                <td></td>

                                <td width="3%"></td>
                                <td></td>
                              </tr>
                              <tr class="row6">
                                <td></td>	
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row7">
                                <td></td>
                                <td colspan="2" rowspan="2"><input type="button" name="b12" class="boothSelect booth12" value="Standard" onclick="selectNo(12);"></td>
                                <td></td>
                                <td></td>
                                <td colspan="3" rowspan="2" width="15%"><input type="button" name="b13" class="boothSelect booth13" value="Standard" onclick="selectNo(13);"></td>
                                <td colspan="3" rowspan="2"><input type="button" name="b14" class="boothSelect booth14" value="Standard" onclick="selectNo(14);"></td>
                                <td></td>
                                <td></td>
                                <td rowspan="7"><input type="button" name="b4" class="boothSelect premium booth4" value="Premium" onclick="selectNo(4);"></td>
                              </tr>
                              <tr class="row8">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td width="3%"></td>
                              </tr>
                              <tr class="row9">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row10">
                                
                                <td></td>
                                <td colspan="2" rowspan="2"><input type="button" name="b15" class="boothSelect booth15" value="Standard" onclick="selectNo(15);"></td>
                                <td></td>
                                <td rowspan="2"></td>
                                <td colspan="3" rowspan="2"><input type="button" name="b16" class="boothSelect booth16" value="Standard" onclick="selectNo(16);"></td>
                                <td colspan="3" rowspan="2"><input type="button" name="b17" class="boothSelect booth17" value="Standard" onclick="selectNo(17);"></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row11">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row12">
                                <td rowspan="3" ><input type="button" name="b6" class="boothSelect deruxe booth6" value="Deluxe" onclick="selectNo(6);"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                    
                              </tr>
                              <tr class="row13">
                                <td></td>
                                
                                <td colspan="2" rowspan="2"><img width="50px;" src="${pageContext.request.contextPath}/resources/images/exit.png" alt=""></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="2" rowspan="2"><input type="button" name="b18" class="boothSelect deruxe booth7" value="Deluxe" onclick="selectNo(7);"></td>
                                <td></td>
                                <td></td>
                                <td colspan="2" rowspan="2"><img width="50px;" src="${pageContext.request.contextPath}/resources/images/entrance.png" alt=""></td>
                                <td></td>
                                
                              </tr>
                              <tr class="row14">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr class="row15">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                    
                            </table>
                            <br><br><br><br><br><br>
                            
                            
                            <script>
                            	$(function(){
//                             		console.log(${boo.boothSection});
									for(var j=0; j<18; j++){
                            		if(j==${b.boothSection}){
                            			$(".booth"+[j]).css('background-color', 'skyblue');
                            			}
									}
                            	})
                            </script>
                            
          	</div>
            </div>
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