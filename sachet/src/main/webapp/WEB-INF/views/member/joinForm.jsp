<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    #general, #company{
        float: left;
        margin-left: 500px;
    }

.w-btn-gra-anim {
    background-size: 400% 400%;
    animation: gradient1 5s ease infinite;
}


@keyframes ring {
    0% {
        width: 30px;
        height: 30px;
        opacity: 1;
    }
    100% {
        width: 300px;
        height: 300px;
        opacity: 0;
    }
}

.w-btn-neon2 {
    position: relative;
    border: none;
    min-width: 200px;
    min-height: 50px;
    background: linear-gradient(
        90deg,
        #BAD1F0 0%,
        #88C9E8 100%
    );
    border-radius: 1000px;
    color: darkslategray;
    cursor: pointer;
    box-shadow: 12px 12px 24px rgba(111, 172, 241, 0.64);
    font-weight: 700;
    transition: 0.3s;
}

.w-btn-neon2:hover {
    transform: scale(1.2);
}

.w-btn-neon2:hover::after {
    content: "";
    width: 30px;
    height: 30px;
    border-radius: 100%;
    border: 6px solid #73C3E3;
    position: absolute;
    z-index: -1;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation: ring 1.5s infinite;
}

</style>
<body>

	<jsp:include page="../common/header.jsp"></jsp:include>

	<br><br><br><br><br>
    <div align="center" style="margin-top: 200px;">
        <h1 style="color: #717b80;">가입을 위한 회원유형을 선택해주세요.</h1>
        <br><br>
        <div id="general">
            <img src="${pageContext.request.contextPath }/resources/images/man2.png" alt="" style="width:200px;">
            <br>
            <p>일반회원</p>
            <br>
            <button class="w-btn-neon2" type="button" onclick="joinGeneral();">
                가입하기
            </button>
        </div>
        <div id="company">
            <img src="${pageContext.request.contextPath }/resources/images/building2.png" alt="" style="width:200px;">
            <br>
            <p>기업회원</p>
            <br>
            <button class="w-btn-neon2" type="button" onclick="joinCompany();">
                가입하기
            </button>
        </div>
        
        <script>
        	function joinGeneral(){
        		location.href="joinMemberForm.me";
        	}
        	
        	function joinCompany(){
        		location.href="joinCompanyForm.co";
        	}
        </script>
        
        
        <br><br><br><br><br><br><br><br><br><br><br><br>
    </div>
    <br><br><br><br><br><br><br><br>
</body>
<br><br><br><br><br><br><br><br><br>
</html>