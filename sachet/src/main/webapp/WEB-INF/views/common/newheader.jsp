<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko"> 
<head>  

<!-- favicon -->
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon-2.ico" />
    
    
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="biaf" /> 
    <meta name="description" content="SACHET"/>
    <title>SACHET</title>
    <link rel="shortcut icon" type="image/x-icon" href="" />
    <link rel="apple-touch-icon-precomposed" href="" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main-bass.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main-fullpage.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main-slick.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main-2022.css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/main-jquery-ui.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/main-jqueryfullpage.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main-picturefill.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main-jquery.dotdotdot.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/main-slick.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main-common.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main_2021.js"></script>
    <!--[if lt IE 9]>
<script src="/js/html5shiv-printshiv.min.js"></script>
<script src="/js/respond.min.js"></script>
<![endif]-->

    <script type="text/javascript">
        $(document).ready(function() {
            var login = '';
            if (login != "") {
                $('.moUtil li').css("width", "33.333%");
            }
        });
    </script>
    
    
    <style>
    
    #section0{
    background-color: white !important;
    
    }
    
    .mainSection mainTop{
    height:944px !important;
    }
    
    
       @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    *{
    	font-family: 'IBM Plex Sans KR', sans-serif !important;
    }
    </style>
</head>

<body> 


    <div class="skipNav">
        <p><a href="#fullpage">본문 바로가기</a></p>
    </div>
<!-- layerPopup -->
<script>
    $(document).ready(function() {
        var cookiedata = document.cookie;
        var popup = $('.layerPopup');
        var winPopup = $('.layerWinPopup');
        if (popup.length != 0) {
            if (cookiedata.indexOf("close=Y") < 0) {
                $('body').addClass('layerOpen');
            } else {
                $('body').removeClass('layerOpen');
            }
        }
        if (winPopup.length != 0) {
            if (cookiedata.indexOf("winClose=Y") < 0) {
                $('.layerWinPopup').show();
            } else {
                $('.layerWinPopup').hide();
            }
        }
    });
    function layerPopClose() {
        if ($("input[name=layer_close]").is(":checked") == true) {
            setCookie("close", "Y", 1);
        }
        $('body').addClass('layerClose').removeClass('layerOpen');
    }
    function layerPopWinClose() {
        if ($("input[name=layer_closeWin]").is(":checked") == true) {
            setCookie("winClose", "Y", 1);
        }
        $('.layerWinPopup').hide();
    }
    function getCookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') c = c.substring(1);
            if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
        }
        return "";
    }
    function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        var expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + "; " + expires;
    }
</script>

<a href="javascript:;" class="moTrigger">전체보기</a>





    <div id="wrap">
        <header id="header">
            <div class="headerWrap">
                <div>
                    <div class="logo">
                        <h1>
                            <a href="/kr/"><img src="${pageContext.request.contextPath}/resources/images/로고10.png" alt="" width="230px";>
                        </h1>
                    </div>
                    
                    
<nav class="gnb">
<div class="navWrap">

    <h2>전체메뉴보기</h2>
   
    <ul class="moUtil">
        <li><a href="/kr/">HOME</a></li>
        <li><a href="/kr/sub.html?pid=96">로그인</a></li>
        <li><a href="/kr/sub.html?pid=96">회원가입</a></li>
        
        

    </ul>

    <ul class="gnbList">
                <li class="gnb01">
            <a href="/kr/sub.html?pid=1">전시회 소개<span class="iconPlus"></span></a>
            <div class="subMenu">
            <h3><span>SACHET</span></h3>
            <ul><li><a href="/kr/sub.html?pid=12">전시회개요</a></li>
            <li><a href="/kr/sub.html?pid=13">지난 전시회</a></li>
            <li><a href="/kr/sub.html?pid=14">전시회 배치도</a></li>
            <li><a href="/kr/sub.html?pid=15">입장안내</a></li>
       
        </ul>
    </div></li>
    
    <li class="gnb02">
      <a href="/kr/sub.html?pid=2">프로그램<span class="iconPlus"></span></a>
        <div class="subMenu"><h3><span>프로그램</span></h3>
        <ul><li><a href="/kr/sub.html?pid=20">체험</a></li>
        <li><a href="/kr/sub.html?pid=22">상품</a></li>
        <li><a href="/kr/sub.html?pid=196">티켓안내</a></li>
        <li><a href="/kr/sub.html?pid=26">애니투게더</a></li>
        <li><a href="/kr/sub.html?pid=27">토에이 애니메이션의 세계</a></li>
        <li><a href="/kr/sub.html?pid=102">더 차이니즈 이어</a></li>
        <li><a href="/kr/sub.html?pid=226">프로그램 클래스</a></li>
        <li><a href="/kr/sub.html?pid=160">출품 신청</a></li>
        <li><a href="/kr/sub.html?pid=195">단체예매신청</a></li> 
        </ul>
        </div>
    </li>
    
    <li class="gnb03">
        <a href="/kr/sub.html?pid=3">관람안내<span class="iconPlus"></span></a>

        <div class="subMenu"><h3><span>관람안내</span></h3>
            <ul><li><a href="/kr/sub.html?pid=175">입장안내</a></li>
         <li><a href="/kr/sub.html?pid=41">온라인 등록</a></li>
         <li><a href="/kr/sub.html?pid=42">부스배치</a></li>
        <li><a href="/kr/sub.html?pid=43">참가업체</a></li>
        <li><a href="/kr/sub.html?pid=39">찾아오시는 길 </a></li>
        
    </ul>
</div>
</li>
    
    <li class="gnb04">
        <a href="/kr/sub.html?pid=5">이벤트<span class="iconPlus"></span></a>
    <div class="subMenu"><h3><span>행사안내</span></h3>
        <ul>
            <li><a href="/kr/sub.html?pid=183">미디어관</a></li>
            <li><a href="/kr/sub.html?pid=47">개막식</a></li>
            <li><a href="/kr/sub.html?pid=48">전시</a></li>
            <li><a href="/kr/sub.html?pid=49">부대행사</a></li>
            <li><a href="/kr/sub.html?pid=50">행사장 안내</a></li>
            <li> <a href="/kr/sub.html?pid=184">상영시간표</a></li>
            <li><a href="ticketInfo.ti">티켓예매</a></li>
            <li><a href="/kr/sub.html?pid=186">티켓안내</a></li>
            <li><a href="/kr/sub.html?pid=194">프로그램 가이드</a></li></ul></div></li>
           
           
            <li class="gnb05">
            
                <a href="/kr/sub.html?pid=8">고객센터<span class="iconPlus"></span></a>
                <div class="subMenu"><h3><span>커뮤니티</span></h3>
                     <ul>
                        <li>
                            <a href="/kr/sub.html?pid=52">공지사항</a>
                    </li>
                    <li>
                        <a href="/kr/sub.html?pid=53">보도자료</a>
                    </li>
                    <li>
                        <a href="/kr/sub.html?pid=54">뉴스레터</a>
                    </li>
                    <li>
                        <a href="volunteerList.vo">자원활동가</a>
                    </li>
                    <li>
                        <a href="#" onclick="goQnA();">Q&A</a>
                    </li>
                   
                </ul>
                </div>
            </li>
         
    </ul>
    </div>
</nav>
</div>
</div>
</header>
</div>
</body>
</html>
