<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>

<title>SACHET</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon-2.ico" />



    <!-- Icons. Uncomment required icon fonts -->
   <link href="${pageContext.request.contextPath}/resources/css/boxicons.css" />
    <!-- Core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/core.css" class="template-customizer-core-css" />
<link href="${pageContext.request.contextPath}/resources/css/theme-default.css" class="template-customizer-theme-css" />
<link href="${pageContext.request.contextPath}/resources/css/demo.css" />
</head>
<style>
    .outerarea{
        width: 70%;
        margin-left: 280px;
        margin-top: 300px;
    }
    #title{
        font-size: 35px;
        margin-bottom: 60px;
        text-align: center;
    }
    .text-class1{
        font-size: 30px;
    }
    .text-class2{
        font-size: 20px;
        margin-top: 50px;
        margin-bottom: 15px;;
    }
    .imgarea{
        text-align: center;
    }
    .buttonarea{
        text-align: center;
        margin-top: 100px;
        margin-bottom: 200px;
    }
        .text-class3 {
            line-height: 2.3em;
        }   
    .text-class2 img{
        width: 30px;
    }
    
    .btn{
    width: 250px;
    height: 50px;
    }
    
    
     
</style>
<body>
<jsp:include page="../common/header.jsp" />    
    
    <div class="outerarea">
        <div id="title"> 
            	관람/티켓 안내
        </div>




        <div class="text-class1">관람 안내</div>
        <div class="imgarea"> <img src="${pageContext.request.contextPath}/resources/images/로고10.png" alt=""></div>
        
         <div class="text-class2">
            <img src="${pageContext.request.contextPath}/resources/images/ticket-info.png"  alt=""> 관람 시간</div>
        
        <div class="text-class3">
            -기간; 2023-01-11 ~ 2023-01-13 (3일간) <br>
            -시간: 10:00 ~ 19:00 <br>
            *입장 마감은 폐관 30분 전까지 입니다. <br>
        </div>
            
        <div class="text-class2">
            <img src="${pageContext.request.contextPath}/resources/images/ticket-info.png" alt=""> 관람 요금</div>
        
        <div class="text-class3">
            -성인: 20,000 <br>
            -아동(만 6세): 8,000 <br>
            -무료: : 65세 이상 노약자, 장애인 및 동반1인, 국가유공자(본인) (신분증 소지자에 한함) <br>
            *아동 및 무료 입장 참가자는 증빙서류를 필참해야 합니다. <br>
        </div>    
        <div class="text-class2">
            <img src="${pageContext.request.contextPath}/resources/images/ticket-info.png" alt=""> 관람 유의사항
            
        </div>
        
        <div class="text-class3">
            -전시관 내 모든 공간은 금연 구역입니다. <br>
            -전시관 내에 음식물을 반입할 수 없습니다.<br>
            -전시관에 들어가기 전에 휴대 전화는 진동으로 전환하여 다른 관람자를 방해하지 않도록 협조해 주시기 바랍니다. <br>
            -박물관 내 시설과 주변에서는 안전을 위해 바퀴달린 신발, 전동차, 퀵보드를 이용할 수 없습니다. 함께 이용하는 다른 관람객들을 위한 배려를 바랍니다.
        </div>    
        <div class="text-class2">
            <img src="${pageContext.request.contextPath}/resources/images/ticket-info.png" alt=""> 관람요금 환불 안내
            
        </div>
        
        <div class="text-class3">
            -관람 입장시간이 지난 입장권은 환불처리 불가합니다. <br>
            -온라인 예약·결제 취소는 관람일 전일 23:59분까지 가능합니다. <br>
            -현장에서는 관람시작 30분 전까지 취소할 수 있습니다. <br>
            -환불기한: 영업일 기준 3~7일 이내
        </div> 
            
            
        <div class="buttonarea">
            <button class="btn rounded-pill btn-info" onclick="location.href='ticketBook1.ti'">예약하러 가기</button>
        </div>
        
    
    </div>
    
</body>
</html>