<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
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
    
    * {
        margin: 0;
        padding: 0;
        list-style: none;
       
    } 
    .outer1{
        width: 70%;
        align-items: center;
        margin-left: 280px;
        
    }
    .sachetA {
        text-decoration: none;
        color:#333;
    }
    #top{
        height: 100px;
    }
    #logo{
        float: left;
        font-size: 60px;
        margin-top: 10px;
        margin-left: 40px;
    }
    #userarea{
        float: right;
        margin-top: 80px;
        margin-left: 0;
        width: 300px;
    }
    #sachetNav {
        width: 100%;
        mask-image: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, #FFFFFF 25%, #FFFFFF 75%, rgba(255, 255, 255, 0) 100%);
        margin: 0 auto;
        margin-top: 80px;
        background-color: white;
        
        }
    #sachetNav #nav1 {
    text-align: center;
    background: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0.2) 25%, rgba(255, 255, 255, 0.2) 75%, rgba(255, 255, 255, 0) 100%);
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
    background-color: white;
    }
    #sachetNav #nav1 .nav2 {
        float:left;
        width:180px;
        position:relative;
        background-color: white;
    }
    #sachetNav #nav1 .nav2 .sachetA {
        padding: 10px;
        color: rgba(0, 35, 122, 0.5);
        font-size: 18px;
        text-decoration: none;
        display: block;
        background-color: white;
   }
        #sachetNav #nav1 .nav2 .sachetA:hover {
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
        background: rgba(255, 255, 255, 0.1);
        color: rgba(0, 35, 122, 0.7);
        display: block;
        background-color: white;
   }
    #sachetNav #nav1 .nav2 ul {
        width:100%;
        display:none;
        position: absolute;
        font-size:14px;
        background-color: white;
    }
    #sachetNav #nav1 .nav2:hover .nav3 {
        display:block;
        background-color: white;
    }
    #sachetNav #nav1 .nav2 .nav3 li:hover {
        transition: ease 1s;
        background-color: white;
        }
    #userarea ul li{
        float: left;
        margin-left: 40px;
        
    }
    #userarea ul li img{
        width: 25px;
    }
     #userarea ul li:hover{
    	cursor:pointer;
    }
    
    @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    
    *{
    	font-family: 'IBM Plex Sans KR', sans-serif;
    }
    
    #gomain:hover{
    	cursor:pointer;
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

    <div id="wrap">
    
        <header id="header">
            <div class="headerWrap">
               
                
                
                
                
                
                
                
               	
	<c:if test="${not empty alertMessage }">
	<script>
		alert("${alertMessage}");
	</script>
		<c:remove var="alertMessage" scope="session"/>
	</c:if>
	
    <div class="outer1" style="width:100%">
    <div id="top">
        <div id="logo">
            <img id="gomain" onclick="location.href='${pageContext.request.contextPath}/index.jsp'" src="${pageContext.request.contextPath}/resources/images/로고10.png" alt="" width="300px;">
        </div>
        <div id="userarea">
       <c:if test="${not empty loginUser }">
       		${loginUser.userName }님, 안녕
       </c:if>
            <ul>
            	<c:choose>
            	<c:when test="${empty loginUser }">
                <li><img src="${pageContext.request.contextPath}/resources/images/login.png" alt="" onclick="goLogin();"></li>
                </c:when>
                <c:otherwise>
	                 <li><img src="${pageContext.request.contextPath}/resources/images/logout.png" alt=""  style="width:28px;" onclick="goLogout();"></li>
	                <c:choose>
	                <c:when test="${loginUser.userNo>1000 }">       
	                 <li><img src="${pageContext.request.contextPath}/resources/images//user.png" alt="" onclick="goMypage();"></li>
	                </c:when>
	                <c:otherwise>
	                <li><img src="${pageContext.request.contextPath}/resources/images//user.png" alt="" onclick="goMycomPage();"></li>
	                </c:otherwise>
	                </c:choose>
                </c:otherwise>
                </c:choose>
                <li><img src="${pageContext.request.contextPath}/resources/images/shopping-cart.png" alt=""></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/settings.png" alt="" onclick="goSettingPage();"></li>
            </ul>
        </div>
        
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
        	
        	function goSettingPage(){
        		location.href="boothSetting.boo";
        	}
        	
        </script>
        
  
        
    </div>
   
   
    <nav id="sachetNav" style="background-color:white;">
		<ul id="nav1">
			<li class="nav2"><a class="sachetA" href="#">Sachet</a>
				<ul class="nav3">
					<li><a class="sachetA" href="#">About Sachet</a></li>
					<li><a class="sachetA" href="noticeListView.no">공지사항</a></li>
					<li><a class="sachetA" href="map.sc">찾아오시는 길</a></li>
				</ul>
			</li>
			<li class="nav2"><a class="sachetA"  href="ticketInfo.ti">Ticketing</a>
				<ul class="nav3">
					<li><a class="sachetA" href="ticketInfo.ti">티켓 안내 </a></li>
					<li><a class="sachetA" href="ticketBook1.ti">티켓 예매</a></li>
				</ul>
			</li>
			<li class="nav2"><a class="sachetA" href="#">Product</a>
				<ul class="nav3">
					<li><a class="sachetA" href="boothListView.bo">BOOTH</a></li>
					<li><a class="sachetA" href="productListView.pro">PRODUCT</a></li>
					<li><a class="sachetA" href="experienceListView.exp">EXPERIENCE</a></li>
				</ul>
			</li>
			<li class="nav2"><a class="sachetA"  href="#">Booth Info</a>
				<ul class="nav3">
					<li><a class="sachetA" href="boothParticipatingInfo.bo">부스 참가 안내</a></li>
					<li><a class="sachetA" href="#">SUB_MENU2</a></li>
					<li><a class="sachetA" href="#">SUB_MENU3</a></li>
				</ul>
			</li>
			<li class="nav2"><a class="sachetA" href="#">Help</a></li>
		</ul>
	</nav>
