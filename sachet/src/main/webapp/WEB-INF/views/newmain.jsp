<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko"> 
<head>  

    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="biaf" /> 
    <meta name="description" content="SACHET" />
    <title>SACHET</title>
    <link rel="shortcut icon" type="image/x-icon" href="/img/biaf_2022.ico" />
    <link rel="apple-touch-icon-precomposed" href="/img/biaf_2022.png" />
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
<nav class="gnb">
<div class="navWrap">
<h2>전체메뉴보기</h2>
<ul class="moUtil">
<li><a href="/kr/">HOME</a></li>
<li><a href="#;" onclick="goLogin();">로그인</a></li>
<li><a href="#;" onclick="goJoin();">회원가입</a></li>
<li><a href="#;" onclick="goMypage();">마이페이지</a></li>
</ul>


<ul class="gnbList">
<li><a href="/kr/sub.html?pid=1">BIAF<span class="iconPlus"></span></a>
<div class="subMenu"><ul>
<li><a href="#">BOOTH</a></li>
<li><a href="productListView.pro">PRODUCT</a></li>
<li><a href="experienceListView.exp">EXPERIENCE</a></li>
<li><a href="ticketBook1.ti">티켓 예매</a></li>
<li><a href="/kr/sub.html?pid=21">시상 및 심사위원</a></li>
<li><a href="/kr/sub.html?pid=16">조직도</a></li>
<li><a href="/kr/sub.html?pid=17">후원 및 협찬</a></li>
<li><a href="/kr/sub.html?pid=51">굿즈</a></li>
<li><a href="/kr/sub.html?pid=18">역대영화제</a></li>
<li><a href="/kr/sub.html?pid=19">찾아오시는길</a></li>
</ul></div>
</li>
<li><a href="/kr/sub.html?pid=2">티켓<span class="iconPlus"></span></a>
<div class="subMenu"><ul>
<li><a href="/kr/sub.html?pid=20">티켓안내</a></li>
<li><a href="/kr/sub.html?pid=22">티켓예매</a></li>
<li><a href="/kr/sub.html?pid=196">스페셜 스크리닝</a></li>
<li><a href="/kr/sub.html?pid=26">애니투게더</a></li>
<li><a href="/kr/sub.html?pid=27">토에이 애니메이션의 세계</a></li>
<li><a href="/kr/sub.html?pid=102">더 차이니즈 이어</a></li>
<li><a href="/kr/sub.html?pid=226">프로그램 클래스</a></li>
<li><a href="/kr/sub.html?pid=160">출품 신청</a></li>
<li><a href="/kr/sub.html?pid=195">단체예매신청</a></li>
</ul></div>
</li>
<li><a href="/kr/sub.html?pid=3">애니페어&포럼<span class="iconPlus"></span></a>
<div class="subMenu"><ul>
<li><a href="/kr/sub.html?pid=175">애니프리젠테이션</a></li>
<li><a href="/kr/sub.html?pid=41">단편애니메이션 제작지원</a></li>
<li><a href="/kr/sub.html?pid=42">장편애니메이션 제작지원</a></li>
<li><a href="/kr/sub.html?pid=43">Fun+Career</a></li>
<li><a href="/kr/sub.html?pid=39">잡세미나</a></li>
<li><a href="/kr/sub.html?pid=177">학술 포럼</a></li>
<li><a href="/kr/sub.html?pid=249">사전 등록</a></li>
</ul></div>
</li>
<li><a href="/kr/sub.html?pid=5">행사안내<span class="iconPlus"></span></a>
<div class="subMenu"><ul>
<li><a href="/kr/sub.html?pid=183">미디어관</a></li>
<li><a href="/kr/sub.html?pid=47">개막식</a></li>
<li><a href="/kr/sub.html?pid=48">전시</a></li>
<li><a href="/kr/sub.html?pid=49">부대행사</a></li>
<li><a href="/kr/sub.html?pid=50">행사장 안내</a></li>
<li><a href="/kr/sub.html?pid=184">상영시간표</a></li>
<li><a href="/kr/sub.html?pid=185">티켓예매</a></li>
<li><a href="/kr/sub.html?pid=186">티켓안내</a></li>
<li><a href="/kr/sub.html?pid=194">프로그램 가이드</a></li>
</ul></div>
</li>
<li><a href="/kr/sub.html?pid=8">상시사업<span class="iconPlus"></span></a>
<div class="subMenu"><ul>
<li><a href="/kr/sub.html?pid=62">전국학생만화 애니메이션대전/공모전</a></li>
<li><a href="/kr/sub.html?pid=63">BIAF365애니시네마</a></li>
<li><a href="/kr/sub.html?pid=64">애니문화읽기</a></li>
</ul></div>
</li>
<li><a href="/kr/sub.html?pid=6">커뮤니티<span class="iconPlus"></span></a>
<div class="subMenu"><ul>
<li><a href="/kr/sub.html?pid=52">공지사항</a></li>
<li><a href="/kr/sub.html?pid=53">입찰공고</a></li>
<li><a href="/kr/sub.html?pid=54">보도자료</a></li>
<li><a href="/kr/sub.html?pid=55">뉴스레터</a></li>
<li><a href="/kr/sub.html?pid=56">Q&A</a></li>
<li><a href="/kr/sub.html?pid=57">자원활동가</a></li>
</ul></div>
</li>
</ul>

