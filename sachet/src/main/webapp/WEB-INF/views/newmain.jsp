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
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon-2.ico" />

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
        <p><a href="#fullpage">?????? ????????????</a></p>
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
            <a href="${pageContext.request.contextPath}/index.jsp"><img id="gomain" src="${pageContext.request.contextPath}/resources/images/??????10.png" alt="" width="300px;"></a>
        </div>
        <div id="userarea">
       <c:if test="${not empty loginUser }">
       		${loginUser.userName }???, ???????????????.
       </c:if>
            <ul>
            	<c:choose>
            	<c:when test="${empty loginUser }">
                <li><a href="loginForm.me"><img src="${pageContext.request.contextPath}/resources/images/login.png" alt="" onclick="goLogin();"></a></li>
                </c:when>
                <c:otherwise>
	                 <li><a href="logout.me"><img src="${pageContext.request.contextPath}/resources/images/logout.png" alt=""  style="width:28px;" onclick="goLogout();"></a></li>
	                <c:choose>
	                <c:when test="${loginUser.userNo>1000 }">       
	                 <li><a href="myPage.me"><img src="${pageContext.request.contextPath}/resources/images//user.png" alt="" onclick="goMypage();"></a></li>
	                </c:when>
	                <c:otherwise>
	                <li><a href="mypage.co"><img src="${pageContext.request.contextPath}/resources/images//user.png" alt="" onclick="goMycomPage();"></a></li>
	                </c:otherwise>
	                </c:choose>
                </c:otherwise>
                </c:choose>
                <li><a href="selectCart.ca"><img src="${pageContext.request.contextPath}/resources/images/shopping-cart.png" alt=""></a></li>
                <li><a href="boothSetting.boo"><img src="${pageContext.request.contextPath}/resources/images/settings.png" alt="" onclick="goSettingPage();"></a></li>
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
        		location.href="myPageForm.me";
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
					<li><a class="sachetA" href="noticeListView.no">????????????</a></li>
					<li><a class="sachetA" href="map.sc">??????????????? ???</a></li>
				</ul>
			</li>
			<li class="nav2"><a class="sachetA"  href="ticketInfo.ti">Ticketing</a>
				<ul class="nav3">
					<li><a class="sachetA" href="ticketInfo.ti">?????? ?????? </a></li>
					<li><a class="sachetA" href="ticketBook1.ti">?????? ??????</a></li>
				</ul>
			</li>
			<li class="nav2"><a class="sachetA" href="#">Product & Exper</a>
				<ul class="nav3">
					<li><a class="sachetA" href="productListView.pro">??????</a></li>
					<li><a class="sachetA" href="experienceListView.exp">??????</a></li>
				</ul>
			</li>
			<li class="nav2"><a class="sachetA"  href="#">Booth Info</a>
				<ul class="nav3">
					<li><a class="sachetA" href="boothParticipatingInfo.bo">?????? ?????? ??????</a></li>
					<li><a class="sachetA" href="boothListView.bo">?????? ??????</a></li>
				</ul>
			</li>
			<li class="nav2"><a class="sachetA" href="#">Community</a>
				<ul class="nav3">
					<li><a class="sachetA" href="qnaListView.qo">Q&A</a></li>
					<li><a class="sachetA" href="list.qs">1:1??????</a></li>
					<li><a class="sachetA" href="volunteer.vo">???????????? ??????</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</div> 
                
                
                
                
                
                
                
                
                
                
                
                
                   
                   
               
            </div>
        </header>
        
        
        <!-- ????????? ????????? -->
        <aside class="sideNav">
            <ul class="snsList">
                <li class="sns01"><a href="https://www.instagram.com/" target="_blank">???????????????</a></li>
                <li class="sns02"><a href="https://www.facebook.com/" target="_blank">????????????</a></li>
                <li class="sns03"><a href="https://twitter.com/biaf" target="_blank">?????????</a></li>
                <li class="sns04"><a href="https://www.youtube.com/" target="_blank">?????????</a></li>
            </ul>
            <ul class="quickMenu">
                <li class="quick07"><a href="boothListView.bo">??????<br>??????</a></li>
                <li class="quick04"><a href="map.sc">????????????</a></li>
                <li class="quick06"><a href="productListView.pro">??????</a></li>
            </ul>
            <a href="#homePage" class="btnTop"><img src="${pageContext.request.contextPath}/resources/images/btn_top.png" alt="TOP"></a>
        </aside>
        <!-- ????????? ????????? ??? -->
        
        
      <div id="fullpage" class="fullpage-wrapper" style="height: 100%; position: relative; transform: translate3d(0px, 0px, 0px); touch-action: none;">
            
            
            <!-- ??????1 ?????? -->
            <section id="section0" class="section color2022 fp-section active fp-table fp-completely" data-anchor="homePage" style="height: 944px; padding-top: 88px; background-color: rgb(180 81 81)" >
            	<div class="fp-tableCell" style="height: 944px !important; background-image:url(${pageContext.request.contextPath}/resources/images/002.jpg); !important">
				 
				 <!-- ?????? ????????? ??????????????? ??? -->
				<div class="mainVisual mainTop" style="display: none;">
                    <a href="detail.pro?pno=2" style="background-image:url(${pageContext.request.contextPath}/resources/images/spellonyou.jpg);">
                    </a>
                
						<div class="visualTxt">
                            <p class="stit">Louis Vuitton</p>
                            <h4>SPELL ON YOU<span></span></h4>
                            <p class="more">VIEW MORE</p>
                        </div>
                </div>
                <!-- ??????1????????????-->
               
          	
			 <div class="mainSection mainTop" >
                    <!-- h3 class="tit"># BIAF ????????????</h3 -->
                    <div class="mainSlide">
                        <div class="mainFor">
                            <div class="slider">
								
								<!-- ?????? preloadResponse ?????? -->
								<div class="item" >
                                    <div class="video" style="padding-top: 15%;">
                                        	<video src="${pageContext.request.contextPath}/resources/images/hehe.mp4" controls width="720px" autoplay loop></video>
                                    </div>
                                </div>
								<div class="item">
                                    <div class="video" style="padding-top: 15%;">
                                    		<video src="${pageContext.request.contextPath}/resources/images/hehe2.mp4" controls width="720px" autoplay></video>
                                    </div>
                                </div>
								<div class="item">
                                    <div class="video" style="padding-top: 15%;">
                                    	<video src="${pageContext.request.contextPath}/resources/images/hehe3.mp4" controls width="720px" autoplay></video>
                                    </div>
                                </div>
                                <!-- ????????? ?????? ??? -->
                                





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
                                        <p class="midiaTit dottxt">BIAF2021 ?????? ??????????????? </p>
                                        <p class="time">4 : 49</p>
                                    </a>
                                </div>
								-->
								
								
								<div class="item" style="padding-top: 20%;">
                                    <a href="javascript:;">
                                        <div class="thumb">
                                            <img src="${pageContext.request.contextPath}/resources/images/eunwoo.jpg" alt="">
                                        </div>
                                        <p class="midiaTit dottxt">[??????X?????????] DASHUXCHA EUN-WOO</p>
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
                                <button type="button" class="prev">??????</button>
                                <button type="button" class="next">??????</button>
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
            
            
            <!-- ??????1 ??? -->
            
            
            
            <!--  ??????2 ?????? -->
            <section id="section1" class="section" style="background-image:url(${pageContext.request.contextPath}/resources/images/003.jpg);">
                <div class="programWrap">
                    <div class="sectionTit" style="margin-top:100px;">
                        <p><img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDJfMjc5/MDAxNjA0MjkzMjEzODM3.WISPFery1EmVckylvGY5RprHMms7I0VMZF9eCPjblsAg.j-tPj4aQsYXhOhuNcK3HCWe0UKHM-xBmub9mSB6JG3wg.JPEG.esom1225/Screenshot_2020-11-02_at_13.57.41.jpg?type=w800" alt="BIAF 2022"></p>
                        <h2><strong>??????</strong> ??????????????????</h2>
                    </div>
				
					
				                 
                    <div class="programLink clearfix">
                        <ul class="programInfo">
                      
                            <li class="first">
                                <a href="https://es.vecteezy.com/arte-vectorial/3262387-perfume-personaje-caricatura-con-gesto-beso">
                                    <picture>
                                        <source media="(max-width: 960px)" srcset="/img/main_2022/img_program_bn01_mo.jpg">
                                        <img src="${pageContext.request.contextPath}/resources/images/mmm1.png" alt="???????????????">
                                    </picture>
                                </a>
                            </li>
                            <li class="second">
                                <!-- a href="/kr/sub.html?pid=59" onclick="alert('?????? ??????????????????.'); return false;" -->
                                <a href="ticketInfo.ti">
                                    <picture>
                                        <source media="(max-width: 960px)" srcset="/img/main_2022/img_program_bn02_mo.jpg">
                                        <img src="${pageContext.request.contextPath}/resources/images/img_program_bn02.jpg" alt="???????????? ?????? ?????? ?????? ??? ?????? ??? ??????">
                                    </picture>
                                </a>
                            </li>
                        </ul>
                        <ul class="eventSlide">
							<li>
                                <a href="experienceListView.exp">
                                    <picture>
                                        <source media="(max-width: 960px)" srcset="/img/main_2022/img_program_bn03_mo.jpg">
                                        <img src="${pageContext.request.contextPath}/resources/images/mmm2.png" alt="????????? 2022 ??????. ?????????????????? ???????????? ??????">
                                    </picture>
                                </a>
                            </li>
                         </ul>
                    </div>
                </div>
            </section>
            <!-- ??????2 ??? -->
            
            
            <section id="section3" class="section">
                <div class="boardBanner">
                    <div class="latestWrap clearfix">
                       <ul class="tabBtn">
                           <li class="active"><a href="javascript:;" data-tab="tab1">????????????</a></li>
                           <li><a href="javascript:;" data-tab="tab2">????????????</a></li>
                       </ul>
                        <div id="tab1" class="left tabCon active">
                            <h3>????????????</h3>
							<div class="latestTop">
