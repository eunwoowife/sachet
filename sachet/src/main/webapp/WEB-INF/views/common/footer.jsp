<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

 @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    *{
    	font-family: 'IBM Plex Sans KR', sans-serif;
    }
#footer {background-color:#2c2f34; }
.footUtil { background:#202226; }
.footUtil .utilInner { overflow:hidden; max-width:1140px; margin:0 auto; padding:20px 0; }
.footUtil .utilInner .util { float:left; }
.footUtil .utilInner .sns { float:right; }
.footUtil .utilInner li { display:inline-block; }
.footUtil .utilInner .util li { position: relative; }
.footUtil .utilInner .util li::before {content:''; position: absolute; top:50%; left:0; width:1px; height:12px; margin-top:-6px; background-color:#b9b9ba;}
.footUtil .utilInner .util li:first-child::before { display:none; }
.footUtil .utilInner .util li a { display:block; padding:5px 12px; color:#f0f0f0; }
.footUtil .utilInner .sns a { display:block; overflow:hidden; width:24px; height:24px; margin:0 10px; background:center no-repeat; background-size:contain; text-indent:-999px; }
#footer .footerWrap { overflow:hidden; max-width:980px; margin:0 auto; padding:120px 5%; }
 #footer .footerWrap .fLogo { float:left; } 
#footer .footerWrap .ftInfo { float:right; width:90%; }
#footer .footerWrap .footerLink { display:none; font-size:0; }
.footerLink li { display: inline-block; position: relative; margin-left:11px; padding-left:11px; }
.footerLink li:before {content:''; position: absolute; top:3px; left: 0; width: 1px; height: 12px; background-color:#6b5c91;}
.footerLink li:first-child { margin-left:0; padding-left:0; }
.footerLink li:first-child:before { content: none; }
.footerLink li a { display: block; color:#e7e7e7; font-size:14px; }
#footer .footerWrap address { display: block; color:#e7e7e7; font-size:14px; font-weight:300; line-height:1.4; }
#footer .footerWrap address ul { overflow:hidden; }
#footer .footerWrap address ul li { float:left; margin-right:12px; }
#footer .footerWrap address ul li:nth-child(5),
#footer .footerWrap address ul li:nth-child(6) { clear:both; }
#footer .footerWrap address ul li a { display:inline-block; color:#e7e7e7; }
#footer .footerWrap .copyright { margin-top:7px; color:#e7e7e7; font-size:12px;}
.footerSns {margin-top: 30px;}
.footerSns li {display: inline-block; margin:0 5px;}
@media all and (max-width: 960px) {
    .footUtil { text-align:center; }
    .footUtil .util { display:none; }
    .footUtil .utilInner { padding:10px 0; }
    .footUtil .utilInner .sns { float:none; }
    #footer .footerWrap { padding-top:36px; padding-bottom:28px; }
    #footer .footerWrap .fLogo { float:none; text-align:center; }
    #footer .footerWrap .fLogo a { display:inline-block; width:100%; max-width:55%; }
    #footer .footerWrap .ftInfo { float:none; width:100%; margin-top:18px; text-align:center; }
    #footer .footerWrap .footerLink { display:block; margin-top: 0; }
    .footerLink li { margin-left:3px; padding-left:3px; }
    .footerLink li:first-child { display:none; }
    .footerLink li:before { height: 8px; }
    .footerLink li:nth-child(2) { margin-left:0; padding-left:0; }
    .footerLink li:nth-child(2):before { content:none; }
    .footerLink li a { letter-spacing:-0.03em; font-size: 11px; font-weight: 300; }
    #footer .footerWrap address { margin-top:10px; text-align:center; font-size: 11px; line-height: 1.2;}
    #footer .footerWrap address ul li { display:inline-block; float:none; margin-right:3px; font-size: 5px;}
    #footer .footerWrap .copyright { margin-top:4px; font-size: 9px;}
    .footerSns {display: none;}
</style>
</head>
<body>



<footer id="footer" class="section fp-auto-height">
            <div class="footUtil">
                <div class="utilInner">
                    <ul class="util">
                        <li><a href="#">SACHET 소개</a></li>
                        <li><a href="#">이용약관/저작권</a></li>
                        <li><a href="#">개인정보취급방침</a></li>
                        <li><a href="#">이메일 무단수집 거부</a></li>
                        <li><a href="#">찾아오시는 길</a></li>
                    </ul>
                   
                </div>
            </div>
            <div class="footerWrap">
                <p class="fLogo"><a href="/kr/">
                       <picture>
                            <source media="(max-width: 960px)" srcset="" />
                            <img src="${pageContext.request.contextPath}/resources/images/로고10.png"  height="70px" alt="2023 BIAF 2023 BUCHEON INTERNATIONAL ANIMATION FESTIVAL">
                        </picture> 
                    </a></p>
                <div class="ftInfo">
                    <ul class="footerLink">
                        <li><a href="#">SACHET 소개</a></li>
                        <li><a href="#">이용약관/저작권</a></li>
                        <li><a href="#">개인정보취급방침</a></li>
                        <li><a href="#">이메일 무단수집 거부</a></li>
                        <li><a href="#">찾아오시는 길</a></li>
                    </ul>
                    
                    <address>
                        <ul>
                            <li>프로젝트명: SACHET 조직위원회</li>
                            <li>팀원: 이민경 김병주 배주현 </li>
                            <li>KH당산 E-Class</li>
                        </ul>
                    </address>
                    <p class="copyright">Copyrightⓒ2023 SACHET ALL rights reserved.</p>
                </div>
            </div>
        </footer>       
        
</body>
</html>