</div>
</nav>




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
                        <a href="/kr/sub.html?pid=55">자원활동가</a>
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





                    <div class="tnb" id="userarea">
                        <ul>
							  <li><a href="#"  onclick="goLogin();" >로그인</a></li>
                            <li><a href="#" target="_blank" onclick="goMypage();">마이페이지</a></li>
							                            <li><a href="/en/">ENGLISH</a></li>
                        </ul>
                        <p class="btnSiteMap"><a href="#">사이트맵</a></p>
                    </div>
                </div>
            </div>
        </header>
        <aside class="sideNav">
            <ul class="snsList">
                <li class="sns01"><a href="https://www.instagram.com/biaf.ani" target="_blank">인스타그램</a></li>
                <li class="sns02"><a href="https://www.facebook.com/ani.biaf" target="_blank">페이스북</a></li>
                <li class="sns03"><a href="https://twitter.com/biaf2017" target="_blank">트위터</a></li>
                <li class="sns04"><a href="https://www.youtube.com/user/anipisaf" target="_blank">유튜브</a></li>
            </ul>
            <ul class="quickMenu">
                <li class="quick07"><a href="/kr/sub.html?pid=174">부스<br>배치도</a></li>
                <li class="quick04"><a href="/kr/sub.html?pid=19">오시는길</a></li>
                <li class="quick06"><a href="/kr/sub.html?pid=51">굿즈</a></li>
            </ul>
            <a href="#homePage" class="btnTop"><img src="${pageContext.request.contextPath}/resources/images/btn_top.png" alt="TOP"></a>
        </aside>
        
        
      <div id="fullpage" class="fullpage-wrapper" style="height: 100%; position: relative; transform: translate3d(0px, 0px, 0px); touch-action: none;">
            <section id="section0" class="section color2022 fp-section active fp-table fp-completely" data-anchor="homePage" style="height: 944px; padding-top: 88px; background-color: rgb(180 81 81);">
            	<div class="fp-tableCell" style="height: 944px !important; background-image:url(${pageContext.request.contextPath}/resources/images/002.jpg); !important">
				 
						                 <div class="mainVisual mainTop" style="display: none;">
                    <a href="#" style="background-image:url(${pageContext.request.contextPath}/resources/images/spellonyou.jpg);">
                        <p class="visualImg">
                            <picture>
                             <!--    <source media="(max-width: 960px)" srcset="/img/main_2022/img_visual2022_mo.jpg">
                                <img src="" alt="꼬마 니콜라"> -->
                            </picture>
                        </p>
						<div class="visualTxt">
                            <p class="stit">Louis Vuitton</p>
                            <h4>SPELL ON YOU<span></span></h4>
                            <p class="more">VIEW MORE</p>
                        </div>
                    </a>
                </div>
                
          	
			 <div class="mainSection mainTop" >
                    <!-- h3 class="tit"># BIAF 미디어관</h3 -->
                    <div class="mainSlide">
                        <div class="mainFor">
                            <div class="slider">
								<!--
								<div class="item">
                                    <div class="video">
                                        <iframe data-ssrc="https://www.youtube.com/embed/cuIR0lVsZV0" title="BIAF2021 하이라이트 영상" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                    <p class="midiaTit"><span>BIAF2021 작품 하이라이트</span></p>
                                </div>
								-->
								<div class="item">
                                    <div class="video">
                                        <iframe data-ssrc="https://www.youtube.com/embed/NiqUAmStcfs" title="BIAF2022 트레일러" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                    <p class="midiaTit"><span>[다슈X차은우] DASHUXCHA EUN-WOO <br>아쿠아 다이브</span></p>
                                </div>
								<div class="item">
                                    <div class="video">
                                        <iframe data-ssrc="https://www.youtube.com/embed/0XNLob4LmUA" title="BIAF 2022 하이라이트 영상(EPK)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                    <p class="midiaTit"><span>YSL LIBRE</span></p>
                                </div>
								<div class="item">
                                    <div class="video">
                                        <iframe data-ssrc="https://www.youtube.com/embed/eblAcAObqYw" title="BIAF2022 Highlight Film" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                    <p class="midiaTit"><span>CELINE HAUTE PARFUMERIE </span></p>
                                </div>
                              </div>
                        </div>
                        
                        <div class="mainNav">
                            <div class="slider">
								<!--
								<div class="item">
                                    <a href="javascript:;">
                                        <div class="thumb">
                                            <img src="http://img.youtube.com/vi/cuIR0lVsZV0/mqdefault.jpg" alt="">
                                        </div>
                                        <p class="midiaTit dottxt">BIAF2021 작품 하이라이트 </p>
                                        <p class="time">4 : 49</p>
                                    </a>
                                </div>
								-->
								
								
								
								<div class="item">
                                    <a href="javascript:;">
                                        <div class="thumb">
                                            <img src="${pageContext.request.contextPath}/resources/images/eunwoo.jpg" alt="">
                                        </div>
                                        <p class="midiaTit dottxt">BIAF2022 트레일러</p>
                                        <p class="time">0 : 40</p>
                                    </a>
                                </div>
								<div class="item">
                                    <a href="javascript:;">
                                        <div class="thumb">
                                            <img src="${pageContext.request.contextPath}/resources/images/ysldualipa.jpg" alt="">
                                        </div>
                                        <p class="midiaTit dottxt">BIAF 2022 하이라이트 영상(EPK)</p>
                                        <p class="time">3 : 32</p>
                                    </a>
                                </div>
								<div class="item">
                                    <a href="javascript:;">
                                        <div class="thumb">
                                            <img src="${pageContext.request.contextPath}/resources/images/celinelisa.jpg" alt="">
                                        </div>
                                        <p class="midiaTit dottxt">BIAF2022 Highlight Film</p>
                                        <p class="time">5 : 34</p>
                                    </a>
                                </div>
                               </div>
                            <div class="pager">
                                <button type="button" class="prev">이전</button>
                                <button type="button" class="next">다음</button>
                            </div>
                        </div>
                    </div>
                </div>                <div class="mainPager">
                    <button type="button" class="prev" data-visual="mainVisual">prev</button>
                    <button type="button" class="next" data-visual="mainSection">next</button>
                </div>
               <div class="">
                    <div class="">
                  
            
                    
                   
                        <div class="">
    
                        
                        </div>
                    </div>
                </div>
            </div>
            </section>
            <section id="section1" class="section" style="background-image:url(${pageContext.request.contextPath}/resources/images/003.jpg);">
                <div class="programWrap">
                    <div class="sectionTit">
                        <p><img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDJfMjc5/MDAxNjA0MjkzMjEzODM3.WISPFery1EmVckylvGY5RprHMms7I0VMZF9eCPjblsAg.j-tPj4aQsYXhOhuNcK3HCWe0UKHM-xBmub9mSB6JG3wg.JPEG.esom1225/Screenshot_2020-11-02_at_13.57.41.jpg?type=w800" alt="BIAF 2022"></p>
                        <h2><strong>체험</strong> 프로그램안내</h2>
                    </div>
				
					
				                 
                    <div class="programLink clearfix">
                        <ul class="programInfo">
                      
                            <li class="first">
                                <a href="/kr/sub.html?pid=174">
                                    <picture>
                                        <source media="(max-width: 960px)" srcset="/img/main_2022/img_program_bn01_mo.jpg">
                                        <img src="${pageContext.request.contextPath}/resources/images/img_program_bn01.jpg" alt="부스배치안">
                                        
                                    </picture>
                                </a>
                            </li>
                            <li class="second">
                                <!-- a href="/kr/sub.html?pid=59" onclick="alert('예매 준비중입니다.'); return false;" -->
                                <a href="/kr/sub.html?pid=185">
                                    <picture>
                                        <source media="(max-width: 960px)" srcset="/img/main_2022/img_program_bn02_mo.jpg">
                                        <img src="${pageContext.request.contextPath}/resources/images/img_program_bn02.jpg" alt="티켓예매 티켓 예매 방법 및 혜택 등 안내">
                                    </picture>
                                </a>
                            </li>
                        </ul>
                        <ul class="eventSlide">
							<li>
                                <a href="/kr/sub.html?pid=51">
                                    <picture>
                                        <source media="(max-width: 960px)" srcset="/img/main_2022/img_program_bn03_mo.jpg">
                                        <img src="${pageContext.request.contextPath}/resources/images/img_program_bn03.jpg" alt="비아프 2022 굿즈. 아기자기하고 실용적인 굿즈">
                                    </picture>
                                </a>
                            </li>
                         </ul>
                    </div>
                </div>
            </section>
            <section id="section3" class="section">
                <div class="boardBanner">
                    <div class="latestWrap clearfix">
                       <ul class="tabBtn">
                           <li class="active"><a href="javascript:;" data-tab="tab1">공지사항</a></li>
                           <li><a href="javascript:;" data-tab="tab2">보도자료</a></li>
                       </ul>
                        <div id="tab1" class="left tabCon active">
                            <h3>공지사항</h3>
							<div class="latestTop">
