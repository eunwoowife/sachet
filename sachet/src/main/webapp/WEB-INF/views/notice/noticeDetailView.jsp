<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    .outerarea{
        width: 70%;
        margin-top: 200px;
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
        font-size: 2em;
        text-align: center;
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

                <hr class="hrbold">

                <div class="titlearea">
                   ${n.noticeTitle}
                </div>


                <table class="notice">
                    <tr>
                        <td class="lab">작성자</td>
                        <td class="con">관리자</td>
                        <td class="lab">작성일</td>
                        <td class="con">${n.noticeCreateDate}</td>
                    </tr>
                    <tr>
                        <td class="lab">조회수</td>
                        <td class="con">${n.count}</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="4" class="filearea">첨부파일 영역</td>
                    </tr>
                    </table>


                <div class="content">
	                  ${n.noticeContent }
                </div>

                <div class="btnarea">
                    <input type="button" class="listBtn" value="목록" onclick="location.href='noticeListView.no'">
                </div>

                <div class="prenextarea">

                    <table class="prenextarea tab">
                        <tr>
                            <td class="pre1">Pre</td>
                            <td class="pre2">하진짜 이거 다 언제하냐</td>
                        </tr>

                        <tr>
                            <td>Next</td>
                            <td>그러니까 이거 다 언제하냐</td>
                        </tr>

                    </table>

                </div>

            

        </div>

    </div>
</body>
</html>