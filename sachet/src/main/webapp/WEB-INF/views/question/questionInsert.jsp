<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SACHET</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
     @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    
    *{
    	font-family: 'IBM Plex Sans KR', sans-serif;
    		}
        .content {
            background-color:white;
            width:80%;
            margin:auto;
        }
        .innerOuter {
            border:1px solid white;
            width:90%;
            margin:auto;
            padding:5% 10%;
            background-color:white;
        }

        #enrollForm>table {width:100%;}
        #enrollForm>table * {margin:5px;}
    </style>
</head>
<body>
        
     <jsp:include page="../common/header.jsp"/>

    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h2>게시글 작성하기</h2>
            <br>

            <form id="enrollForm" method="post" action="writeM.qs" enctype="">
                <table algin="center">
                    <tr>
                        <th><label for="title">제목</label></th>
                        <td><input type="text" id="title" class="form-control" name="quesTitle" required></td>
                    </tr>
                    <tr>
                        <th><label for="writer">작성자</label></th>
                        <td><input type="text" id="writer" class="form-control" value="${loginUser.userName}" name="quesWritter" readonly></td>
                    </tr>
                    <tr>
                        <th><label for="upfile">카테고리</label></th>
                        <td>
                        
                        <select id="cate" class="form-control" name="quesCate">
                        <option value="1">회원정보 관련</option>
                        <option value="2">예매 구매 관련</option>
                        <option value="3">기업 관련</option>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="content" >내용</label></th>
                        <td><textarea id="content" class="form-control" rows="10" style="resize:none;" name="quesConte" required></textarea></td>
                    </tr>
                </table>
                <br>
                <input type="hidden" name="userNo" value="${loginUser.userNo}">
                

                <div align="center">
                    <button type="submit" class="btn btn-primary" style="background-color  :#BAD1F0; border-color:#BAD1F0;">등록하기</button>
                    <button type="reset" class="btn btn-danger" style="background-color :white; color:#BAD1F0; border-color:lightgray;">취소하기</button>
                </div>
            </form>
        </div>
        <br><br>

    </div>
    
    
    
</body>
</html>