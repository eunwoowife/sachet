<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CART</title>   <!-- Favicon -->
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
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<title>Document</title>
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<style>
	body{
		background-color: white;
	}
	.outerarea{
        width: 70%;
        margin-top: 100px;
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
	}
    .contentarea{
        width: 1300px;

    }
	.steparea{
        width: 100%;
		background-color: #c4cbd1;
		height: 170px;
		margin-top: 2em;
		border-radius: 20px;
	}
	.step {
		margin-top: 70px;
		display: inline-block;
		color: white;
		font-size: 1.2em;
		padding-left: 3.5em;
	}
	.stepTitle{
		font-size: 2em;
	}
    .two, .one{
        color: rgb(94, 94, 94)
    }
	
	.card{
	width:700px;
	}


	.col-md-6{
		display: inline-block;
		padding-left: 0px;
	}

	
	.card-header{
		font-size: 1.6em;
	}
	
	
	.listarea{
	  position: absolute;
	  left: 50%;
	  transform: translateX(-50%);
	  margin-top: 100px;
	  margin-bottom: 150px;
	}





</style>
<body>
<jsp:include page="../common/header.jsp" />
	<img src="" alt="">
	<div class="outerarea">

        <div class="contentarea">

		<div class="steparea">

			<span class="step one">
				step 01<br>
				<span class="stepTitle">장바구니			
				<img src="${pageContext.request.contextPath}\resources\images\cartArrow.png" width="50px;">
				</span>	
			</span>
			<span class="step two">
				step 02<br>
				<span class="stepTitle"> 
				주문결제</span>	
				<img src="${pageContext.request.contextPath}\resources\images\cartArrow.png" width="50px;">
			</span>
			<span class="step three">
				step 03<br>
				<span class="stepTitle">
				 주문완료</span>	
			</span>
		</div>

		<div class="listarea">
		
		
              <div class="card" >
                <h5 class="card-header" style="font-size: 2em;">결제 완료</h5>
                <div class="table-responsive text-nowrap">
                  <table class="table">
                    <thead>
                      <tr>
        				<th style="font-size: 1.5em; text-align: center; padding:50px;">
        				 <i class='bx bx-happy-heart-eyes'></i>
        				 주문번호: SACHET-20230112${o.orderNo } <br><br> 이용해주셔서 감사합니다.
        				 
        				 <br><br><br>
        				 <button type="button" class="btn btn-primary">마이페이지</button>
        				 <button type="button" class="btn btn-outline-secondary">계속 쇼핑하기</button>
        				 </th>
                      </tr>
                    </thead>
                    
                  </table>
                </div>
              </div>
                




         </div>
			</div>




			<br><br>
			
			
		



    </div>

	
<br><br>
			
</body>



</html>