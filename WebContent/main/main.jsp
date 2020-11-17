<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/front.css" rel="stylesheet" type="text/css">

<!--[if lt IE 9]>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js" type="text/javascript"></script>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/ie7-squish.js" type="text/javascript"></script>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
<![endif]-->

<!--[if IE 6]>
 <script src="script/DD_belatedPNG_0.0.8a.js"></script>
 <script>
   /* EXAMPLE */
   DD_belatedPNG.fix('#wrap');
   DD_belatedPNG.fix('#main_img');   

 </script>
 <![endif]--> 


</head>
<body onload="rotate()"> <!-- 페이지 로딩시 rotate()함수 시작 -->



<div id="wrap">
<!-- 헤더파일들어가는 곳(페이지 인클루드) -->
	<jsp:include page="../inc/top.jsp"/>
<!-- 헤더파일들어가는 곳 -->
<!-- 메인 콘텐츠 들어가는 곳 -->
<img src="../main/1.jpg" id="slide">

<!-- 메인 콘텐츠 들어가는 곳 -->


<div class="clear"></div>

<!-- 푸터 들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"/>
<!-- 푸터 들어가는 곳 -->
</div>

<!-- 자바 스크립트 문 -->
<script type="text/javascript">

var img=new Array();	
//img  배열 값 입력
img[0]=new Image(); img[0].src="1.jpg";
img[1]=new Image(); img[1].src="2.jpg";
img[2]=new Image(); img[2].src="3.jpg";
img[3]=new Image(); img[3].src="4.jpg";
//img  배열 값 입력
var interval=1500; //시간 1.5초마다 변경
var n=0;
var imgs = new Array("1.jpg","2.jpg","3.jpg","4.jpg");

//rotate() 함구 구현
function rotate()
{
if(navigator.appName=="Netscape" && document.getElementById)
{
document.getElementById("slide").src=imgs[n];
}
else document.images.slide.src=imgs[n];
(n==(imgs.length-1))?n=0:n++;
setTimeout("rotate()",interval);
}
//rotate() 함구 구현
</script>
<!-- 자바 스크립트 문 -->
</body>
</html>