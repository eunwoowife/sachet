<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--
	Phantom by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SACHET</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon-2.ico" />

	</head>
	<style>
		 @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
		 
		   *{
    	font-family: 'IBM Plex Sans KR', sans-serif !important;
    }
    
       .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
	</style>
	<body>
	
	<jsp:include page="../common/header.jsp" />
				<br><br><br><br><br><br><br><br><br><br>
	
	<div align="center">
	<h1 style="color:gray;">찾아오시는 길</h1>
	</div>
	<br><br><br>
	
		<img src="${pageContext.request.contextPath}/resources/images/map.jpg" style="margin-left:620px;">
		<br><br>
		<div id="map" style="width:60%;height:600px; margin-left:400px;"></div>
		<br><br>
	
	<br>
	<div style="margin-left:400px;">
		<h3>주차안내</h3>
<p>- 호수공원 내 주차장(유료)을 이용해 주시기 바랍니다. <br>
- 주차비는 주최사에서 지원해드리지 않습니다. <br>
- 행사 당일 전시장 주차장이 혼잡하오니 가급적 대중교통 이용을 권장 드립니다. </p>
	</div>
	
		<br><br><br><br><br><br>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b0921f5fd981e14c046853e51c7c0f5e"></script>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.656000014796, 126.76415217354784), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//지도에 마커를 표시합니다 
var marker = new kakao.maps.Marker({
    map: map, 
    position: new kakao.maps.LatLng(37.656000014796, 126.76415217354784)
});

//커스텀 오버레이에 표시할 컨텐츠 입니다
//커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
//별도의 이벤트 메소드를 제공하지 않습니다 
var content = '<div class="wrap">' + 
         '    <div class="info">' + 
         '        <div class="title">' + 
         '            SACHET World Fragrance Expo' + 
         '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
         '        </div>' + 
         '        <div class="body">' + 
         '            <div class="img">' +
         '                <img src="${pageContext.request.contextPath}/resources/images/scsc.png" width="73" height="70">' +
         '           </div>' + 
         '            <div class="desc">' + 
         '                <div class="ellipsis">경기 고양시 일산동구 호수로 595</div>' + 
         '                <div class="jibun ellipsis">(우) 10400(지번) 장항동 906</div>' + 
         '                <div><a href="index.jsp" target="_blank" class="link">홈페이지</a></div>' + 
         '            </div>' + 
         '        </div>' + 
         '    </div>' +    
         '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlay = new kakao.maps.CustomOverlay({
 content: content,
 map: map,
 position: marker.getPosition()       
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
 overlay.setMap(map);
});

//커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
 overlay.setMap(null);     
}

//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

</script>
	</body>
</html>