<span class="date">2023-01<em>12</em></span>
<a href="detail.no?nno=1">
<p class="tit">SACHET 2023 ?????? ??????</p>
<p class="dottxt">
</p>
</a>
</div>
<ul class="postListMain">
<li><a href="detail.no?nno=2">
SACHET 2023 ?????? ?????? ??????</a>
</li>
<li><a href="/detail.no?nno=3">
SACHET 2023 ????????? ??????</a>
</li>
<li><a href="detail.no?nno=4">
SACHET 2023 ?????? ??????</a>
</li>
<li><a href="detail.no?nno=5">
?????? ???????????? ????????????</a>
</li>
<li><a href="detail.no?nno=6">
?????? ?????? ??????</a>
</li>
<li><a href="detail.no?nno=7">
?????? ????????? ????????????</a>
</li>
</ul>
				<a href="/kr/sub.html?pid=52" class="btnMore">?????????</a>                        </div>
                        <div id="tab2" class="right tabCon">
                            <h3>????????????</h3>
							<div class="latestTop">
<span class="date">2022-12<em>09</em></span>
<a href="https://tenasia.hankyung.com/topic/article/2021090264354">
<p class="tit">???????????? ???????????? ??????, ???????????? ?????? ??????????????? ?????? ??????????????? ??????</p>
<p class="dottxt">
?????? ?????? ????????? ????????? ???????????? ?????? ??????????????? ?????? ?????????????????? ?????? ????????? ???????????? ????????? 2??? ?????????.
????????? ?????? ???????????? ???????????? ????????? ?????? ?????? ????????? ??????, ???????????? ?????? ???????????? ????????? ??? ????????? ????????? ???????????????, ?????? ???????????? ?????? ????????? ?????? ????????? ????????? ???????????? ????????????.
????????? ??????????????? ?????? ?????????????????? ?????? ?????? 50ml, ????????? ????????????(1???), ????????? ????????????(2???), ?????? ???????????? ????????????. ????????? ?????????, ????????? ??????, ????????? ?????? ??? 3?????? ????????? ????????? ??? ??????.
</p>
</a>
</div>
		<ul class="postListMain">
		<li><a href="https://www.busan.com/view/busan/view.php?code=2019032517223810262">
		?????? ??????, ??? ???????????? ?????? '??? ????????? ?????????' ??????</a>
		</li>
		<li><a href="https://www.seoul.co.kr/news/newsView.php?id=20220510020005&wlog_tag3=naver">
		???????????? ?????? ???????????????</a>
		</li>
		<li><a href="https://www.fashionn.com/board/read_new.php?table=1025&number=29887">
		?????? ???????????? ????????? ??????...????????? ????????? ?????? ?????? ??????</a>
		</li>
		<li><a href="http://www.pinpointnews.co.kr/news/articleView.html?idxno=167804">
		??? ?????? ??????, ?????? ????????? ????????? ??????</a>
		</li>
		<li><a href="/https://www.wikitree.co.kr/articles/815971">
		3??? ??????, 2??? ?????????, 1????????? '?????? 1??? ?????????????????? ??????</a>
		</li>
		<li><a href="/https://www.elle.co.kr/article/45679">
		?????? ?????? ????????? ??????</a>
		</li>
                </ul>
				<a href="/kr/sub.html?pid=54" class="btnMore">?????????</a> 
				
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
                            <li class="prev"><button type="button">??????</button></li>
                            <li class="next"><button type="button">??????</button></li>
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
        		location.href="myPageForm.me";
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
