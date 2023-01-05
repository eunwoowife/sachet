<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CART</title>
		<!-- Core CSS -->
		<link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css" />
		<link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
		<link rel="stylesheet" href="../assets/css/demo.css" />
	
		<!-- Vendors CSS -->
		<link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
	
		<!-- Helpers -->
		<script src="../assets/vendor/js/helpers.js"></script>
	
		<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
		<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
		<script src="../assets/js/config.js"></script>
</head>
<title>Document</title>
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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

    .two, .three{
        color: rgb(94, 94, 94)
    }
	

	.productarea{
		display: inline-block;
		background-color: white;
		padding: 20px;
		vertical-align:top;
		margin-top: 10px;
        width: 90%;
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
				<span class="stepTitle">장바구니</span>				
			</span>
			<span class="step two">
				step 02<br>
				<span class="stepTitle"> 
				<img src="${pageContext.request.contextPath}\resources\images\cartArrow.png" width="50px;">
				주문결제</span>	
			</span>
			<span class="step three">
				step 03<br>
				<span class="stepTitle">
				<img src="${pageContext.request.contextPath}\resources\images\cartArrow.png" width="50px;">
				 주문완료</span>	
			</span>
		</div>

		<div class="listarea">
		
			
			
			<div class="productarea">

							  <div class="card">
								<h5 class="card-header">Table Basic</h5>
								<div class="table-responsive text-nowrap">
								  <table class="table">
									<thead>
									  <tr>
										<th>상품 형태</th>
										<th>썸네일 들어갈 곳</th>
										<th>상품명</th>
										<th>수령 부스</th>
										<th>가격</th>
									  </tr>
									</thead>
									<tbody class="table-border-bottom-0">


									  <tr>
										<td><span class="badge bg-label-primary me-1">체험상품/수령상품</span></td>
										<td>썸네일들어갈 자리</td>
										<td>상품명 들어갈 자리</td>
										<td>
											수령 부스명 들어갈 자리
										</td>
										<td>
											가격들어갈 자리
										</td>
									
									  </tr>

									  <tr>
										<td><span class="badge bg-label-primary me-1">체험상품/수령상품</span></td>
										<td>썸네일들어갈 자리</td>
										<td>상품명 들어갈 자리</td>
										<td>
											수령 부스명 들어갈 자리
										</td>
										<td>
											가격들어갈 자리
										</td>
									
									  </tr>

									  <tr>
										<td><span class="badge bg-label-primary me-1">체험상품/수령상품</span></td>
										<td>썸네일들어갈 자리</td>
										<td>상품명 들어갈 자리</td>
										<td>
											수령 부스명 들어갈 자리
										</td>
										<td>
											가격들어갈 자리
										</td>
									
									  </tr>

									  <tr>
										<td><span class="badge bg-label-primary me-1">체험상품/수령상품</span></td>
										<td>썸네일들어갈 자리</td>
										<td>상품명 들어갈 자리</td>
										<td>
											수령 부스명 들어갈 자리
										</td>
										<td>
											가격들어갈 자리
										</td>
									
									  </tr>

									  <tr>
										<td><span class="badge bg-label-primary me-1">체험상품/수령상품</span></td>
										<td>썸네일들어갈 자리</td>
										<td>상품명 들어갈 자리</td>
										<td>
											수령 부스명 들어갈 자리
										</td>
										<td>
											가격들어갈 자리
										</td>
									
									  </tr>

									  <tr>
										<td><span class="badge bg-label-primary me-1">체험상품/수령상품</span></td>
										<td>썸네일들어갈 자리</td>
										<td>상품명 들어갈 자리</td>
										<td>
											수령 부스명 들어갈 자리
										</td>
										<td>
											가격들어갈 자리
										</td>
									
									  </tr>

								
									  
									</tbody>
								  </table>
								</div>
							  </div>
							  <!--/ Basic Bootstrap Table -->



			</div>

	
			

			<br><br>
		</div>



    </div>
	</div>
	
</body>


<script>

</script>
</html>