<span class="date">2022-12<em>10</em></span>
<a href="/kr/sub.html?pid=52&amp;table_id=notice&amp;formtype=view&amp;code=2607">
<p class="tit">BIAF2022 국제경쟁 수상작 발표</p>
<p class="dottxt">
</p>
</a>
</div>
<ul class="postListMain">
<li><a href="/kr/sub.html?pid=52&amp;table_id=notice&amp;formtype=view&amp;code=2605">
[SC2022] 본선심사 결과 안내</a>
</li>
<li><a href="/kr/sub.html?pid=52&amp;table_id=notice&amp;formtype=view&amp;code=2604">
[SC2022] 단편애니메이션제작지원 본선심사 결과 안내</a>
</li>
<li><a href="/kr/sub.html?pid=52&amp;table_id=notice&amp;formtype=view&amp;code=2601">
[안내] SC2022 장편 수상작 상영작 리스트</a>
</li>
<li><a href="/kr/sub.html?pid=52&amp;table_id=notice&amp;formtype=view&amp;code=2599">
SC2022 애니메이션 유튜브 접속 링크 및 책자 파일 공유</a>
</li>
<li><a href="/kr/sub.html?pid=52&amp;table_id=notice&amp;formtype=view&amp;code=2587">
SC2022 제4회 나도 감독! ‘11초 애니메이션영화제’ 수상작 발표</a>
</li>
<li><a href="/kr/sub.html?pid=52&amp;table_id=notice&amp;formtype=view&amp;code=2586">
BIAF2022 단편애니메이션제작지원 예선심사 결과안내</a>
</li>
                </ul>
				<a href="/kr/sub.html?pid=52" class="btnMore">더보기</a>                        </div>
                        <div id="tab2" class="right tabCon">
                            <h3>보도자료</h3>
							<div class="latestTop">
