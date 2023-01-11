<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    *{
    	font-family: 'IBM Plex Sans KR', sans-serif;
    }
</style>
</head>
<body>
 <jsp:include page="../common/header.jsp"/>

<div style=" text-align: center; padding:140px" >
 <img src="${pageContext.request.contextPath}/resources/images/mcheck.png"	width="160px;">
</div>

<div style="text-align: center;" >
 <div>
  <p style="font-size: x-large;">자원 봉사 신청이 완료 되었습니다.</p>
  <p style="font-size: large;">마이페이지에서 신청 내역을 확인해주세요.</p>
</div>

</div>
</body>
</html>