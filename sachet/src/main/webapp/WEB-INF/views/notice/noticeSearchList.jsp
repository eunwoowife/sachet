<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
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


<style>

    table {
  border-collapse: collapse;
  border-spacing: 0;
}
section.notice {
  padding: 80px 0;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

#board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrap {
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 80%;
  max-width: 564px;
}
#board-search .search-window .search-wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board-search .search-window .search-wrap .btn {
  position: absolute;
  right: 0;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board-table a:hover {
  text-decoration: underline;
}
.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 150px;
}

.board-table .th-view {
  width: 80px;
}

.board-table .th-file {
  width: 150px;
}





.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

.btn {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1100px;
  margin: 0 auto;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}

#pagingArea{
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
}



</style>


</head>
<body>
<jsp:include page="../common/header.jsp" />
<section class="notice">
    <div class="page-title">
          <div class="container">
              <h3>공지사항</h3>
          </div>
      </div>
  
      <!-- board seach area -->
      <div id="board-search">
          <div class="container">
              <div class="search-window">
                  <form action="searchNotice.no">
                      <div class="search-wrap">
                          <label for="search" class="blind">공지사항 내용 검색</label>
                          <input id="search" type="search" name="keyword" placeholder="${keyword }" value="">
                          <button type="submit" class="btn btn-dark">검색</button>
                      </div>
                  </form>
              </div>
          </div>
      </div>
     
    <!-- board list area -->
      <div id="board-list">
          <div class="container">
              <table class="board-table">
                  <thead>
                  <tr>
                      <th scope="col" class="th-num">번호</th>
                      <th scope="col" class="th-title">제목</th>
                      <th scope="col" class="th-date">등록일</th>
                      <th scope="col" class="th-view">조회수</th>
                      <th scope="col" class="th-file"></th>
                  </tr>
                  </thead>
                  <tbody>

                  <c:forEach var="n" items="${searchL}">
                  <tr>
                      <td>${n.noticeNo }</td>
                      <th>
                        <a href='detail.no?nno=${n.noticeNo}'>${n.noticeTitle }</a>

						<c:set var="now" value="<%=new java.util.Date()%>" /><!-- 현재시간 -->
						<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="today" /><!-- 현재시간을 숫자로 -->
						<fmt:parseNumber value="${n.noticeCreateDate.time / (1000*60*60*24)}" integerOnly="true" var="chgDttm" /><!-- 게시글 작성날짜를 숫자로 -->
						<c:if test="${today - chgDttm le 2}"><!-- 3일동안은 new 표시 -->
							<span class="badge bg-label-info">NEW!</span>
						</c:if>

                      </th>
                      <td class="createDate">${n.noticeCreateDate}</td>
                      <td>${n.count}</td>
                      <td>${n.noticeFile}</td>
                  </tr>
                  
                  
                  <tr>
                  <td colspan="5">
                  ${n.noticeContent}
                  <td>
                  </tr>
                  
                  
  				</c:forEach>
                  
                  </tbody>
              </table>
          </div>
      </div>
      
        </section>
        
        <a href="noticeInsert.no">공지사항쓰는 하퍼링크~</a>
  
  
<!--   <div id="pagingArea"> -->
<!--                 		<ul class="pagination"> -->
                		
<%--                 		<c:choose> --%>
<%--                 		<c:when test="${pi.currentPage!=1 }"> --%>
<%-- 		                    <li class="page-item"><a class="page-link" href="noticeListView.no?currentPage=${pi.currentPage-1 }">Previous</a></li> --%>
<%-- 	                    </c:when> --%>
<%-- 	                    <c:otherwise> --%>
<%-- 	                    	<li class="page-item disabled"><a class="page-link" href="noticeListView.no?currentPage=${pi.currentPage-1 }">Previous</a></li> --%>
<%-- 	                    </c:otherwise> --%>
<%--                     	</c:choose> --%>
                    	
<%--                     	<c:forEach var="g" begin="${pi.startPage }" end="${pi.endPage }"> --%>
<%--                     	<c:choose> --%>
<%--                     	<c:when test="${pi.currentPage eq g }"> --%>
<%-- 		                    <li class="page-item disabled"><a class="page-link" href="noticeListView.no?currentPage=${g }">${g }</a></li> --%>
<%-- 	                    </c:when> --%>
<%-- 	                    <c:otherwise> --%>
<%-- 	                    	<li class="page-item"><a class="page-link" href="noticeListView.no?currentPage=${g }">${g }</a></li> --%>
<%-- 	                    </c:otherwise> --%>
<%-- 	                    </c:choose> --%>
<%-- 	                    </c:forEach> --%>
	                    
<%-- 	                    <c:choose> --%>
<%-- 	                    <c:when test="${pi.currentPage ne pi.maxPage }"> --%>
<%-- 		                    <li class="page-item"><a class="page-link" href="noticeListView.no?currentPage=${pi.currentPage+1}">Next</a></li> --%>
<%-- 	                    </c:when> --%>
<%-- 	                    <c:otherwise> --%>
<%-- 	                    	<li class="page-item disabled"><a class="page-link" href="noticeListView.no?currentPage=${pi.currentPage+1}">Next</a></li> --%>
<%-- 	                    </c:otherwise> --%>
<%-- 	                    </c:choose> --%>
	                    
<!--                 		</ul> -->
<!--           		  </div> -->
 

</body>

<script>
	let today = new Date();   
	
	let year = today.getFullYear(); // 년도
	let month = ("0" + (1 + today.getMonth())).slice(-2);  // 월
	let date = ("0" + today.getDate()).slice(-2);  // 날짜
	
	let year2 = (year).toString();
	let month2 = (month).toString();
	let date2 = (date).toString();
	
	let today2 = year2+month2+date2;
	
	console.log(today2);

	
</script>


</html>