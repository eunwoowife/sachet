<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html>
<head>
	<title>Medialoot CSS Calendar Template</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<style>
		@import url("https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700");
		
		
		.outerarea{
		  width: 70%;
        margin-left: 280px;
        margin-top: 300px;
		
		}
	    .steparea{
        text-align: center;
        margin-top: 50px;
        margin-bottom: 100px;
    }


    .steparea span{
        margin-left: 10px;
        margin-right: 10px;

    }	
		
body.ml-calendar-demo {
  padding: 60px 20px;

  }

.ml-calendar {
  background: #fff;
  color: #2d2e2f;
  font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 300;
  max-width: 940px;
  margin: 0 auto;
  box-shadow: 0px 15px 25px rgba(0, 0, 0, 0.1);
  border-radius: 1em;
  		margin-top: 200px;
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
    font-size: 1rem;
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
			
		  }
		  
		#ticketing{
			font-size: 1.1rem;
			margin-top: 20px;
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
			background-color:#e4e4e4;
			border-radius: 100px;
			border: none;
			width: 220px;
			height: 30px;
			font-size: 1em;
		}

		#ticketSubmit:hover:enabled{
			background-color: #525355;
			color: white;
			text-decoration: wavy;
		}
		
		

		

  .ml-calendar .clear {
    clear: both; }
    
        #title{
        font-size: 35px;
        margin-bottom: 60px;
        text-align: center;
    }
	</style>
	
</head>

<jsp:include page="../common/header.jsp" />


<div class="outerarea"> 

  <div id="title"> 

            	관람권 예매

        </div>


 <div class="steparea">
            <span class="step1">
            setp1 이용 약관 동의
            </span>

            <span class="step2">
                setp2 날짜/인원수 선택
            </span>
    
            <span class="step1">
                setp3 결제
            </span>
    

        </div>

<body class="ml-calendar-demo">
	<div class="ml-calendar">
		<section class="calendar-left">
			<div class="sidebar">
				<p class="subheading">Sachet</p>
					<div id="ticketing">
					
					<span style="font-size: 15px;">
					성인: ￦20,000 <br/>
					아동: ￦8,000 <br/>
					무료: 증빙서류 필참<br/><br/>

					</span>
					<hr>
					<br/>
					<span id="selectDay"> <b>날짜를 선택해주세요 </b></span>
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
			<button type="button" id="ticketSubmit" disabled> 예매하기 </button>

			</div>


		</section>
		<section class="calendar-right">
			<div class="calendar">
				<section class="calendar-header">
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



		</script>
</body>
</html>