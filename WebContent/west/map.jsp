<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/map.css" res="stylesheet" type="text/css">
</head>
<body>
<div id="map" style="width:100%;height:400px;"></div>
<p><em>지도를 클릭해주세요!</em></p> 
<div id="clickLatlng"></div>



<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=087e5e254ffcda7e615fddd9ac8ba200"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.179701076291465, 129.0750888574543), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 지도를 클릭한 위치에 표출할 마커입니다
var marker = new kakao.maps.Marker({ 
    // 지도 중심좌표에 마커를 생성합니다 
    position: map.getCenter() 
}); 
// 지도에 마커를 표시합니다
marker.setMap(map);

// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    document.mfr.map.value=latlng;
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
    message += '경도는 ' + latlng.getLng() + ' 입니다';
    var resultDiv = document.getElementById('clickLatlng'); 
    resultDiv.innerHTML = message;
    
    
    
});
    
    
</script>

<form action="map.jsp" name="mfr" method="post">
<input type="text" id="map" name="map" >
<input type="button" value="이곳으로 정하기" onclick="result();"> 

</form>
<script type="text/javascript">
function result()
{
		opener.document.fr.map.value = document.mfr.map.value;
 	
 	opener.document.fr.map.readOnly=true;
 	
 	// 창 닫기 
 	window.close();
}
</script>
</body>
</html>