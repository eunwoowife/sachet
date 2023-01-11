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
     <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;}
        .tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
          overflow:hidden;padding:10px 5px;word-break:normal;}
        .tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
          font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
        .tg .tg-7eit{background-color:#ffffff;border-color:#ffffff;text-align:center;vertical-align:middle}
        .tg .tg-8jgo{border-color:#ffffff;text-align:center;vertical-align:top}
        .tg .tg-wk8r{background-color:#ffffff;border-color:#ffffff;text-align:center;vertical-align:top}
        .tg .tg-v0mg{border-color:#ffffff;text-align:center;vertical-align:middle}
        </style>
</head>
<body>
    
    <jsp:include page="../common/newheader.jsp"/>
    
   <div class="contentouter" style="padding:20% 10%;">
   
   
   <div class="content" >
        <br><br>
     
        <div class="innerOuter" style="padding:5% 10%;">

                        <form action="">
                   <table class="tg" style="undefined;table-layout: fixed; width: 997px">
                            <colgroup>
                            <col style="width: 140px">
                            <col style="width: 120px">
                            <col style="width: 180px">
                            <col style="width: 100px">
                            <col style="width: 100px">
                            </colgroup>
                            <thead>
                              <tr>
                                <th class="tg-v0mg">회원번호</th>
                                <th class="tg-8jgo">유저번호</th>
                                <th class="tg-8jgo">한글 이</th>
                                <th class="tg-8jgo">총 구매 금액 </th>
                                <th class="tg-8jgo">주문 상태</th>
                              </tr>
                            </thead>
                            <tbody>
                             <c:forEach var="v" items="${Vlist}">
                            <input name="volsubmit" type="checkbox" value="{v.userNo}">
                              <tr>	
                                <td class="tg-7eit">${v.volno}<br>
                                </td>
                                <td class="tg-wk8r">${v.userNo}</td>
                                <td class="tg-wk8r">${v.volNameKor}<br></td>
                                <td class="tg-wk8r"></td>
                                <td class="tg-wk8r"></td>
                              </tr>
                              </c:forEach>
                              <tr>
                                <c:forEach var="od" items="${Vlist}">
                                <td class="tg-wk8r">${v.userNo}</td>
                                <td class="tg-wk8r">흠</td>
                                <td class="tg-wk8r"></td>
                                <td class="tg-wk8r"></td>
                                 <td class="tg-wk8r"></td>
                                </c:forEach>
                              </tr>
                              <tr>
                                <td class="tg-wk8r">ㅇ</td>
                                <td class="tg-wk8r"></td>
                                <td class="tg-wk8r"></td>
                                <td class="tg-wk8r"></td>
                                <td class="tg-wk8r"></td>
                              </tr>
                              <tr>
                                <td class="tg-wk8r"></td>
                                <td class="tg-wk8r"></td>
                                <td class="tg-wk8r"></td>
                                <td class="tg-wk8r"></td>
                                <td class="tg-wk8r"></td>
                              </tr>
                            </tbody>
                            </table>
                        </form>
                            </div>

    </div>
   </div>
    
<%@include file="../common/footer.jsp" %>
 

</body>
</html>