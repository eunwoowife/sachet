<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>
<style>

.outerarea{
    width: 70%;
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
}
.centerarea{
    width: 1100px;
      margin: 0 auto;
}
.confirm{
    margin-top: 200px;
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 70px;
    padding-left: 20px;
}
.confirmTitle{
    height: 100px;
    border-bottom: 1.5px solid gray;
    border-top: 2px solid black;
}
.confirm tr,td{
    border-bottom: 0.05em solid gray;
    height: 30px;
    padding-left: 20px;
}
.confirm-th{
    font-weight: bold;
    width: 10%;
}
.confirm-td{
    width: 40%;
}
.people {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 70px;
    text-align: center;
    border-top: 0.1em solid black;
    border-bottom: 0.1em solid black;
}
.people tr,td{
    border-bottom: 0.05em solid gray;
    height: 30px;
    padding-left: 20px;
}
.people th{
    font-weight: bold;
    background-color: rgb(227, 227, 227);
    height: 35px;
    padding-left: 20px;
}
.people td{
  width: 25%;
}
.checkboxarea{
    margin-top: 20px;
}
#agree{
    width: 15px;
    height: 15px;
    vertical-align:-3px;
}
.btnarea{
    text-align: center;
    margin-top: 100px;
    margin-bottom: 100px;
}
.btn{
    width: 100px;
    height: 30px;
    background-color:white
    border: none;
    cursor: pointer;
}
.btn:hover{
width: 100px;
height: 30px;
background-color: rgb(193, 205, 224);
border: none;
}
</style>
<body>
<jsp:include page="../common/header.jsp" />

    <div class="outerarea">
    <div class="centerarea">
    <table class="confirm">
        <thead>
          <tr>
            <th colspan="4" class="confirmTitle"><h2>예매 확인</h2></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="confirm-th">관람일</td>
            <td class="confirm-td">${t.ticketDate}</td>
            <td class="confirm-th">관람 시간</td>
            <td class="confirm-td">10:00~19:00</td>
          </tr>
          <tr>
            <td class="confirm-th">신청자명</td>
            <td class="confirm-td">${t.userName}</td>
            <td class="confirm-th">이메일</td>
            <td class="confirm-td">${t.email }</td>
          </tr>
          <tr>
            <td class="confirm-th">휴대전화</td>
            <td class="confirm-td">${t.phone}</td>
            <td class="confirm-th">전체 인원</td>
            <td class="confirm-td">${t.totalPeople}명</td>
          </tr>
          <tr>
            <td class="confirm-th">전체요금</td>
            <td colspan="3" class="confirm-td">${t.totalPrice}</td>
          </tr>
          <tr>
            <td class="confirm-th">진행 상태</td>
            <td colspan="3" class="confirm-td">결제 전</td>
          </tr>
        </tbody>
        </table>
        <span class="peopleTitle"><h3>예약 인원</h3></span>
        <table class="people">
            <thead>
              <tr>
                <th>대상</th>
                <th>요금</th>
                <th>인원</th>
                <th>비고</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>성인</td>
                <td>20,000</td>
                <td>${t.ticketAdult}명</td>
                <td></td>
              </tr>
              <tr>
                <td>아동</td>
                <td>8,000</td>
                <td>${t.ticketKid}명</td>
                <td>만 6세 미만</td>
              </tr>
              <tr>
                <td>무료</td>
                <td>0</td>
                <td>${t.ticketFree}명</td>
                <td>증빙서류 필참</td>
              </tr>
            </tbody>
            </table>
            <span class="peopleTitle"><h3>개인정보 수집 이용에 대한 동의</h3></span>
            <span class="textarea" >
                Sachet:2023 국제 향수 박람회 예약을 위하여 아래와 같이 개인정보를 수집‧이용 및 제공하고자 합니다. <br>
                내용을 자세히 읽으신 후 동의 여부를 결정하여 주십시오.
                <BR>
                <BR>
            </span>
            <table class="people" style="margin-bottom: 20px;">
                <thead>
                  <tr>
                    <th>항목</th>
                    <th>수집목적</th>
                    <th>보유기간</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>이름, 휴대전화</td>
                    <td>박람회 관람 예약자 확인</td>
                    <td>이용일로부터 30일간</td>
                  </tr>
                </tbody>
            </table>
            <span class="textarea" >
                ※ 위의 개인정보 처리에 대한 동의를 거부할 권리가 있습니다. <br>
                그러나 동의를 거부할 경우 서비스 이용이 불가능할 수 있음을 알려 드립니다.
            </span>
            <div class="checkboxarea">
            <input type= "checkbox" id="agree" onChange="agreeCh();"> <label>(필수) 동의합니다</label>
            </div>
            <div class="btnarea">
            <button class="btn">취소하기</button>
            <button class="btn" id="submit" disabled onclick="requestPay();">예매하기</button>
            </div>
        </div>
    </div>
    
    
    <a href="ticketBook3.ti">bokk3 </a>
    
    <br><br><br><br><br><br><br><br><br>
    
    <script>

    
    
    
	    function agreeCh() {
			if ($("input:checkbox").is(":checked") == true) {
			  $("#submit").attr("disabled", false);
		  } else {
			  $("#submit").attr("disabled", true);
			 }
	 	  }
	    

	    
	    var IMP = window.IMP;
		IMP.init("imp46720743");
	    
        function requestPay() {
        
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
                name: "Sachet 티켓 예매",
                amount: "150",
                buyer_email: '${t.email }',
                buyer_name: '${t.userName }',
                buyer_tel: '${t.phone}'
            }, 
            
            function (rsp) { // callback
                if (rsp.success) {
                	

                	var form = document.createElement("form");
        			form.setAttribute("charset", "UTF-8");
        			form.setAttribute("method", "Post"); 
        			form.setAttribute("action", "ticketBook3.ti"); 
        			
        			var hiddenField = document.createElement("input");
        			hiddenField.setAttribute("type", "hidden");
        			hiddenField.setAttribute("name", "ticketDate");
        			hiddenField.setAttribute("value",'${t.ticketDate}');
        			form.appendChild(hiddenField);
        							         
        			hiddenField = document.createElement("input");
        			hiddenField.setAttribute("type", "hidden");
        			hiddenField.setAttribute("name", "userName");
        			hiddenField.setAttribute("value", '${t.userName}');
        			form.appendChild(hiddenField);
        			
        			hiddenField = document.createElement("input");
        			hiddenField.setAttribute("type", "hidden");
        			hiddenField.setAttribute("name", "phone");
        			hiddenField.setAttribute("value", '${t.phone}');
        			form.appendChild(hiddenField);
        			
        			hiddenField = document.createElement("input");
        			hiddenField.setAttribute("type", "hidden");
        			hiddenField.setAttribute("name", "email");
        			hiddenField.setAttribute("value", '${t.email}');
        			form.appendChild(hiddenField);
        			
        			hiddenField = document.createElement("input");
        			hiddenField.setAttribute("type", "hidden");
        			hiddenField.setAttribute("name", "totalPrice");
        			hiddenField.setAttribute("value",'${t.totalPrice}');
        			form.appendChild(hiddenField);
        			
        			hiddenField = document.createElement("input");
        			hiddenField.setAttribute("type", "hidden");
        			hiddenField.setAttribute("name", "totalPeople");
        			hiddenField.setAttribute("value", '${t.totalPeople}');
        			form.appendChild(hiddenField);
        			
        			hiddenField = document.createElement("input");
        			hiddenField.setAttribute("type", "hidden");
        			hiddenField.setAttribute("name", "ticketAdult");
        			hiddenField.setAttribute("value", '${t.ticketAdult}');
        			form.appendChild(hiddenField);
        			
        			hiddenField = document.createElement("input");
        			hiddenField.setAttribute("type", "hidden");
        			hiddenField.setAttribute("name", "ticketKid");
        			hiddenField.setAttribute("value", '${t.ticketKid}');
        			form.appendChild(hiddenField);
        			
        			hiddenField = document.createElement("input");
        			hiddenField.setAttribute("type", "hidden");
        			hiddenField.setAttribute("name", "ticketFree");
        			hiddenField.setAttribute("value", '${t.ticketFree}');
        			form.appendChild(hiddenField); 
        			
        			document.body.appendChild(form);
        			form.submit();


                } else {
                    // 결제 실패 시 로직,
                	 alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
                }
            });
          
        
				
            
            	
   
                	 
                	 
                	 
        
        }
            
        
        
        
        
    </script>
</body>
</html>