<span class="date">2022-12<em>09</em></span>
<a href="/kr/sub.html?pid=54&amp;table_id=press&amp;formtype=view&amp;code=2624">
<p class="tit">(사)한국만화애니메이션학회 제14대 학회장으로 선출된 서채환 교수, BIAF 조직위원장 연임</p>
<p class="dottxt">
	
		
			
			PRESS. 56
			
		
		
			
		
		
			
		
		
			
			(사)한국만화애니메이션학회 제14대 학회장으로 선출된
			서채환 교수, BIAF 조직위원장 연임
			
		
		
			
			
				
					
						
					
					
						▲ BIAF 조직위원장 서채환 교수
					
				
			
			
		
		
			지난, 2022년 12월 10일 (사)한국만화애니메이션학회 정기총회에서 제14대 학회장으로 선출된 서채환 교수가 부천국제애니메이션페스티벌 조직위원장에 연임되었다. 임기는 2023년 1월 1일부터 2024년 12월 31일까지 2년간이다.
			
			서채환 조직위원장은 아카데미아트오브유니버스티(AAU) 석사, 중앙대학교 첨단영상대학원 영상예술학 박사 학위를 받았으며, 현 가톨릭대학교 미디어기술콘텐츠학과 교수로 재직 중이다. 방송통신위원회 애니메이션인증위원회 위원장, 한국만화영상진흥원 이사, BIAF 집행위원장, 제12대 BIAF 조직위원장 등을 역임했다.
			
			BIAF 서채환 조직위원장은 &quot;25주년을 맞이하는 부천국제애니메이션페스티벌의 안정적이고 성공적인 개최를 위해 집행부 및 사무국 직원들과의 소통과 화합으로 세계적인 영화제를 만들 수 있도록 최선을 다하겠다&quot;라고 소감을 밝혔다.
			
			한편, 아카데미 공식 지정 국제영화제 BIFA2023는 10월 20일부터 25일까지 5일간 개최될 예정이다.
		
		
			TRAILER
		
		
			
			&nbsp;

			영상이 보이지 않을 경우 여기를 눌러주세요
			
		
		
			INFORMATION
		
		
			
			
				명 칭 :&nbsp;제24회 부천국제애니메이션페스티벌(BIAF2022)
				&nbsp;The 24th&nbsp;Bucheon International Animation Festival
				기 간 :&nbsp;2022.10.21.(금) ~ 10.25.(화) 5일간
				장 소 :&nbsp;한국만화박물관, CGV 부천, 판타스틱큐브, 현대백화점 중동점 등 부천 일대
				성 격 :&nbsp;국제경쟁을 중심으로 하는 애니메이션영화제
				목 적 :&nbsp;아카데미 공식지정 국제영화제로서 애니메이션 장르 매력을 전파하고,
				&nbsp;애니메이션의 예술과 산업의 중심 역할을 하는 권위있는 애니메이션 영화제
			
			
		
		
			DOWNLOAD
		
		
			
			
				
					
						글자료&nbsp;사진자료&nbsp;포스터&nbsp;트레일러&nbsp;보도자료집&nbsp;하이라이트 영상&nbsp;홍보대사 수현 추천작 영상
					
				
			
			
		
		
			LAST PRESS
		
		
			
			[ Press.51] BIAF2022 워크 인 프로그레스의 &lsquo;극장판 유미의 세포들&rsquo;과 &lsquo;카타부치 스나오 Next Work&rsquo;, 스페셜 토크: 어느 남매의 이야기&rsquo;, &lsquo;잡 세미나&rsquo; 등 개최 성료!

			[BIAF Press.52] BIAF2022 수상 결과 발표! 장편 대상 &lt;개와 이탈리아 사람은 출입할 수 없음&gt; 수상!

			[BIAF Press.53] 애니메이션 활성화 사업을 위한 BIAF2022 애니페어 프로그램 선정작 발표!

			[BIAF Press.54] BIAF2023에 만날 특별한 작품들! - 애니페어 단편 및 장편애니메이션제작지원 선정작

			[BIAF Press.55] 애니메이션 활성화를 위한 BIAF 애니페어 프로그램 장편애니메이션 제작지원작 &lt;아가미&gt; 중간 평가

			01&nbsp;02&nbsp;03&nbsp;04&nbsp;05&nbsp;06&nbsp;07&nbsp;08&nbsp;09&nbsp;10&nbsp;11&nbsp;12&nbsp;13&nbsp;14&nbsp;15&nbsp;16&nbsp;17&nbsp;18&nbsp;19&nbsp;20&nbsp;21&nbsp;22&nbsp;23&nbsp;24&nbsp;25&nbsp;26&nbsp;27&nbsp;28&nbsp;29&nbsp;30&nbsp;31&nbsp;32&nbsp;33&nbsp;34&nbsp;35&nbsp;36&nbsp;37&nbsp;38&nbsp;39&nbsp;40&nbsp;41&nbsp;42&nbsp;43&nbsp;44&nbsp;45&nbsp;46&nbsp;47&nbsp;48&nbsp;49&nbsp;50&nbsp;51&nbsp;52&nbsp;53&nbsp;54&nbsp;55
			
		
		
			
			14505 경기도 부천시 길주로 1 한국만화영상진흥원 비즈니스센터 302호
			www.biaf.or.kr
			TEL 032.325.2061~2 / FAX 032.325.2072
			Copyright (C) BIAF rights reserved
			
		
	

