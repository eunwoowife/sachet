<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    #general, #company{
        float: left;
    }
    
    #general{
    	margin-left:650px;
    }
    
    #company{
    	margin-left:200px;
    }

.w-btn-gra-anim {
    background-size: 400% 400%;
    animation: gradient1 5s ease infinite;
}


@keyframes ring {
    0% {
        width: 30px;
        height: 30px;
        opacity: 1;
    }
    100% {
        width: 300px;
        height: 300px;
        opacity: 0;
    }
}

.w-btn-neon2 {
    position: relative;
    border: none;
    min-width: 200px;
    min-height: 50px;
    background: linear-gradient(
        90deg,
        #BAD1F0 0%,
        #88C9E8 100%
    );
    border-radius: 1000px;
    color: darkslategray;
    cursor: pointer;
    box-shadow: 12px 12px 24px rgba(111, 172, 241, 0.64);
    font-weight: 700;
    transition: 0.3s;
}

.w-btn-neon2:hover {
    transform: scale(1.2);
}

.w-btn-neon2:hover::after {
    content: "";
    width: 30px;
    height: 30px;
    border-radius: 100%;
    border: 6px solid #73C3E3;
    position: absolute;
    z-index: -1;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation: ring 1.5s infinite;
}



</style>
<body>

	<jsp:include page="../common/header.jsp"></jsp:include>
<br><br>
	
    <div align="center" style="margin-top: 230px;">
        <h4 style="color: #717b80;">가입을 위한 회원유형을 선택해주세요.</h4>
        <hr style="border:solid 1.3px gray ; width:800px;'">
        <br><br>
        <div id="general">
            <img src="${pageContext.request.contextPath }/resources/images/man2.png" alt="" style="width:100px;">
            <br>
            <br>
            <button class="w-btn-neon2" type="button" onclick="joinGeneral();">
                일반회원
            </button>
        </div>
        <div id="company">
            <img src="${pageContext.request.contextPath }/resources/images/building2.png" alt="" style="width:100px;">
            <br>
            <br>
            <button class="w-btn-neon2" type="button" onclick="joinCompany();">
                기업회원
            </button>
        </div>
        
        <script>
        	function joinGeneral(){
        		location.href="joinMemberForm.me";
        	}
        	
        	function joinCompany(){
        		location.href="joinCompanyForm.co";
        	}
        </script>
        
        
        <script type="text/javascript">
// <![CDATA[
var border=100; // how wide is each border in pixels
var effects=3; // how many of the effect are on the page
var speed=50; // how fast is the animation (lower is faster)
var colours=new Array("#9cf", "#c9f", "#fc9", "#f9c", "#cf9", "#9fc", "#6ff", "#f6f", "#ff6");
// above line lists colours for the groovy effect (the list can be as long or short as you like)

/****************************
*1970s Groovy WebPage Effect*
*(c)2008-13 mf2fm web-design*
*  http://www.mf2fm.com/rv  *
* DON'T EDIT BELOW THIS BOX *
****************************/

function addLoadEvent(funky) {
  var oldonload=window.onload;
  if (typeof(oldonload)!='function') window.onload=funky;
  else window.onload=function() {
    if (oldonload) oldonload();
    funky();
  }
}

addLoadEvent(yowzah);

var swide, shigh, boddie;
var h=new Array();
var v=new Array();
var op=1/(effects+1);
function yowzah() { if (document.getElementById) {
  var i, d, s;
  boddie=document.createElement("div");
  s=boddie.style;
  s.position="fixed";
  s.backgroundColor="transparent";
  s.top="0px";
  s.left="0px";
  s.width="100%";
  s.zIndex="-1";
  set_width();
  i=document.body.style.backgroundColor;
  if (document.body.parentNode) {
    if (i) document.body.parentNode.style.backgroundColor=i;
    document.body.style.backgroundColor="transparent";
  }
  document.body.insertBefore(boddie, document.body.firstChild);
  for (i=0; i<effects*10; i+=10) {
    d=document.createElement("div");
    s=d.style;
    s.left="0px";
	s.width="100%";
    h[i]=Math.floor(Math.random()*(shigh-border)/3);
    h[i+1]=shigh-Math.floor(Math.random()*(shigh-border)/3);
    h[i+2]=(Math.random()<0.5?1:-1)*scat(0);
    h[i+3]=(Math.random()<0.5?1:-1)*scat(h[i+2]);
    s.position="absolute";
    s.top=h[i]+"px";
    s.height=(h[i+1]-h[1])+"px";
    s.borderStyle="solid";
    s.borderWidth=border+"px 0px";
    jazzy(s, 'borderTopColor');
	jazzy(s, 'borderBottomColor');
    jazzy(s, 'backgroundColor');
    s.opacity=op;
    if (navigator.appName=="Microsoft Internet Explorer") s.filter="alpha(opacity="+(100*op)+")";
    h[i+5]=s;
    boddie.appendChild(d);
  }
  for (i=0; i<effects*10; i+=10) {
    d=document.createElement("div");
    s=d.style;
	s.top="0px";
    s.height="100%";
    v[i]=Math.floor(Math.random()*(swide-border)/3);
    v[i+1]=swide-Math.floor(Math.random()*(swide-border)/3);
    v[i+2]=(Math.random()<0.5?1:-1)*scat(0);
    v[i+3]=(Math.random()<0.5?1:-1)*scat(v[i+2]);
    s.position="absolute";
    s.left=v[i]+"px";
    s.width=(v[i+1]-v[i])+"px";
    s.borderStyle="solid";
    s.borderWidth="0px "+border+"px";
    jazzy(s, 'borderLeftColor');
    jazzy(s, 'borderRightColor');
    jazzy(s, 'backgroundColor');
    if (navigator.appName=="Microsoft Internet Explorer") s.filter="alpha(opacity="+(100*op)+")";
    else s.opacity=op;
    v[i+5]=s;
    boddie.appendChild(d);
  }
  setInterval('groovy()', speed);
}}

