<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SACHET</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon-2.ico" />


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
    .one, .three{
        color: rgb(94, 94, 94)
    }
	
	.productarea{
		display: inline-block;
		background-color: white;
		padding-bottom: 30px;;
		margin-top: 50px;
		width: 95%;
		margin-left: 30px;
		
	}

	.bottomArea{
		width: 100%;
	}


	.card{
		width: 100%;
		
	}

	.row{
		width: 100%;
		
	}

	.col-md-6{
		display: inline-block;
		padding-left: 0px;
		
	}

	.userArea{
		width: 50%;
		
	}

	.payArea{
		width: 30%;
	}

	.paySub{
		width: 80%;
		height: 50px;
		font-size: 1.5em;
		margin: 38px;
		

	}

	.paySubmitArea{
		font-size: 1.1em;
	}

	.totalArea{
		text-align: right;
		font-size: 3em;
		color: #67B4D2;
		display: inline-block;
		font-weight: 500;
		float: right;
		margin-right: 10px;
	}

	.card-header{
		font-size: 1.6em;
	}
	.userArea2{
	width:95%;
	margin: 0;
	}
	
	.payArea2{
	width:90%;
	}
	
	#bottomArea2{
	margin-left: 50px;
	width:100%;
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

							  <div class="card boxborder">
								<h5 class="card-header">구매 상품 목록</h5>
								<div class="table-responsive text-nowrap">
								  <table class="table"  style="text-align:center">
									<thead>
									  <tr>
										<th></th>
										<th></th>
										<th>상품명</th>
										<th>개수</th>
										<th>가격</th>
										<th>수령 부스</th>
										<th>합계</th>
									  </tr>
									</thead>
									<tbody class="table-border-bottom-0">


									  <tr>
										<td>
										
										<c:choose>
									         <c:when test = "${c.goodsNo<1000}">
									        	<span class="badge rounded-pill bg-info" style="color:white">수령상품</span>
									         </c:when>
									         <c:when test = "${c.goodsNo > 1000}">
									          <span class="badge rounded-pill bg-success" style="color:white">체험상품</span>
									         </c:when>
									         <c:otherwise>
									        	[구매상품]
									         </c:otherwise>
								    	  </c:choose>
										
										
										</td>
										<td><img src="${pageContext.request.contextPath}/${c.goodsImgFp}" alt=""  width="30px;"></td>
										<td>${c.goodsName}</td>
										<td id="gCount">${c.goodsCount}</td>
										<td id="gPrice">${c.goodsPrice}</td>
										<td >${c.boothName}</td>
										<td class="goodsPrice"></td>
									  </tr>


									</tbody>
								  </table>
								</div>
							  </div>
							  <!--/ Basic Bootstrap Table -->

							  <hr>



			</div>
			
			
			<div id="bottomArea2">

			<div class="row bottomArea">
			
			
			
				<div class="col-md-6 userArea" >
					<div class="card mb-4 userArea2">
					  <h5 class="card-header">구매자 정보</h5>
					  <div class="card-body">
						<div>
						  <label for="defaultFormControlInput" class="form-label">Name</label>
						  <input
							type="text"
							class="form-control"
							id="defaultFormControlInput"
							placeholder="${m.userName}"
							aria-describedby="defaultFormControlHelp"
						  />
						  <div id="defaultFormControlHelp" class="form-text">
							상품 수령시 확인용 이름입니다<br><br>
						  </div>
						  <div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Email</label>
							<input
							  type="email"
							  class="form-control"
							  id="exampleFormControlInput1"
							  placeholder="${m.email}"
							/>
						  </div>
						  <div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Phone</label>
							<input
							  type="text"
							  class="form-control"
							  id="exampleFormControlInput1"
							  placeholder="${m.phone}"
							/>
						  </div>

						  <div>
							<label for="exampleFormControlTextarea1" class="form-label">이용약관</label>
							<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" disabled>
제1조(목적)
이 약관은 SACHET 2023(전자상거래 사업자자)가 운영하는 SACHET 2023 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.
                            
※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」
                            
제2조(정의)
① “몰”이란 SACHET 2023 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.                    
② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.
④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.
                            
