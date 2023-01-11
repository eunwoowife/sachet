<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!doctype html>
<html>
<head>
<title>SACHET</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon-2.ico" />

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	
	<!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/demo.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="${pageContext.request.contextPath}/resources/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${pageContext.request.contextPath}/resources/js/config.js"></script>
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
	
	<style>
		@import url("https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700");
body.ml-calendar-demo {
  padding: 60px 20px;
  margin-bottom: 100px;
  }

.outerArea{

	width: 70%;
	margin-top: 250px;
	position: absolute;
  	left: 50%;
  	transform: translateX(-50%);
  	margin-bottom: 250px;

}
.ml-calendar {
  background: #fff;
  color: #2d2e2f;
  font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 300;
  max-width: 940px;
  box-shadow: 0px 15px 25px rgba(0, 0, 0, 0.1);
  border-radius: 1em;
  width: 1000px; 
	position: absolute;
  	left: 50%;
  	transform: translateX(-50%); 
 }
  .ml-calendar a {
    color: #2d2e2f;
    text-decoration: none; }
    .ml-calendar a:hover {
      color: #73C3E3; }
  .ml-calendar h1 {
    font-size: 2rem;
    font-weight: 600; }
  .ml-calendar h2 {
    font-size: 2rem;
    font-weight: 300; }
    .ml-calendar h2 strong {
      font-weight: 600; }
  .ml-calendar .subheading {
    text-transform: uppercase;
    font-weight: 400;
    letter-spacing: 2px;
    margin-bottom: -10px;
    font-size: 2rem;
    color: #73C3E3; }
  .ml-calendar .calendar-btn {
    background: #ececec;
    display: block;
    color: #000;
    padding: 8px 10px;
    border-radius: .5rem;
    font-weight: 600; }
    .ml-calendar .calendar-btn i {
      margin: 0 5px; }
  .ml-calendar .primary-color {
    color: #73C3E3; }
  .ml-calendar section.calendar-left {
    width: 30%;
    float: left;
    background-color: #f9f9f9;
    box-shadow: 1px 0px 0px #ececec;
    border-top-left-radius: 1em;
    border-bottom-left-radius: 1em;
    min-height: 520px; }
    @media screen and (max-width: 760px) {
      .ml-calendar section.calendar-left {
        width: 100%;
        border-bottom-left-radius: 0;
        border-top-right-radius: 1em; } }
    .ml-calendar section.calendar-left .sidebar {
      padding: 20px 30px; }
  .ml-calendar section.calendar-right {
    width: 70%;
    float: right; }
    @media screen and (max-width: 760px) {
      .ml-calendar section.calendar-right {
        width: 100%; } }
    .ml-calendar section.calendar-right .calendar {
      padding: 20px 30px;
      position: relative; }
      .ml-calendar section.calendar-right .calendar .calendar-nav {
        text-align: right;
        position: absolute;
        top: 52px;
        right: 30px;
        font-weight: 500; }
        .ml-calendar section.calendar-right .calendar {
          border: 1px solid #ececec;
          padding: .5rem .75rem;
          margin-left: -1px; }
        @media screen and (max-width: 760px) {
          .ml-calendar section.calendar-right .calendar {
            position: static;
            text-align: left;
            margin: -10px 0 20px 0; } }
      .ml-calendar section.calendar-right .calendar .calendar-row {
        display: flex;
        flex: 1 1 0; }
      .ml-calendar section.calendar-right .calendar .calendar-day {
        width: 100%;
        padding: .5rem .5rem;
        min-height: 3.2em;
        text-align: right;
        border: 1px solid #ececec;
        margin: -1px 0 0 -1px; }
        .ml-calendar section.calendar-right .calendar .calendar-day.day-name {
          min-height: 0;
          border: none; }
        .ml-calendar section.calendar-right .calendar .calendar-day .calendar-date {
          color: rgb(187, 187, 187);
          font-size: 1.25rem;
          font-weight: 600; }
        .ml-calendar section.calendar-right .calendar .calendar-day:hover .calendar-date {
          cursor:default }
        .ml-calendar section.calendar-right .calendar .calendar-day.inactive .calendar-date {
          color: #999;
          font-weight: 300; }
        .ml-calendar section.calendar-right .calendar .calendar-day.active .calendar-date {
          color: #ffffff; }
        .ml-calendar section.calendar-right .calendar .calendar-day.weekend {
          background: #f9f9f9; }

		.calendar-day.active{
			background-color: #88C9E8;
			opacity: 70%;

		  }
		.calendar-day.active:hover{
			cursor:pointer;
			background-color: gray;
			transition-duration :0.5s;
			
		  }
		  
		  .calendar-day.active:active{
			cursor:pointer;
			transition-duration :0.2s;
			background-color: blue;
			
		  }
		  
		  .calendar-day.active:focus{
			cursor:pointer;
			background-color: skyblue;
			
		  }
		  
		#ticketing{
			font-size: 1.1rem;
		} 
		
		.countbox{
			width: 15px;
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


		#ticketSubmit{
			width: 200px;
			height: 50px;
			font-size: 1em;
	}
		
		.stepArea{
		  position: absolute;
 		 left: 50%;
 		 transform: translateX(-50%);
 		 margin-top: 150px;
		}
		
		.stepArea img{
		  width: 500px;
		}


  	.ml-calendar .clear {
    clear: both; 
    }
	</style>
	
</head>
<jsp:include page="../common/header.jsp" />
<body>

<div class="ml-calendar-demo">

		<div class="stepArea">
		<img src="${pageContext.request.contextPath}/resources/images/ticket-step1.png">
		</div>

<div class ="outerArea">
	<div class="ml-calendar">
		<section class="calendar-left">
			<div class="sidebar">
				<p class="subheading">Sachet</p>
					<div id="ticketing">
					
					<span style="font-size: 15px;">
					<br>
					성인: ￦20,000 <br/>
					아동: ￦8,000 <br/>
					무료: 증빙서류 필참<br/><br/>

					</span>
					<hr>
					<br/>
					<span id="selectDay" > <b>날짜를 선택해주세요 </b></span>
					<br><br>

					<div id="counting">
						
						<div> 
							성인: <button class="counting" onclick="adultCount(1);"> - </button>
							<input type="text" class="countbox" id="adultCount" value="1" disabled >
							<button class="counting" onclick="adultCount(2);"> + </button>
						</div>
						<div>
							아동: <button class="counting" onclick="kidsCount(1);"> - </button>
							<input type="text" class="countbox" id="kidsCount" value="0" disabled>
							<button class="counting" onclick="kidsCount(2);"> + </button> 
						</div>
						<div>
							무료: <button class="counting" onclick="freeCount(1);"> - </button>
							<input type="text" class="countbox" id="freeCount" value="0" disabled>
							<button class="counting" onclick="freeCount(2);"> + </button> 
						</div>
					
					<br>
					</div>
					
					<span> 합계: </span>  ￦ <span id="totalSum"> 20,000 </span>
					<br><br>
			</div>
			<button type="submit" id="ticketSubmit" class="btn btn-info" disabled onclick="book2();"> 예매하기 </button>

			</div>


		</section>
		<section class="calendar-right">
			<div class="calendar">
				<section class="calendar-header">
				<br><br>
					<h2><strong>January</strong> 2023</h2>
				</section>
				<section class="calendar-row">
					<div class="calendar-day day-name">Sun</div>
					<div class="calendar-day day-name">Mon</div>
					<div class="calendar-day day-name">Tue</div>
					<div class="calendar-day day-name">Wed</div>
					<div class="calendar-day day-name">Thu</div>
					<div class="calendar-day day-name">Fri</div>
					<div class="calendar-day day-name">Sat</div>
				</section>
				<section class="calendar-row">
					<div class="calendar-day">
						<span class="calendar-date">1</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">2</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">3</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">4</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">5</span>
					</div>
					<div class="calendar-day weekend">
						<span class="calendar-date">6</span>
					</div>
					<div class="calendar-day weekend">
						<span class="calendar-date">7</span>
					</div>
				</section>
				<section class="calendar-row">
					<div class="calendar-day">
						<span class="calendar-date">8</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">9</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">10</span>
					</div>
					<div class="calendar-day active" onclick="changeDate(11);">
						<span class="calendar-date">11</span>
					</div>
					<div class="calendar-day active" onclick="changeDate(12);">
						<span class="calendar-date" >12</span>
					</div>
					<div class="calendar-day active" onclick="changeDate(13);">
						<span class="calendar-date ">13</span>
					</div>
					<div class="calendar-day weekend">
						<span class="calendar-date">14</span>
					</div>
				</section>
				<section class="calendar-row">
					<div class="calendar-day">
						<span class="calendar-date">15</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">16</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">17</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">18</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">19</span>
					</div>
					<div class="calendar-day weekend">
						<span class="calendar-date">20</span>
					</div>
					<div class="calendar-day weekend">
						<span class="calendar-date">21</span>
					</div>
				</section>
				<section class="calendar-row">
					<div class="calendar-day">
						<span class="calendar-date">22</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">23</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">24</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">25</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">26</span>
					</div>
					<div class="calendar-day weekend">
						<span class="calendar-date">27</span>
					</div>
					<div class="calendar-day weekend">
						<span class="calendar-date">28</span>
					</div>
				</section>
				<section class="calendar-row">
					<div class="calendar-day">
						<span class="calendar-date">29</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">30</span>
					</div>
					<div class="calendar-day">
						<span class="calendar-date">31</span>
					</div>
					<div class="calendar-day inactive">
						<span class="calendar-date">1</span>
					</div>
					<div class="calendar-day inactive">
						<span class="calendar-date">2</span>
					</div>
					<div class="calendar-day weekend inactive">
						<span class="calendar-date">3</span>
					</div>
					<div class="calendar-day weekend inactive">
						<span class="calendar-date">4</span>
					</div>
				</section>
			</div>
		</section>
		<div class="clear"></div>
</div>
</div>

</div>
		<script>

			function adultCount(result){
				var count = parseInt($("#adultCount").val());

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
				$("#adultCount").val(count);
				priceCal();
			}

			function kidsCount(result){
				var count = parseInt($("#kidsCount").val());

				if(result==1){
					count--;
					if(count<1){
						count=0;
					}
				}else{
				    count++;
					if(count>10){
               		 count=10;
            		}
				}
				$("#kidsCount").val(count);
				priceCal();
			}

			function freeCount(result){
				var count = parseInt($("#freeCount").val());

				if(result==1){
					count--;
					if(count<1){
						count=0;
					}
				}else{
				    count++;
					if(count>10){
               		 count=10;
            		}
				}
				$("#freeCount").val(count);
			}


			function priceCal(){

				var adultPrice = 20000;
				var kidsPrice = 8000;

				var total = (adultPrice*parseInt($("#adultCount").val())) + (kidsPrice*parseInt($("#kidsCount").val()));
                var totalPriceComma = (total).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				$("#totalSum").text(totalPriceComma);
			}


			function changeDate(result){

				var date= result;
				var totaldate = "2023-01-"+result;
				
				$("#selectDay").html("<b>"+totaldate+"</b>");
				$("#ticketSubmit").removeAttr("disabled");
			}

			function book2(){
				

			    <c:if test="${not empty loginUser }">
			    
					const loginUser = '${loginUser.userNo}';				
					if(loginUser>1000){
						var bookDate = $("#selectDay").text();
						var adultCount = $("#adultCount").val();
						var kidsCount = $("#kidsCount").val();
						var freeCount = $("#freeCount").val();
						const date = new Date();
													    		       	
						var form = document.createElement("form");
						form.setAttribute("charset", "UTF-8");
						form.setAttribute("method", "Post"); 
						form.setAttribute("action", "ticketBook2.ti"); 
						
						var hiddenField = document.createElement("input");
						hiddenField.setAttribute("type", "hidden");
						hiddenField.setAttribute("name", "bookDate");
						hiddenField.setAttribute("value",bookDate);
						form.appendChild(hiddenField);
										         
						hiddenField = document.createElement("input");
						hiddenField.setAttribute("type", "hidden");
						hiddenField.setAttribute("name", "adultCount");
						hiddenField.setAttribute("value", adultCount);
						form.appendChild(hiddenField);
						
						hiddenField = document.createElement("input");
						hiddenField.setAttribute("type", "hidden");
						hiddenField.setAttribute("name", "kidsCount");
						hiddenField.setAttribute("value", kidsCount);
						form.appendChild(hiddenField);
						
						hiddenField = document.createElement("input");
						hiddenField.setAttribute("type", "hidden");
						hiddenField.setAttribute("name", "freeCount");
						hiddenField.setAttribute("value", freeCount);
						form.appendChild(hiddenField);
						
						hiddenField = document.createElement("input");
						hiddenField.setAttribute("type", "hidden");
						hiddenField.setAttribute("name", "bookingtime");
						hiddenField.setAttribute("value", date.toLocaleString());
						form.appendChild(hiddenField);
						
						
						document.body.appendChild(form);
										         
						form.submit();
					}else if(loginUser<1000){
						window.alert("회원 로그인 후 이용 가능한 서비스입니다.");
						return false;
					}

	     		</c:if>
	     		<c:if test="${empty loginUser }">
	     			alert("회원 로그인 후 이용 가능한 서비스입니다.");
	 			</c:if>
	     		
				
				    	
				    }
				


		</script>

<br><br><br><br><br><br><br><br><br>
</body>
</html>