<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
    
     @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    
    *{
    	font-family: 'IBM Plex Sans KR', sans-serif;
    }
        .content {
            background-color:white;
            width:80%;
            margin:auto;
        }
        .innerOuter {
            border:1px solid white;
            width:80%;
            margin:auto;
            padding:5% 10%;
            background-color:white;
        }

        #boardList {text-align:center;}
        #boardList>tbody>tr:hover {cursor:pointer;}

        #pagingArea {width:fit-content; margin:auto;}
        
        #searchForm {
            width:80%;
            margin:auto;
        }
        #searchForm>* {
            float:left;
            margin:5px;
        }
        .select {width:20%;}
        .text {width:53%;}
        .searchBtn {width:20%;}
    </style>
    
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
          <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-dock-top"></i>
              <div data-i18n="Account Settings">ACCOUNT</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item ">
                <a href="#" class="menu-link">
                  <div data-i18n="Notifications">회원 정보</div>
                </a>
              </li>
              <li class="menu-item">
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
          <li class="menu-item active open">
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
              <li class="menu-item active">
                <a href="volunteerlist.qs" class="menu-link">
                  <div data-i18n="Under Maintenance">봉사 신청 내역</div>
                </a>
              </li>
            </ul>
          </li>
       

 

     

      </aside>

    <div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% -2%;">
            <h2>STAFF 지원내역 </h2>
            <br>
          
          <!-- 
            <button type="submit" class="btn btn-secondary" style="float:right;" >검색</button>
           -->
        
            <br>
            <br>
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                    <tr>
                    	
                        <th>지원번호</th>
                        <th>이름</th>
                        <th></th>
                        <th>핸드폰 번호</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach var="vo" items="${list}">
                    <tr>
                    	
                        <td>${vo.volNo}</td>
                        <td>${vo.volNameEng}</td>
                        <td>${vo.volAddress}</td>
                        <td>${vo.volPhone}</td>
                        <td>${vo.volPhone}</td>
                        <td></td>
                       
                    </tr>
                         </c:forEach>
                  
                   
                   
                
                </tbody>
            </table>
            <br>

            <div id="pagingArea">
                <ul class="pagination">
                	<!-- currentPage가 1이면 숨기기 -->
                	<c:choose>
                		<c:when test="${pi.currentPage ne 1 }">
                			<li class="page-item"><a class="page-link" href="list.qs?currentPage=${pi.currentPage-1}">Previous</a></li>
                		</c:when>
	                    <c:otherwise><!-- currentPage가 1일경우 (1페이지) -->
	                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
	                    </c:otherwise>
                	</c:choose>
                	<c:forEach begin="${pi.startPage }" end="${pi.endPage }" var="p">
	                  <c:choose>
                		<c:when test="${pi.currentPage eq p }">
                			<li class="page-item disabled"><a class="page-link" href="list.qs?currentPage=${p}">${p}</a></li>
                		</c:when>
                		<c:otherwise>
	                    	<li class="page-item"><a class="page-link" href="list.qs?currentPage=${p}">${p}</a></li>
                		</c:otherwise>
                		</c:choose>
                	</c:forEach>
                    
                    <!-- currentPage가 maxPage와 일치하면 숨기기  -->
                    <c:choose>
						<c:when test="${pi.currentPage eq pi.maxPage }">
		                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="list.qs?currentPage=${pi.currentPage +1}">Next</a></li>
						</c:otherwise>                    
                    </c:choose>
                </ul>
            </div>

            <br clear="both"><br>

            <br><br>
        </div>
        <br><br>

    </div>

   <script>
            	$(function(){
            		$("#boardList>tbody tr").click(function(){
            			console.log($(this).children().eq(0).text());
            			location.href="detail.vo?volNo="+$(this).children().eq(0).text();
            		})
            	})
            
            </script>
  

</body>
</html>