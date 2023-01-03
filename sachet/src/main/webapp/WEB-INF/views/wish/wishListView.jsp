<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>가보자고t</title>
</head>
<title>Document</title>
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">    
<style>

@import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    
    *{
    	font-family: 'IBM Plex Sans KR', sans-serif;
    }


	.outerarea{
		width: 70%;
		margin-left: 300px;
	}

	.steparea{
		background-color: gray;
		height: 170px;
		margin-top: 2em;
	}

	.step {
		margin-top: 70px;
		display: inline-block;
		color: aliceblue;
		font-size: 1.2em;
		padding-left: 3.5em;
	}

	.stepTitle{
		font-size: 2em;
	}
	

	.productarea{
		margin-left: 25px;
		display: inline-block;
		background-color: white;
		padding: 20px;
		vertical-align:top;
		margin-top: 10px;
	}

	.cartheader{
		display: inline-block;
		text-align: center;
		color: gray;
		font-weight: bold;
		width: 100%;
		padding-inline-start: 10px;
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

	.checkarea{
		width: 30px;
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
		align-items: center;
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
		float: left;
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
		border-radius: 0;
		border: 1px solid gray;
		width: 100px;
		font-size: 0.8em;

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

	input[type=checkbox]{
		width:17px;
		height:17px;
		border:2px solid #F47C7C;
		border-radius: 4px;
		vertical-align:middle;
	}


	.payarea{
		display: inline-block;
		width: 25%;
		border-radius: 0;
		margin-top: 80px;
		background-color: white;
		margin-left: 10px;
		 position: sticky;

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

	.payarea{
		vertical-align:top;
		margin-top: 50px;
		width: 18%;
		position: fixed; 
	}


	.paymentarea{
		padding: 10px;
		
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

	








</style>
<body>

	<div class="outerarea">

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

				<hr style="height: 2px; background-color: black;">

				<div class="cartheader1">

					<div class="cartheader hh  checkarea"> <input type="checkbox" name="allCheckbox" id=""  onclick='selectAll(this)' checked> </div>
					<div class="cartheader hh thumbnail"></div>
					<div class="cartheader hh productDetail">상품 정보</div>
					<div class="cartheader hh productPrice">상품 금액</div>
					<div class="cartheader hh productCount">상품 개수</div>
					<div class="cartheader hh productSelectPrice">주문금액</div>
					<div class="cartheader hh productbtnarea">버튼영역</div>
				</div>
				<hr style="background-color: gray;">



				<div class="productRow">
					<input type="hidden" value="1">

					<div class="cartheader checkarea"> <input type="checkbox" name="allCheckbox" id="" checked> </div>
					<div class="cartheader thumbnail"> <img src="https://mblogthumb-phinf.pstatic.net/20160817_259/retspe_14714118890125sC2j_PNG/%C7%C7%C4%AB%C3%F2_%281%29.png?type=w800" alt=""></div>
					<div class="cartheader productDetail">
						<div class="productCinfo">[수령 상품] 조말론 - 말론조</div> <br>
						<div class="productName">타타</div>
					</div>
					<div class="cartheader productPrice" id="pPrice1">20000</div>
					<div class="cartheader productCount">
					<input type="button" class="countbtn" value="-" onclick="pCount(1, 1)">	
					<input type="number" name="pCount" class="pCount" value="2" id="ppCount1" disabled>
					<input type="button" class="countbtn" value="+" onclick="pCount(2, 1)">
					</div>
					<div class="cartheader productSelectPrice"> <input type="number" value="40000" id="psPrice1" class="sump" disabled></div>
					<div class="cartheader productbtnarea">
						<input type="button" class="pbtn" id="spayment1" value="주문하기">
						<input type="button" class="pbtn" id="swish1" value="위시리스트">
						<input type="button" class="pbtn" id="sdelete1"value="삭제하기">
					</div>

					<hr class="hr1">

				</div>



				<div class="productRow">

					<input type="hidden" value="2">


					<div class="cartheader checkarea"> <input type="checkbox" name="allCheckbox" id="" checked> </div>
					<div class="cartheader thumbnail"> <img src="https://mblogthumb-phinf.pstatic.net/20160817_259/retspe_14714118890125sC2j_PNG/%C7%C7%C4%AB%C3%F2_%281%29.png?type=w800" alt=""></div>
					<div class="cartheader productDetail">
						<div class="productCinfo">[수령 상품] 조말론 - 말론조</div> <br>
						<div class="productName">타타</div>
					</div>
					<div class="cartheader productPrice" id="pPrice2">80000</div>
					<div class="cartheader productCount">
					<input type="button" class="countbtn" value="-" onclick="pCount(1, 2)">	
					<input type="number" name="pCount" class="pCount" value="2" id="ppCount2" disabled>
					<input type="button" class="countbtn" value="+" onclick="pCount(2, 2)">
					</div>
					<div class="cartheader productSelectPrice"><input type="number" value="40000" id="psPrice2" class="sump" disabled></div>
					<div class="cartheader productbtnarea">
						<input type="button" class="pbtn" id="spayment2" value="주문하기">
						<input type="button" class="pbtn" id="swish2" value="위시리스트">
						<input type="button" class="pbtn" id="sdelete2"value="삭제하기">
					</div>

					<hr class="hr1">

				</div>




				<div class="productRow">

					<input type="hidden" value="3">

					<div class="cartheader checkarea"> <input type="checkbox" name="allCheckbox" id="" checked> </div>
					<div class="cartheader thumbnail"> <img src="https://mblogthumb-phinf.pstatic.net/20160817_259/retspe_14714118890125sC2j_PNG/%C7%C7%C4%AB%C3%F2_%281%29.png?type=w800" alt=""></div>
					<div class="cartheader productDetail">
						<div class="productCinfo">[수령 상품] 조말론 - 말론조</div> <br>
						<div class="productName">타타</div>
					</div>
					<div class="cartheader productPrice" id="pPrice3">35000</div>
					<div class="cartheader productCount">
					<input type="button" class="countbtn" value="-" onclick="pCount(1, 3)">	
					<input type="number" name="pCount" class="pCount" value="2" disabled id="ppCount3">
					<input type="button" class="countbtn" value="+" onclick="pCount(2, 3)">
					</div>
					<div class="cartheader productSelectPrice"><input type="number" value="40000" id="psPrice3" class="sump" disabled></div>
					<div class="cartheader productbtnarea">
						<input type="button" class="pbtn" id="spayment3" value="주문하기">
						<input type="button" class="pbtn" id="swish3" value="위시리스트">
						<input type="button" class="pbtn" id="sdelete3"value="삭제하기">
					</div>

					<hr class="hr1">

				</div>

				<div class="cartbtnarea">
					<input type="button" value="선택 삭제">
					<input type="button" value="장바구니 비우기">
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
						체험상품의경우 어쩌구저쩌구<br>
						수령방식의 경우 저쩌구어쩌구<br>
						체험상품의경우 어쩌구저쩌구<br>
						수령방식의 경우 저쩌구어쩌구<br>
						체험상품의경우 어쩌구저쩌구<br>
						수령방식의 경우 저쩌구어쩌구<br>

					</div>

					<div class="totalPrice2">
						합계
					</div>
					<div class="totalPrice2 count" id="totalPrice0">
						20000 원
					</div>
					
					<div class="paybtnArea">
					<input type="button" value="선택 구매">
					<input type="button" value="전체 구매">
					</div>



				</div>



			</div>
			

			



			<br><br>
		</div>

	</div>
	
</body>
</html>

<script>
//윈도우 온로드용 함수




//ALL 체크

function selectAll(selectAll)  {
  const checkboxes 
       = document.getElementsByName('allCheckbox');
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked;
  })
}


//상품 수량 변경

function pCount(result, pnum) {
	var count = $('#ppCount'+pnum).val();

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

	$('#ppCount'+pnum).val(count);
	onePriceCal(count, pnum);

}




//개별 삭제


//전체 삭제


//선택 삭제




//재계산


	//개별개산
	function onePriceCal(count, pnum){

	var onePrice = $('#pPrice'+pnum).text();

	selectP = count*onePrice;

	$('#psPrice'+pnum).val(selectP);

	totalPriceCal();

	//토탈계{산알먼아ㅣ러먀ㅣㄴ ㄷ아ㅓ사ㅣ;ㅂ덪4ㄱ시ㅏ;ㅓㅂ34디ㅑ;ㅓㅅ ㅑㅐ}

	function totalPriceCal(){

		// this.totalCount = 0;
        // this.totalPrice = 0;
        // document.querySelectorAll(".pCount").forEach(function (item) {

		// 	console.log(item);

        //     if(item.parentElement.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.checked == true){
        //         var count = parseInt(item.getAttribute('value'));
        //         this.totalCount += count;

        //         var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
        //         this.totalPrice += count * price;
        //     }
        // }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg

		
		var sum=0;

		$('.sump').each(function(){ //클래스가 money인 항목의 갯수만큼 진행
			sum += parseInt($(this).val()); 
			console.log(sum);
		});

		sum+=" 원";

		$("#totalPrice").text(sum);

		$("#totalPrice0").text(sum);


	}






}




//상품 개별 주문

//상품 위시 리스트


//선택 구매


//전체 구매
</script>