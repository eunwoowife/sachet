<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>CART</title>
</head>
<title>Document</title>
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
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
		background-color:  #858585;
		height: 170px;
		margin-top: 2em;
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
        width: 70%;
	}

	.cartheader{
		display: inline-block;
		color: gray;
		font-weight: bold;
		width: 100%;
		margin-top: 30px;
		margin-bottom: 20px;

	}

	.cartheader1{
		display: inline-block;
		text-align: center;
		color: gray;
		font-weight: bold;
		width: 100%;
	}

	.thumbnail{
		width: 70px;
		margin-top: 30px;
	}

	.thumbnail img{
		width: 50px;
		height: 50px;
	}

	.productDetail{
		width: 300px;

	}

	.productCount{
		width: 100px;
	}

	.productPrice{
		width: 100px;
	}

	.productSelectPrice{
		width: 120px;
	}


	.productbtnarea{
		width: 150px;
	}

	
	.productRow{
		text-align: center;
		width: 100%;
		height: 150px;
	}

	.productRow div{
		vertical-align:middle;
		font-weight: normal;
	}


	.productCinfo{
		font-size: 14px;
		float: left;
		display: block;
		color : rgb(87, 143, 177);
	}

	.productName{
        display: inline-block;
        text-align: left;    
		font-size: 14px;
		display: block;


	}



	.pCount:disabled{
		border: none;
		text-align: center;
		width: 30px;
		color: black;
		background-color: white
	}

	input[type="number"]::-webkit-outer-spin-button,
	input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
	}
	input[type="number"]{
		border: none;
		width: 100%;
		text-align: center;
		background-color: white;
		color: black;
	}

	.pbtn{
		border-radius: 5px;
		border: 1px solid #a8a8a8;
		width: 100px;
		font-size: 0.8em;
        cursor: pointer;
        background-color: rgb(255, 255, 255);

	}

    .pbtn:hover{
        color: aliceblue;
        background-color:  #cecece;
        transition: 0.3s;

	}

    

	.countbtn{
		border: none;
		background-color: rgb(231, 231, 231);
		text-align: center;
		display: inline-block;
		width: 20px;
		height: 30px;
		cursor: pointer;
	}

	.countbtn:hover{
		color: white;
		background-color: rgb(128, 128, 128);

	}


	.payarea{
		display: inline-block;
		width: 25%;
		border-radius: 0;
		margin-top: 80px;
		background-color: white;
		margin-left: 10px;
		position: sticky;
        vertical-align:top;
		margin-top: 50px;
		position:sticky;

	}


	.listtitle{
		display: inline-block;
		margin-top: 10px;
	}

	.hr1{
		background-color: rgb(114, 114, 114);
		height: 1px;
		border: 0;
	}


	.paymentarea{
		padding: 10px;
        border: 2px solid #666666;
        border-radius: 10px;
                 

		
	}

	.payText{
		font-size: 1.8em;
		margin-top: 10px;
		margin-bottom: 1em;
	}
	

	.totalPrice{
		display: inline-block;
		margin-top: 10px;
		font-size: 1.3em;
	}

	.count{
		float: right;
		margin-right: 10px;
		
	}

	.payNoticeArea{
		margin-top: 30px;
		margin-bottom: 20px;
		border: 1px solid gray;
		padding: 10px;
        font-size: 0.8em;

	}

	.totalPrice2{
		font-size: 2em;
	}


	.paybtnArea{
		margin-top: 80px;
		display: block;
		text-align: center;
	}

	.hh{
		margin: 0;
	}

    .cartbtn{
        height: 30px;
        width: 130px;
    }

    .lastbtn{
        width: 100%;
        height: 50px;
        font-size: 20px;
        background-color:  #a8a8a8;
        color: white;
    }

    .lastbtn:hover{
        width: 100%;
        height: 50px;
        font-size: 20px;
        background-color:  #686868;
        color: white;
	
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
				<span class="stepTitle">주문결제</span>	
			</span>
			<span class="step three">
				step 03<br>
				<span class="stepTitle">주문완료</span>	
			</span>
		</div>

		<div class="listarea">
		
			
			
			<div class="productarea">
				<span class="listtitle" >장바구니 목록</span>

				<hr style="height: 2px; background-color: black; border: none;">

				<div class="cartheader1">
					<div class="cartheader hh thumbnail"></div>
					<div class="cartheader hh productDetail">상품 정보</div>
					<div class="cartheader hh productPrice">상품 금액</div>
					<div class="cartheader hh productCount">상품 개수</div>
					<div class="cartheader hh productSelectPrice">주문금액</div>
					<div class="cartheader hh productbtnarea">버튼영역</div>
				</div>
				<hr style="background-color: gray;">



                

<c:forEach var="c" items="${c}">
				<div class="productRow">

					<input type="hidden" value="3">

					<div class="cartheader thumbnail"> <img src="https://mblogthumb-phinf.pstatic.net/20160817_259/retspe_14714118890125sC2j_PNG/%C7%C7%C4%AB%C3%F2_%281%29.png?type=w800" alt=""></div>
					<div class="cartheader productDetail">
						<div class="productCinfo">[수령 상품] ${c.boothName}</div> <br>
						<div class="productName">${c.goodsName }</div>
					</div>
					<div class="cartheader productPrice" id="pPrice${c.goodsNo}">${c.goodsPrice }</div>
					<div class="cartheader productCount">
					<input type="button" class="countbtn" value="-" onclick="pCount(1, ${c.goodsNo})">	
					<input type="number" name="pCount" class="pCount" value="${c.goodsCount}" id="ppCount${c.goodsNo}" disabled>
					<input type="button" class="countbtn" value="+" onclick="pCount(2, ${c.goodsNo})">
					</div>
					<div class="cartheader productSelectPrice"><input type="number" value="40000" id="psPrice${c.goodsNo}" class="sump" disabled></div>
					<div class="cartheader productbtnarea">
						<input type="button" class="pbtn selOderBtn" id="spayment${c.goodsNo}" value="주문하기">
						<input type="button" class="pbtn selWishBtn" id="swish${c.goodsNo}" value="위시리스트">
						<input type="button" class="pbtn selDelBtn" id="sdelete${c.goodsNo}"value="삭제하기">
					</div>

					<hr class="hr1">

				</div>
				
				
</c:forEach>			
				


				
				
				
				
				
				

				<div class="cartbtnarea">
                    <input type="button" class="pbtn cartbtn" value="돌아가기">
					<input type="button" class="pbtn cartbtn" value="장바구니 비우기">
				</div>
			

			</div>

			<div class="payarea">


				<div class="paymentarea">

					<div class="payText">
						결제 예정 금액
					</div>
					<div class="totalPrice T">
						상품금액
					</div>
					<div class="totalPrice count" id="totalPrice">
						120000 원
					</div>
					<br>


					<div class="totalPrice T">
						체험금액
					</div>
					<div class="totalPrice count">
						120000 원
					</div>

					<div class="payNoticeArea">
                        ◎ 체험 상품의 경우 예약 시간의 10분 전 대기하실 것을 권장드립니다. <br><br>
                        ◎ 상품 수령 시간 및 미수령 상품에 관해서는 각 부스에 문의 해주십시오. <br><br>
						◎ Sachet 주최측은 결제 대행 시스템만 제공하므로 자세한 상품 설명 및 교환/환불 약관은 각 기업의 설명을 참고하시기 바랍니다. <br>


					</div>

					<div class="totalPrice2">
						합계
					</div>
					<div class="totalPrice2 count" id="totalPrice0">
						20000 원
					</div>
					
					<div class="paybtnArea">
					<input type="button" class="pbtn lastbtn" value="결제하기">
					</div>



				</div>

			</div>
			

			<br><br>
		</div>



    </div>
	</div>
	
</body>


<script>
//윈도우 온로드용 함수






//상품 수량 변경

function pCount(result, pnum) {
	var count = $('#ppCount'+pnum).val();
	
	console.log("1은 빼기, 2는 더하기인 리절트 값: "+result);
	console.log("상품 넘버"+pnum);
	

	if(result==1){
		count--;
		if(count<2){
			count=1;
		}
	}else{
		count++;
		if(count>10){
            count=10;
        }
	}
	console.log("상품 수량"+count);

	$('#ppCount'+pnum).val(count);
	onePriceCal(count, pnum);

}




//개별 삭제


//전체 삭제


//선택 삭제




//재계산


	//개별수량변경에 따른 계산
	function onePriceCal(count, pnum){

	var onePrice = $('#pPrice'+pnum).text();

	selectP = count*onePrice;

	$('#psPrice'+pnum).val(selectP);

	totalPriceCal();
}

	//토탈계{산알먼아ㅣ러먀ㅣㄴ ㄷ아ㅓ사ㅣ;ㅂ덪4ㄱ시ㅏ;ㅓㅂ34디ㅑ;ㅓㅅ ㅑㅐ}

	function totalPriceCal(){

		
		var sum=0;

		$('.sump').each(function(){
			sum += parseInt($(this).val()); 
			console.log("토탈썸"+sum);
		});

		sum+=" 원";

		$("#totalPrice").text(sum);

		$("#totalPrice0").text(sum);


	}










//상품 개별 주문

//상품 위시 리스트


//선택 구매


//전체 구매
</script>
</html>