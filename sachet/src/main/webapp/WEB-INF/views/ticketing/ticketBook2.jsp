<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SACHET</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon-2.ico" />

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
    margin-top: 270px;
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
.btnA{
    width: 180px;
    height: 60px;
    margin-left: 10px;
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
</style>
<body>
<jsp:include page="../common/header.jsp" />

    <div class="outerarea">
    
    <div class="stepArea">
		<img src="${pageContext.request.contextPath}/resources/images/ticket-step2.png">
		</div>
    
    <div class="centerarea">
    <table class="confirm">
        <thead>
          <tr>
            <th colspan="4" class="confirmTitle"><h2>?????? ??????</h2></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="confirm-th">?????????</td>
            <td class="confirm-td">${t.ticketDate}</td>
            <td class="confirm-th">?????? ??????</td>
            <td class="confirm-td">10:00~19:00</td>
          </tr>
          <tr>
            <td class="confirm-th">????????????</td>
            <td class="confirm-td">${t.userName}</td>
            <td class="confirm-th">?????????</td>
            <td class="confirm-td">${t.email }</td>
          </tr>
          <tr>
            <td class="confirm-th">????????????</td>
            <td class="confirm-td">${t.phone}</td>
            <td class="confirm-th">?????? ??????</td>
            <td class="confirm-td">${t.totalPeople}???</td>
          </tr>
          <tr>
            <td class="confirm-th">????????????</td>
            <td colspan="3" class="confirm-td">${t.totalPrice}</td>
          </tr>
          <tr>
            <td class="confirm-th">?????? ??????</td>
            <td colspan="3" class="confirm-td">?????? ???</td>
          </tr>
        </tbody>
        </table>
        <span class="peopleTitle"><h3>?????? ??????</h3></span>
        <table class="people">
            <thead>
              <tr>
                <th>??????</th>
                <th>??????</th>
                <th>??????</th>
                <th>??????</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>??????</td>
                <td>20,000</td>
                <td>${t.ticketAdult}???</td>
                <td></td>
              </tr>
              <tr>
                <td>??????</td>
                <td>8,000</td>
                <td>${t.ticketKid}???</td>
                <td>??? 6??? ??????</td>
              </tr>
              <tr>
                <td>??????</td>
                <td>0</td>
                <td>${t.ticketFree}???</td>
                <td>???????????? ??????</td>
              </tr>
            </tbody>
            </table>
            <span class="peopleTitle"><h3>???????????? ?????? ????????? ?????? ??????</h3></span>
            <span class="textarea" >
                Sachet:2023 ?????? ?????? ????????? ????????? ????????? ????????? ?????? ??????????????? ??????????????? ??? ??????????????? ?????????. <br>
                ????????? ????????? ????????? ??? ?????? ????????? ???????????? ????????????.
                <BR>
                <BR>
            </span>
            <table class="people" style="margin-bottom: 20px;">
                <thead>
                  <tr>
                    <th>??????</th>
                    <th>????????????</th>
                    <th>????????????</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>??????, ????????????</td>
                    <td>????????? ?????? ????????? ??????</td>
                    <td>?????????????????? 30??????</td>
                  </tr>
                </tbody>
            </table>
            <span class="textarea" >
                ??? ?????? ???????????? ????????? ?????? ????????? ????????? ????????? ????????????. <br>
                ????????? ????????? ????????? ?????? ????????? ????????? ???????????? ??? ????????? ?????? ????????????.
            </span>
            <div class="checkboxarea">
            <input type= "checkbox" id="agree" onChange="agreeCh();"> <label>(??????) ???????????????</label>
            </div>
            <div class="btnarea">
            <button class="btnA btn btn-primary" id="submit" disabled onclick="requestPay();">????????????</button>
            </div>
        </div>
    </div>
    
       
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
        
        	//merchan_uid??? ??????????????? ??????????????? ????????? ???????????????
        	var today = new Date();   
        	var year = today.getFullYear();
        	var month = today.getMonth();
        	var date = today.getDate();
        	var hours = ('0' + today.getHours()).slice(-2); 
        	var minutes = ('0' + today.getMinutes()).slice(-2);
        	var seconds = ('0' + today.getSeconds()).slice(-2); 

        	var paydate = "sa-"+year+month+date+hours+ minutes+ seconds;
        	
            // IMP.request_pay(param, callback) ????????? ??????
               IMP.request_pay({ // param
            	
                pg: "html5_inicis.INIpayTest",
                pay_method: "card",
                merchant_uid: paydate,
                name: "Sachet ?????? ??????",
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
                    // ?????? ?????? ??? ??????,
                	 alert("????????? ?????????????????????. ?????? ??????: " +  rsp.error_msg);
                }
            });
          
        
				
            
            	
   
                	 
                	 
                	 
        
        }
            
        
        
        
        
    </script>
</body>
</html>