제3조 (약관 등의 명시와 설명 및 개정) 
① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호·모사전송번호·전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보보호책임자 등을 이용자가 쉽게 알 수 있도록 SACHET 2023 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
 ③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다.  이 경우 "몰“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. 
⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.
⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 「전자상거래 등에서의 소비자 보호지침」 및 관계법령 또는 상관례에 따릅니다.
                           
 
제4조(서비스의 제공 및 변경) 
① “몰”은 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
2. 구매계약이 체결된 재화 또는 용역의 배송
3. 기타 “몰”이 정하는 업무
② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.
③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.
④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
							</textarea>
						  </div>
						</div>
					  </div>
					</div>
				  </div>



				  <div class="col-md-6 payArea">
					<div class="card mb-4 payArea2">
					  <h5 class="card-header">결제 정보</h5>
					  <div class="card-body" >
						<div class="form-floating">
							<div class="mb-3">
								<label for="exampleFormControlReadOnlyInputPlain1" class="form-label"></label>
								<div class="paySubmitArea">
									<div>구매 상품: </div> <div style="margin-bottom: 20px;"> ${c.goodsName } </div>
									<br><br>
									<div style="font-size:1.5em">
										최종 결제 금액:
									</div>

									
									<div class="totalArea" id="lastTotal">
										20000
									</div>
									<div class="totalArea">
										₩
									</div>
									
							  </div>
						</div>


						<input type="button" class="btn btn-info paySub" type="button" value="결제하기"
									onclick="requestPay(${c.goodsNo},${c.goodsCount});" style="background-color: #67B4D2; border: none;">
					  </div>

					 
					</div>
				  </div>


                </div>


         </div>
			</div>




			<br><br>
			
			
		



    </div>
	</div>
	
	</div>

</body>


<script>


window.onload = function(){
	var price = $("#gPrice").text();
	var count = $("#gCount").text();
	
	var selectSum = parseInt(price)*parseInt(count);
	
	$(".goodsPrice").text(selectSum);
	
	
	var sum=0;
	$('.goodsPrice').each(function(){
		sum += parseInt($(this).text()); 
	});
	$("#lastTotal").text(sum);
	
}



var IMP = window.IMP;
IMP.init("imp46720743");

function requestPay(goodsNo, goodsCount) {
	
	var goodsNo = goodsNo;
	var goodsCount = goodsCount;
	var goodsPrice = $("#gPrice").text();
	
	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post"); 
	form.setAttribute("action", "orderComplete1.or"); 
	
	hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "goodsNo");
	hiddenField.setAttribute("value", goodsNo);
	form.appendChild(hiddenField);
	
	hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "goodsPrice");
	hiddenField.setAttribute("value", goodsPrice);
	form.appendChild(hiddenField);
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "goodsCount");
	hiddenField.setAttribute("value", goodsCount);
	form.appendChild(hiddenField);
	
	form.appendChild(hiddenField);
	
	document.body.appendChild(form);
	
	
	
	
	

	//merchan_uid는 고유번호를 따야하므로 결제시 시간으로함
	var today = new Date();   
	var year = today.getFullYear();
	var month = today.getMonth();
	var date = today.getDate();
	var hours = ('0' + today.getHours()).slice(-2); 
	var minutes = ('0' + today.getMinutes()).slice(-2);
	var seconds = ('0' + today.getSeconds()).slice(-2); 

	var paydate = "sa-"+year+month+date+hours+ minutes+ seconds;
	
	
    // IMP.request_pay(param, callback) 결제창 호출
       IMP.request_pay({ // param
    	
        pg: "html5_inicis.INIpayTest",
        pay_method: "card",
        merchant_uid: paydate,
        name: "Sachet 상품 구매",
        amount: "150",
        buyer_email: '${m.email }',
        buyer_name: '${m.userName }',
        buyer_tel: '${m.phone}'
    }, 
    
    function (rsp) { // callback
        if (rsp.success) {
        	
        	form.submit();
        	
        	
        } else {
            // 결제 실패 시 로직,
        	 alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
        }
    });

        	 
        	 

}
</script>
</html>