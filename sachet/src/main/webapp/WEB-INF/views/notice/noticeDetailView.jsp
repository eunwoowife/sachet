<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

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
        margin-top: 100px;
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  
    }
    
    .area {
  width: 1100px;
  margin: 0 auto;
  margin-bottom : 100px;
  
}

    .hrbold{
        background-color: black;
        border: none;
        height: 0.1em;
    }

    .titlearea{
        font-size: 1.8em;
        text-align: left;
        padding-top: 0.5em;
        padding-bottom: 0.5em;
        padding-left: 1em;
    }

    .hrmiddel{
        background-color: gray;
        border: none;
        height: 0.01em;
    }

    .notice tr td{
        border-bottom: 1px solid #a1a1a1;
        padding: 10px;
        padding-left: 20px;
        font-size:0.9em;
        
    }

    .notice{
        width: 100%;
        border-top: 0.01em solid #444444;
    border-collapse: collapse;
    }

    .lab{
        width: 10%;
    }

    .con{
        width: 35%;
    }

    .filearea{
        background-color: #f2f2f2;
        height: 40px;
    }


    .content{
        margin-top: 50px;
        margin-bottom: 50px;
        padding: 10px;
    }

    .btnarea{
        margin-bottom: 50px;
        display: inline-block;
        width: 100%;
        margin-bottom: 80px;
    }

    .listBtn{
        width: 150px;
        height: 50px;
        float: right;
    }

    .prenextarea table{
        width: 100%;
        border-top: 0.05em solid #000000;
        border-collapse: collapse;
        border-bottom: 0.06em solid #000000;
    }

    .prenextarea tr td{
        border-bottom: 0.01em solid #a1a1a1;
        padding: 5px;
        padding-left: 20px;
        padding-top: 10px;
        padding-bottom: 10px;
        
    }

    .pre1{
        width: 100px;
    }

</style>    

<body>
<jsp:include page="../common/header.jsp" />

    <div class="outerarea">

         <div class="area">


                <div class="titlearea">
                   ${n.noticeTitle}
                </div>

                <table class="notice">
                    <tr>
                        <td class="lab">조회수</td>
                        <td class="con">${n.count}</td>
                        <td class="lab">작성일</td>
                        <td class="con">${n.noticeCreateDate}</td>
                    </tr>
<!--                     <tr> -->
<!--                         <td colspan="4" class="filearea">첨부파일 영역</td> -->
<!--                     </tr> -->
                    </table>


                <div class="content">
	                  ${n.noticeContent }
                </div>

                <div class="btnarea">
                    <input type="button" class="listBtn" value="목록" onclick="location.href='noticeListView.no'">
                    <input type="button" class="listBtn" value="삭제" onclick="confirmDelete();">
                </div>

                <div class="prenextarea">

                    <table class="prenextarea tab">
                        <tr>
                            <td>Next</td>
                            <td>
                            <c:if test="${empty nl.nextTitle}">
                            	다음 글이 없습니다.
                            </c:if>
                            <a href='detail.no?nno=${nl.nextNo}'>
                            ${nl.nextTitle}
                            </a>
                            </td>
                     
                        </tr>
                        <tr>
	                        <td class="pre1">Pre</td>
	                        <td class="pre2">
	                         <c:if test="${empty nl.preTitle}">
                            	이전 글이 없습니다.
                            </c:if>
	                        <a href='detail.no?nno=${nl.preNo}'>${nl.preTitle}</a>
	                        </td>
                       
                        </tr>

                    </table>

                </div>

            

        </div>

    </div>
    
    <script>
    	
    function confirmDelete(){
    	
    	if (!confirm("게시물을 삭제하시겠습니까?")) {
            return false;
        } else {
        	location.href='noticeDelete.no?nno=${n.noticeNo}';
        }
    		
    }
    
    </script>
</body>
</html>