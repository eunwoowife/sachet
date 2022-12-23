<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <!-- 사진 확대 스크립트 -->
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/js/lightbox.min.js"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/css/lightbox.min.css">


     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<style>

button {
    margin: 20px;
}

.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}


.w-btn-gra2 {
    background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
    color: white;
}

.w-btn-gra-anim {
    background-size: 400% 400%;
    animation: gradient1 5s ease infinite;
}

@keyframes gradient1 {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

    .prodetailLeft{
       float: left;
       margin-top: 120px;
       width: 800px;

    }

    .productDetailContainer{
        margin-left: 200px;
    }

    .prodetailRight{
        margin-left: 900px;
        position: fixed;
        float: left;
        width: 600px;
        height: 700px;
        margin-top: 180px;
    }
    

    .w-btn-gray {
    background-color: #7bb7df;
    color: #e3dede;
    }

    .w-btn-gray-outline:hover {
    background-color: #a3a1a1;
    color: #e3dede;
}

    .proButtonArea{
        margin-top: 70px;
        margin-left: -20px;
    }

      #productCount>tbody{
        font-size: 15px;
        font-weight: 100;
        line-height: 3rem;
      }


			.countbox{
			width: 25px;
			border: none;
			text-align: center;
		}

		.counting{
			border: none;
			background-color: #e4e4e4;
			width: 18px;
		}

		.counting:hover{
			border: none;
			background-color: #acacac;
			color: #fff;
		}
		
		.wonArea{
			margin-left:150px;
		}
		
    
</style>
<body>

<jsp:include page="../common/header.jsp" />


    <div class="productDetailContainer">
        <div class="prodetailLeft" align="center">
            <a href="http://image.jtbcplus.kr/data/contents/jam_photo/202109/06/f8cd9254-5e56-4fc9-a82a-83d071337a7c.jpg" data-lightbox="example-set">
                <img src="${p.productImgFp }" alt="">
            </a>
            <br><br><br><br>


            <div class="prodetailContent">
                <img src="${pageContext.request.contextPath}/resources/images/ProductNotice.jpg" alt="">
                <br><br><br><br><br><br><br>
            </div>
            
            <div class="prodetailContent2">
<pre >
${p.productDetail}
</pre>
    <br><br><br><br><br><br><br><br><br><br><br><br>

            </div>
            
        </div>
        <div class="prodetailRight">
            <div class="card-body">
                <b style="font-size: 20px;">${p.boothName }</b>
                  <p style="font-size:23px; color: gray;">${p.productName }</p>
               <div class="productPrice">
                   <b style="font-size: 20px; color: rgb(97, 97, 97);">₩<fmt:formatNumber value="${p.productPrice }" type="number"/></b>
               </div>
               <hr width="380px;">
               <button class="counting" onclick="proCount(1);"> - </button>
				<input type="text" class="countbox" id="proCount" value="1" disabled >
				<button class="counting" onclick="proCount(2);"> + </button>
				<br><br>
				
				<span class="totalArea" style="font-weight:bold;">TOTAL </span>
				<span class="wonArea" style="font-weight:bold;">￦</span>
				<span class="totalPriArea" id="totalSum" style="font-weight:bold;"><fmt:formatNumber value="${p.productPrice }" type="number"/></span>

               <div class="proButtonArea">
               <button class="w-btn w-btn-gray" type="button">
                장바구니 담기
                 </button>
                <button class="w-btn w-btn-gra2 w-btn-gra-anim" type="button">
                바로 구매하기
                </button>
                </div>
              </div>
        </div>


        
    </div>

	<script>
		function proCount(result){
			var count = parseInt($("#proCount").val());
	
			if(result==1){
				count--;
				if(count<2){
					count=1;
				}
			}else{
			    count++;
				if(count>${p.productStock}){
	       		 count=${p.productStock};
	    		}
			}
			$("#proCount").val(count);
			priceCal();
		}
		
		function priceCal(){
			
			var proPrice = ${p.productPrice};
			
			var total = (proPrice*parseInt($("#proCount").val()));
		  	var totalPriceComma = (total).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			$("#totalSum").text(totalPriceComma);
		}
	</script>

</body>
</html>