var old_jazz=false;
function jazz() {
	var new_jazz;
	do { new_jazz=colours[Math.floor(Math.random()*colours.length)]; }
	while ( new_jazz==old_jazz );
	old_jazz=new_jazz;
	return (new_jazz);
}

function jazzy(hip, jive) {
	var new_jive;
	do { new_jive=colours[Math.floor(Math.random()*colours.length)]; }
	while (new_jive==hip[jive]);
	hip[jive]=new_jive;
}

function scat(no) {
	var yes;
	no=Math.abs(no);
	do { yes=2+Math.floor(Math.random()*3); }
	while ( no==yes );
	return (yes);
}

function groovy() {
  var i;
  for (i=0; i<effects*10; i+=10) {
	h[i]+=h[i+2];
	h[i+1]+=h[i+3];
	if (h[i+1]-h[i]<5) {
	  h[i+4]=h[i+2]; 
	  h[i+2]=h[i+3];
	  h[i+3]=h[i+4];
	  jazzy(h[i+5], 'backgroundColor');
	}
    if (h[i]<-border) {
		if (h[i+2]<0 && Math.random()<1/border) {
			h[i+2]=scat(h[i+3]);
			jazzy(h[i+5], 'borderTopColor');
		}
	}
	if (h[i+1]>shigh) {
		if (h[i+3]>0 && Math.random()<1/border) {
			h[i+3]=-scat(h[i+2]);
			jazzy(h[i+5], 'borderBottomColor');
		}
	}
	h[i+5].top=h[i]+"px";
    h[i+5].height=(h[i+1]-h[i])+"px";

	v[i]+=v[i+2];
	v[i+1]+=v[i+3];
	if (v[i+1]-v[i]<5) {
	  v[i+4]=v[i+2];
	  v[i+2]=v[i+3];
	  v[i+3]=v[i+4];
	  jazzy(v[i+5], 'backgroundColor');
	}
	if (v[i]<-border) {
		if (v[i+2]<0 && Math.random()<1/border) {
			v[i+2]=scat(v[i+3]);
			jazzy(v[i+5], 'borderLeftColor');
		}
	}
	if (v[i+1]>swide) {
		if (v[i+3]>0 && Math.random()<1/border) {
			v[i+3]=-scat(v[i+2]);
			jazzy(v[i+5], 'borderRightColor');
		}
	}
	v[i+5].left=v[i]+"px";
    v[i+5].width=(v[i+1]-v[i])+"px";
  }
}

window.onresize=set_width;
function set_width() {
  var sw_min=999999;
  var sh_min=999999;
  if (document.documentElement && document.documentElement.clientWidth) {
    if (document.documentElement.clientWidth>0) sw_min=document.documentElement.clientWidth;
    if (document.documentElement.clientHeight>0) sh_min=document.documentElement.clientHeight;
  }
  if (typeof(self.innerWidth)!="undefined" && self.innerWidth) {
    if (self.innerWidth>0 && self.innerWidth<sw_min) sw_min=self.innerWidth;
    if (self.innerHeight>0 && self.innerHeight<sh_min) sh_min=self.innerHeight;
  }
  if (document.body.clientWidth) {
    if (document.body.clientWidth>0 && document.body.clientWidth<sw_min) sw_min=document.body.clientWidth;
    if (document.body.clientHeight>0 && document.body.clientHeight<sh_min) sh_min=document.body.clientHeight;
  }
  if (sw_min==999999 || sh_min==999999) {
    sw_min=800;
    sh_min=600;
  }
  swide=sw_min;
  shigh=sh_min;
  boddie.style.height=shigh+"px";
} 
// ]]>
</script>
        <br><br><br><br><br><br><br><br><br><br><br><br>
    </div>
    <br><br><br><br><br><br><br><br>
</body>
</html>