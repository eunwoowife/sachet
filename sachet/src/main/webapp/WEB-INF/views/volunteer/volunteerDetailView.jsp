<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
     @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    
    *{
    	font-family: 'IBM Plex Sans KR', sans-serif;
    }
        .content {
            background-color:rgb(247, 245, 245);
            width:80%;
            margin:auto;
        }
        .innerOuter {
            border:1px solid lightgray;
            width:80%;
            margin:auto;
            padding:5% 10%;
            background-color:white;
        }

        table * {margin:5px;}
        table {width:100%;}
    </style>
</head>
<body>
        
  
    <div class="content">
        <br><br>
       
        <div class="innerOuter">
		
            <h2>지원자 상세보기</h2>
            <br>

            <a class="btn btn-secondary" style="float:right;" href="">목록으로</a>
            <br><br>

            <table id="contentArea" algin="center" class="table">
         
                <tr>
                    <th width="100">이름</th>
                    <td colspan="3">${v.volNameKor}</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>${v.volNameKor}</td>
                    <th>작성일</th>
                    <td>${v.volNameKor}</td>
                </tr>
                <tr>
                    <th>카테고리</th>
                    
                    <td colspan="3">
                       ${v.volNameKor}
                    </td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><p style="height:150px;">${v.volNameKor}</p></td>
                </tr>
            
            </table>
            <br>
				
            <div align="center">
                <!-- 수정하기, 삭제하기 버튼은 이 글이 본인이 작성한 글일 경우에만 보여져야 함 -->
              <a class="btn btn-primary" onclick="postFormSubmit(1);">적합</a> <a
				class="btn btn-danger" onclick="postFormSubmit(2);">부적합</a>
            </div>
            <br> <br>
         		
   		 </div>
    

    
  
    
</body>
</html>