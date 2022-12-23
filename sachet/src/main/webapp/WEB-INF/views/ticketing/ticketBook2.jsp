<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

.outerarea{
    width: 70%;
    margin-left: 280px;
}
.centerarea{
    margin-left: 145px;
    width: 80%;
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
            <td class="confirm-td">2023-01-12</td>
            <td class="confirm-th">관람 시간</td>
            <td class="confirm-td">10:00~19:00</td>
          </tr>
          <tr>
            <td class="confirm-th">휴대전화</td>
            <td class="confirm-td">010-1234-4567</td>
            <td class="confirm-th">이메일</td>
            <td class="confirm-td">aaa@naver.com</td>
          </tr>
          <tr>
            <td class="confirm-th">전체 요금</td>
            <td class="confirm-td">45,000원</td>
            <td class="confirm-th">전체 인원</td>
            <td class="confirm-td">3명</td>
          </tr>
          <tr>
            <td class="confirm-th">신청 일시</td>
            <td colspan="3" class="confirm-td">2022-12-16 09:54:21</td>
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
                <td>1명</td>
                <td></td>
              </tr>
              <tr>
                <td>아동</td>
                <td>8,000</td>
                <td>0명</td>
                <td>만 6세 미만</td>
              </tr>
              <tr>
                <td>무료</td>
                <td>0</td>
                <td>1명</td>
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
            <button class="btn" id="submit" disabled onclick="location.href='ticketBook3.ti'">예매하기</button>
            </div>
        </div>
    </div>
    <script>
        function agreeCh() {
    if ($("input:checkbox").is(":checked") == true) {
      $("#submit").attr("disabled", false);
    } else {
      $("#submit").attr("disabled", true);
    }
  }
    </script>
</body>
</html>