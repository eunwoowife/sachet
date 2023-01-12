<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body>
	<jsp:include page="../common/header.jsp" />
	
	<div style="font-size:2em; text-align:center; margin-top:300px;">
	부스 신청이 완료되었습니다.
	<br><br>
	<button class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/index.jsp'">메인으로</button>
	
	</div>

</body>
</html>