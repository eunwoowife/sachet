<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/se2/js/HuskyEZCreator.js"></script>

</head>
<style>
    .outerarea{
        width: 70%;
        margin-top: 200px;
    }

    .area{
        width: 1100px;
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
    }

    .hrbold{
        background-color: black;
        border: none;
        height: 0.1em;
    }

    .titlearea{
        font-size: 2.2em;
        padding-top: 0.7em;
        padding-bottom: 0.7em;
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
        width: 50%;
    }


    .content{
        margin-bottom: 50px;
        padding: 10px;
        margin-left: 30px;
    }

    .btnarea{
        margin-bottom: 50px;
        display: inline-block;
        width: 100%;
        margin-bottom: 80px;
        text-align: center;
    }

    .listBtn{
        width: 150px;
        height: 50px;
        
    }

    .prenextarea table{
        width: 100%;
        border-top: 0.05em solid #000000;
        border-collapse: collapse;
        border-bottom: 0.07em solid #000000;
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

    .NoticeTitle{
        border: none;
        width: 80%;
        height: 30px;
    }
    
    #popContent{
    width: 97%;
    height: 400px;
    
    }

    


</style>
<body>
<jsp:include page="../common/header.jsp" />

    <div class="outerarea">
         <div class="area">
                <hr class="hrbold">
                <div class="titlearea">
                    	공지사항 작성
                </div>

                <table class="notice">
                    <tr>
                        <td class="lab">제목</td>
                        <td class="con">
                            <input type="text" class="NoticeTitle" name="NoticeTitle" id="" placeholder="제목을 입력해주세요.">
                        </td>
                    </tr>
                    <tr>
                        <td class="lab">첨부파일</td>
                        <td class="con">
                            <input type="file" class="noticefile" name="noticefile">
                        </td>
                    </tr>
                    
                    </table>


                <div class="content">
<textarea class="form-control" name="contents" id="popContent" rows="10" cols="10"></textarea>
                </div>

                <div class="btnarea">
                    <input type="button" class="listBtn" value="등록">
                    <input type="button" class="listBtn" type="reset" value="취소">
                    
                </div>

        </div>

    </div>
    
    <script>
    var oEditors = [];
    nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "popContent",
    sSkinURI: "${pageContext.request.contextPath}/resources/se2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
    });
    </script>

    
</body>
</html>