</div> 
                
                
                
                
                
                
                
                
                
                
                
                
                   
                   
               
            </div>
        </header>
        
        
        <!-- 사이드 네비바 -->
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
        <!-- 사이드 네비바 끝 -->
        
        
      <div id="fullpage" class="fullpage-wrapper" style="height: 100%; position: relative; transform: translate3d(0px, 0px, 0px); touch-action: none;">
            
            
            <!-- 섹션1 시작 -->
            <section id="section0" class="section color2022 fp-section active fp-table fp-completely" data-anchor="homePage" style="height: 944px; padding-top: 88px; background-color: rgb(180 81 81)" >
            	<div class="fp-tableCell" style="height: 944px !important; background-image:url(${pageContext.request.contextPath}/resources/images/002.jpg); !important">
				 
				<div class="mainVisual mainTop" style="display: none;">
                    <a href="#" style="background-image:url(${pageContext.request.contextPath}/resources/images/spellonyou.jpg);">
                    </a>
                
						<div class="visualTxt">
                            <p class="stit">Louis Vuitton</p>
                            <h4>SPELL ON YOU<span></span></h4>
                            <p class="more">VIEW MORE</p>
                        </div>
                </div>
                
          	
			 <div class="mainSection mainTop" >
                    <!-- h3 class="tit"># BIAF 미디어관</h3 -->
                    <div class="mainSlide">
                        <div class="mainFor">
                            <div class="slider" style="margin-top:200px;">
								
								<!-- 로딩 preloadResponse 오류 -->
								<div class="item">
                                    <div class="video">
                                        <iframe data-ssrc="https://www.youtube.com/embed/NiqUAmStcfs?rel=0&vq=hd720" title="[다슈X차은우] DASHUXCHA EUN-WOO" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                    <p class="midiaTit"><span>[다슈X차은우] DASHUXCHA EUN-WOO <br>아쿠아 다이브</span></p>
                                </div>
								<div class="item">
                                    <div class="video">
                                        <iframe data-ssrc="https://www.youtube.com/embed/0XNLob4LmUA" title="YSL LIBRE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                    <p class="midiaTit"><span>YSL LIBRE</span></p>
                                </div>
								<div class="item">
                                    <div class="video">
                                        <iframe data-ssrc="https://www.youtube.com/embed/eblAcAObqYw" title="CELINE HAUTE PARFUMERIE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                    <p class="midiaTit"><span>CELINE HAUTE PARFUMERIE </span></p>
                                </div>
                                <!-- 동영상 영역 끝 -->
                                
                                
                                
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
                                        <p class="midiaTit dottxt">[다슈X차은우] DASHUXCHA EUN-WOO</p>
                                        <p class="time">0 : 40</p>
                                    </a>
                                </div>
								<div class="item">
                                    <a href="javascript:;">
                                        <div class="thumb">
                                            <img src="${pageContext.request.contextPath}/resources/images/ysldualipa.jpg" alt="">
                                        </div>
                                        <p class="midiaTit dottxt">YSL LIBRE</p>
                                        <p class="time">3 : 32</p>
                                    </a>
                                </div>
								<div class="item">
                                    <a href="javascript:;">
                                        <div class="thumb">
                                            <img src="${pageContext.request.contextPath}/resources/images/celinelisa.jpg" alt="">
                                        </div>
                                        <p class="midiaTit dottxt">CELINE HAUTE PARFUMERIE</p>
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
                </div>
                
                
                
                
                <div class="mainPager">
                    <button type="button" class="prev" style="color:white;" data-visual="mainVisual">prev</button>
                    <button type="button" class="next" style="color:white;" data-visual="mainSection">next</button>
                </div>
               <div class="">
                    <div class="">
                  
            
                    
                   
                        <div class="">
    
                        
                        </div>
                    </div>
                </div>
            </div>
            </section>
            
            
            <!-- 섹션1 끝 -->
            
            
            
            <!--  섹션2 시작 -->
            <section id="section1" class="section" style="background-image:url(${pageContext.request.contextPath}/resources/images/003.jpg);">
                <div class="programWrap">
                    <div class="sectionTit" style="margin-top:100px;">
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
            <!-- 섹션2 끝 -->
            
            
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
				<a href="/kr/sub.html?pid=54" class="btnMore">더보기</a> 
				
				</div>
                    </div>
                    <div class="quickBanner">
                        <ul>
                            <li>
                                <a href="/kr/sub.html?pid=12"></a>
                            </li>
                            <li>
                                <a href="/kr/sub.html?pid=92"></a>
                            </li>
                            <li>
                                <a href="/kr/sub.html?pid=55"></a>
                            </li>
                        </ul>
                    </div>
                    <div class="sponSlider"> 
			<div class="sponList"></div>

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
