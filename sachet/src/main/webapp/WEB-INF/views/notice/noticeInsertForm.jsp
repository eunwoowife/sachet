<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SACHET</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon-2.ico" />

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
        margin-top: 100px;
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
        width: 130px;
        height: 40px;
        
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
    
    #txtContent{
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
                    	???????????? ??????
                </div>

<form id="boardWriteForm"  method="post">
                <table class="notice">
                    <tr>
                        <td class="lab">??????</td>
                        <td class="con">
                            <input type="text" class="NoticeTitle" name="noticeTitle" id="title" placeholder="????????? ??????????????????.">
                        </td>
                    </tr>
<!--                     <tr> -->
<!--                         <td class="lab">????????????</td> -->
<!--                         <td class="con"> -->
<!--                             <input type="file" class="noticefile" name="noticefile" multiple> -->
<!--                         </td> -->
<!--                     </tr> -->
                    
                    </table>


                <div class="content">
<textarea class="form-control" name="contents" id="txtContent" rows="10" cols="10"></textarea>
                </div>

                <div class="btnarea">
                    <input type="button" class="listBtn btn btn-outline-primary" value="??????" onclick="onWrite();">
                    <input type="button" class="listBtn btn btn-secondary" type="reset" value="??????">
                    
                </div>
</form>
        </div>

    </div>
    
    <script>
//     var oEditors = [];
//     nhn.husky.EZCreator.createInIFrame({
//     oAppRef: oEditors,
//     elPlaceHolder: "popContent",
//     sSkinURI: "${pageContext.request.contextPath}/resources/se2/SmartEditor2Skin.html",
//     fCreator: "createSEditor2"
//     });
    </script>

<script type="text/javascript">
var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: document.getElementById('txtContent'), // html editor??? ????????? textarea id ?????????.
	sSkinURI: "resources/se/SmartEditor2Skin.html",  // html editor??? skin url ?????????.
// 	fOnAppLoad: function () { 
//         //??????????????? ????????? ??? ????????? ???????????????. ????????? ?????? ??? ?????? ???????????? ?????? ????????? ?????????.
//          var title = localStorage.getItem("title");            
//          var contents = localStorage.getItem("contents");        //db?????? ????????? ?????? ???????????? ??????????????????.
//          document.getElementById("title").value = title;     
//          oEditors.getById["txtContent"].exec("PASTE_HTML", [contents]); //????????? ????????? contents??? txtContent??? ????????????.
//      },
     fCreator: "createSEditor2"
 });

var onWrite = function(){
	oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []); // ???????????? ????????? textarea??? ???????????????.
	
	 var contents = document.getElementById("txtContent").value;
	 var title = document.getElementById("title").value;
	 localStorage.setItem("contents", contents);
	 localStorage.setItem("title", title);             //localStorage??? ????????? ????????? ??????.
	 
	var boardWriteForm = document.getElementById("boardWriteForm");  
	boardWriteForm.action ="noticeInsert.no";			//????????? ???????????? ?????????.              
	boardWriteForm.submit();  
};

var pasteHTML = function(filename){
    var sHTML = '<img src="${pageContext.request.contextPath}/resources/upload/'+filename+'">';
    oEditors.getById["txtContent"].exec("PASTE_HTML", [sHTML]);
};
</script>
</body>
</html>