</p>
</a>
</div>
<ul class="postListMain">
<li><a href="/kr/sub.html?pid=54&amp;table_id=press&amp;formtype=view&amp;code=2612">
애니메이션 활성화 사업을 위한 BIAF2022 애니페어 프로그램 선정작 발표!</a>
</li>
<li><a href="/kr/sub.html?pid=54&amp;table_id=press&amp;formtype=view&amp;code=2609">
BIAF2022 수상 결과 발표! 장편 대상 &lt;개와 이탈리아 사람은 출입할 수 없음&gt; 수상!</a>
</li>
<li><a href="/kr/sub.html?pid=54&amp;table_id=press&amp;formtype=view&amp;code=2606">
BIAF2022 워크 인 프로그레스, ‘스페셜 토크: 어느 남매의 이야기’, ‘잡 세미나’ 등 개최 성료!</a>
</li>
<li><a href="/kr/sub.html?pid=54&amp;table_id=press&amp;formtype=view&amp;code=2603">
BIAF2022 관객과 함께 즐기고 소통한 주말 프로그램!</a>
</li>
<li><a href="/kr/sub.html?pid=54&amp;table_id=press&amp;formtype=view&amp;code=2600">
BIAF2022 개막식 성료! 10월 21일(금) 오후 6시 개막식 개최!</a>
</li>
<li><a href="/kr/sub.html?pid=54&amp;table_id=press&amp;formtype=view&amp;code=2598">
BIAF2022 내일 개막! 10월 21일(금) 오후 6시 개막식 개최!</a>
</li>
                </ul>
				<a href="/kr/sub.html?pid=54" class="btnMore">더보기</a>                        </div>
                    </div>
                    <div class="quickBanner">
                        <ul>
                            <li>
                                <a href="/kr/sub.html?pid=12"><img src="/img/main_2022/img_banner1.jpg" alt="24 BIAF2022 BUCHEON INTERNATIONAL ANIMATION FESTIVAL"></a>
                            </li>
                            <li>
                                <a href="/kr/sub.html?pid=92"><img src="/img/main_2022/img_banner2.jpg" alt="BIAF365 애니시네마"></a>
                            </li>
                            <li>
                                <a href="/kr/sub.html?pid=55"><img src="/img/main_2022/img_banner3.jpg" alt="BIAF 뉴스레터 신청"></a>
                            </li>
                        </ul>
                    </div>
                    <div class="sponSlider"> 
