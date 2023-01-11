<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SACHET</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon-2.ico" />

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
    border-spacing: 2px;
    margin-top: 100px;
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 70px;
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
    width: 130px;
    height: 50px;
    margin-left:20px;
}

.paymentTable{
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 70px;
    text-align: left;
    padding-left: 20px;
}
.paymentTable{
    height: 100px;
    border-bottom: 1.5px solid gray;
    border-top: 2px solid black;
}
.paymentTable th,td{
    border-bottom: 0.05em solid gray;
    height: 30px;
    padding-left: 20px;
}
.paymentTable th{
    width: 150px;
}

.titlearea{
	text-align: center;
	font-size: 2em;
	margin-top: 150px;
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
		<img src="${pageContext.request.contextPath}/resources/images/ticket-step3.png">
		</div>
    <div class="centerarea">
    <div class="titlearea"> 결제가 완료되었습니다. </div>
    <table class="confirm">
        <thead>
          <tr>
            <th colspan="4" class="confirmTitle"><h2>티켓 정보 확인</h2></th>
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
            <td colspan="3" class="confirm-td">결제 완료</td>
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
            <span class="peopleTitle"><h3>결제 확인</h3></span>
            <table class="paymentTable">
                  <tr>
                    <th>결제자명</th>
                    <td>${t.userName}</td>
                  </tr>
                  <tr>
                    <th>결제일시</th>
                    <td>2022-12-18</td>
                  </tr>
                  <tr>
                    <th>결제금액</th>
                    <td>${t.totalPrice}</td>
                  </tr>
                </table>
                <div class="btnarea">
                  <button class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/index.jsp'">메인으로</button>
                  <button class="btn btn-info" onclick="location.href='myPage.me'" >마이페이지로</button>
                  </div>
                  
                  
            </div>
            </div>
                  
</body>
</html>