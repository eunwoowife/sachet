<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
        margin-left: 280px;
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
        margin-left: 40px;
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
</head>
<body>
	
	<c:if test="${not empty alertMessage }">
	<script>
		alert("${alertMessage}");
	</script>
		<c:remove var="alertMessage" scope="session"/>
	</c:if>
	
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
        
        <script>
        	function goLogin(){
        		location.href="loginForm.me";
        	}
        	
        	function goLogout(){
        		location.href="logout.me";
        	}
        	
        	function goMypage(){
        		location.href="myPage.me";
        	}
        	
        	function goMycomPage(){
        		location.href="mypage.co";
        	}
        	
        </script>
        
  
        
    </div>
    <nav>
		<ul>
			<li><a href="#">About Sachet</a></li>
			<li><a href="ticketInfo.ti">Ticketing</a>
				<ul>
					<li><a href="ticketInfo.ti">티켓 안내 </a></li>
					<li><a href="#">티켓 예매</a></li>
				</ul>
			</li>
			<li><a href="#">Product</a>
				<ul>
					<li><a href="boothListView.boo">BOOTH</a></li>
					<li><a href="productListView.pro">PRODUCT</a></li>
					<li><a href="experienceListView.exp">EXPERIENCE</a></li>
				</ul>
			</li>
			<li><a href="#">Booth Info</a>
				<ul>
					<li><a href="#">부스 목록</a></li>
					<li><a href="#">SUB_MENU2</a></li>
					<li><a href="#">SUB_MENU3</a></li>
				</ul>
			</li>
			<li><a href="#">Help</a></li>
		</ul>
	</nav>
</div>


</body>
</body>

</html>