<div class="sponList">
<!-- div class="item"><a href="http://www.mcst.go.kr/" target="_blank"><img src="/img/main/banner_hu01.jpg" alt="문화체육관광부"></a></div -->
<div class="item"><a href="http://kofice.or.kr/" target="_blank"><img src="/img/main/banner_hu62.jpg" alt="KOFICE 한국국제문화교류진흥원"></a></div>
<div class="item"><a href="https://kor-chn-year.or.kr/" target="_blank"><img src="/img/main/banner_hu63.jpg" alt="한중문화교류의해 공식인증사업"></a></div>
<!-- div class="item"><a href="https://www.gg.go.kr/" target="_blank"><img src="/img/main/banner_hu51.jpg" alt="경기도"></a></div -->
<div class="item"><a href="http://www.bucheon.go.kr/" target="_blank"><img src="/img/main/banner_hu03.jpg" alt="Fantasia. 판타지아 부천"></a></div>
<div class="item"><a href="http://council.bucheon.go.kr/" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/banner_hu04" alt="부천시의회"></a></div>
<div class="item"><a href="http://www.gcon.or.kr/" target="_blank"><img src="/img/main/banner_hu07.jpg" alt="경기콘텐츠진흥원"></a></div>
<div class="item"><a href="http://www.unifrance.org/" target="_blank"><img src="/img/sub/intro/lg_biaf2022_01.png" alt="uniFrance"></a></div>
<div class="item"><a href="http://www.komacon.kr/" target="_blank"><img src="/img/main/banner_hu06.jpg" alt="한국만화영상진흥원"></a></div>
<div class="item"><a href="http://www.ambafrance-kr.org/" target="_blank"><img src="/img/sub/intro/lg_biaf2022_02.png" alt="프랑스 대사관"></a></div>
<div class="item"><a href="https://www.jpf.or.kr/index/" target="_blank"><img src="/img/sub/intro/lg_biaf2022_03.png" alt="JAPANFOUNDATION SEOUL"></a></div>
<div class="item"><a href="http://www.kafa.ac/" target="_blank"><img src="/img/sub/intro/lg_biaf2022_04.png" alt="KAFA 한국영화아카데미"></a></div>
<div class="item"><a href="http://www.annecy.org/" target="_blank"><img src="/img/sub/intro/lg_biaf2022_05.png" alt="ANNECY festival mifa"></a></div>
<div class="item"><a href="http://www.animafest.hr/" target="_blank"><img src="/img/sub/intro/lg_biaf2022_06.png" alt="ANIMAFEST ZAGREB"></a></div>
<div class="item"><a href="https://animafestival.be/en" target="_blank"><img src="/img/sub/intro/lg_biaf2022_07.png" alt="aNiMA - Brussels International Animation Film Festival"></a></div>
<div class="item"><a href="https://www.facebook.com/FeinakiBeijing" target="_blank"><img src="/img/sub/intro/banner_hu106.png" alt="feinaki"></a></div>
<div class="item"><a href="https://corp.toei-anim.co.jp/en/index.html" target="_blank"><img src="/img/sub/intro/lg_biaf2022_08.png" alt="TOEI ANIMATION"></a></div>
<div class="item"><a href="https://postvoyager.com/" target="_blank"><img src="/img/sub/intro/banner_hu42.png" alt="POST VOYAGER"></a></div>
<div class="item"><a href="http://www.koreaanimation.or.kr/" target="_blank"><img src="/img/main/banner_hu25.jpg" alt="KAPA (사)한국애니메이션제작자협회. www.koreaanimation.or.kr"></a></div>
<div class="item"><a href="http://k-animation.or.kr/" target="_blank"><img src="/img/sub/intro/lg_biaf2022_17.png" alt="KAIA 한국 애니메이션산업협회(KOREA ANIMATION INDUSTRY ASSOCIATION)"></a></div>
<div class="item"><a href="http://www.mediacastle.co.kr/" target="_blank"><img src="/img/main/banner_hu24.jpg" alt="Media Castle"></a></div>
<div class="item"><span><img src="/img/sub/intro/lg_biaf2022_09.png" alt="earlybird"></span></div>
<div class="item"><a href="https://www.mappa.co.jp/" target="_blank"><img src="/img/sub/intro/lg_biaf2022_10.png" alt="MAPPA"></a></div>
<div class="item"><a href="https://www.posa.or.kr/portal/main/main.do" target="_blank"><img src="/img/sub/intro/lg_biaf2022_16.png" alt="한국우편사업진흥원"></a></div>
<div class="item"><a href="http://www.sinhancorp.co.kr/" target="_blank"><img src="/img/sub/intro/banner_gs01.png" alt="신한커머스" /></a></div>
<div class="item"><a href="https://www.derwentart.us/" target="_blank"><img src="/img/sub/intro/banner_gs02.png" alt="DERWENT" /></a></div>
<div class="item"><a href="https://www.prismacolor.com/" target="_blank"><img src="/img/sub/intro/banner_gs03.png" alt="PRISMACOLOR" /></a></div>
<div class="item"><a href="https://www.liquitex.com/" target="_blank"><img src="/img/sub/intro/banner_gs04.png" alt="Liquitex" /></a></div>
<div class="item"><a href="https://www.marabu-inks.com/" target="_blank"><img src="/img/sub/intro/banner_gs05.png" alt="Marabu" /></a></div>
<div class="item"><a href="https://www.winsornewton.com/" target="_blank"><img src="/img/sub/intro/banner_gs06.png" alt="WINSOR NEWTON"></a></div>
<div class="item"><a href="https://www.stillmanandbirn.com/" target="_blank"><img src="/img/sub/intro/banner_gs07.png" alt="Stillman & birn"></a></div>
<div class="item"><a href="https://www.kuretakezig.us/" target="_blank"><img src="/img/sub/intro/banner_gs08.png" alt="ZIG" /></a></div>
<div class="item"><a href="https://www.ilhwa.co.kr/40" target="_blank"><img src="/img/sub/intro/banner_gs09.png" alt="Sharpie"></a></div>
<div class="item"><a href="https://fr.canson.com/" target="_blank"><img src="/img/sub/intro/banner_gs10.png" alt="CANSON" /></a></div>
<div class="item"><a href="http://www.ehyundai.com/newPortal/DP/DP000000_V.do?branchCd=B00143000" target="_blank"><img src="/img/sub/intro/lg_biaf2022_11.png" alt="현대백화점 중동점" /></a></div>
<div class="item"><a href="http://www.dhl.co.kr/" target="_blank"><img src="/img/main/banner_go01.jpg" alt="DHL"></a></div>
<div class="item"><a href="http://www.cgv.co.kr" target="_blank"><img src="/img/main/banner_go02.jpg" alt="CGV"></a></div>
<div class="item"><a href="https://www.redcross.or.kr/" target="_blank"><img src="/img/sub/intro/banner_pr08.jpg" alt="대한적십자"></a></div>
<div class="item"><a href="https://www.redcross.or.kr/" target="_blank"><img src="/img/sub/intro/banner_pr07.jpg" alt="대한적십자-아세아태평양"></a></div>
<div class="item"><a href="http://www.ebs.co.kr/" target="_blank"><img src="/img/sub/intro/banner_mi01.jpg" alt="EBS"></a></div>
<div class="item"><a href="http://www.cine21.com/" target="_blank"><img src="/img/sub/intro/banner_mi05.jpg" alt="씨네21"></a></div>
<div class="item"><a href="https://www.youtube.com/channel/UCWqFNT_qBT5BX_rQfRrNkwg" target="_blank"><img src="/img/sub/intro/lg_biaf2022_12.png" alt="반다이남코 코리아" /></a></div>
<div class="item"><a href="https://www.bandainamco.co.jp/" target="_blank"><img src="/img/sub/intro/lg_biaf2022_13.png" alt="반다이남코 엔터테인먼트 코리아" /></a></div>
<div class="item"><a href="http://www.nextinfra-studio.com/" target="_blank"><img src="/img/sub/intro/banner_fs01.png" alt="NEXTINFRA STUDIO"></a></div>
<div class="item"><a href="http://www.dapharm.com/" target="_blank"><img src="/img/sub/intro/banner_fs02.png" alt="박카스젤리"></a></div>
<div class="item"><a href="https://collecte.co.kr/" target="_blank"><img src="/img/sub/intro/banner_gs11.png" alt="COLLECTE®"></a></div>
<div class="item"><a href="https://www.specialdelivery.co.kr/" target="_blank"><img src="/img/sub/intro/banner_gs121.png" alt="배달특급"></a></div>
<div class="item"><a href="http://www.cocomics.co.kr/" target="_blank"><img src="/img/sub/intro/banner_go06.jpg" alt="코코믹스"></a></div>
<div class="item"><a href="http://www.inno-n.com/" target="_blank"><img src="/img/sub/intro/banner_fs04.png" alt="Leblen"></a></div>
<div class="item"><a href="http://www.inno-n.com/" target="_blank"><img src="/img/sub/intro/banner_fs05.png" alt="쌔싹보리"></a></div>
<div class="item"><a href="https://www.marriott.com/en-us/hotels/selcy-courtyard-seoul-times-square/overview/?scid=bb1a189a-fec3-4d19-a255-54ba596febe2&y_source=1_MzgxMzkwMi03MTUtbG9jYXRpb24ud2Vic2l0ZQ%3D%3D" target="_blank"><img src="/img/sub/intro/banner_fs03.png" alt="COURTYARD BY MARRIOTT Seoul Times Square"></a></div>
<div class="item"><a href="http://www.ksdb.co.kr/" target="_blank"><img src="/img/main/banner_of04.jpg" alt="국순당"></a></div>
<div class="item"><a href="http://www.sparklewater.net/" target="_blank"><img src="/img/sub/intro/banner_fs06.png" alt="스파클"></a></div>
<div class="item"><a href="http://semicolon.minumsa.com/" target="_blank"><img src="/img/sub/intro/lg_biaf2022_14.png" alt="세미콜론" /></a></div>
<div class="item"><a href="http://minumsa.minumsa.com/" target="_blank"><img src="/img/sub/intro/lg_biaf2022_15.png" alt="민음사" /></a></div>
<div class="item"><a href="https://www.mgood.co.kr/" target="_blank"><img src="/img/main/banner_hu60.jpg" alt="엠굿"></a></div>
<div class="item"><a href="https://www.cjolivenetworks.co.kr/" target="_blank"><img src="/img/main/banner_of12.jpg" alt="CJ올리브네트웍스"></a></div>
<div class="item"><a href="http://www.mkcard.co.kr/" target="_blank"><img src="/img/main/banner_hu61.jpg" alt="메이커카드"></a></div>
<div class="item"><a href="http://www.hotelkoryo.net/" target="_blank"><img src="/img/main/banner_pa01.jpg" alt="고려호텔"></a></div>
<div class="item"><a href="http://www.polarishotel.co.kr/" target="_blank"><img src="/img/main/banner_pa02.jpg" alt="폴라리스호텔"></a></div>
</div>

                        <ul class="sponControl">
                            <li class="prev"><button type="button">이전</button></li>
                            <li class="next"><button type="button">다음</button></li>
                        </ul>
                    </div>
                </div>
            </section>
        
        
        
         <jsp:include page="common/footer.jsp"/>
         </div>
    </div>
    <div id="pageNav">
        <ul>
            <li data-menuanchor="homePage" class="active"><a href="#homePage">01</a></li>
            <li data-menuanchor="firstPage"><a href="#firstPage">02</a></li>
            <li data-menuanchor="secondPage"><a href="#secondPage">03</a></li>
            <li data-menuanchor="3rdPage"><a href="#3rdPage">04</a></li>
        </ul>
    </div>
    <div class="overlayBg"></div>
    
     <script>
        	function goLogin(){
        		location.href="loginForm.me";
        	}
        	
        	function goLogout(){
        		location.href="logout.me";
        	}
        	
        	function goMypage(){
        		location.href="myPage.me";
        	}
        	
        	function goMycomPage(){
        		location.href="mypage.co";
        	}
        	
        	function goQnA(){
        		location.href="qna.cu";
        	}
        </script>
    
</body>

</html>
<!-- popup start //-->
<!--<script type="text/javascript">
//<![CDATA[
var winopenPop1;
if( notice_getCookie("Pop1")!="done")
{
    winopenPop1 = window.open('/pgm/popup/index.html?code=1','Pop1','top=10,left=10,width=458,height=485,scrollbars=no');
    if(!winopenPop1)
    {
    }
}
//]]>
</script>-->
<!-- popup end //-->
