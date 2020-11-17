<%@page import="java.util.ArrayList"%>
<%@page import="com.itwillbs.board.BoardDAO_east"%>
<%@page import="com.itwillbs.board.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
<!--[if lt IE 9]>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js" type="text/javascript"></script>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/ie7-squish.js" type="text/javascript"></script>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
<![endif]-->
<!--[if IE 6]>
 <script src="../script/DD_belatedPNG_0.0.8a.js"></script>
 <script>
   /* EXAMPLE */
   DD_belatedPNG.fix('#wrap');
   DD_belatedPNG.fix('#main_img');   

 </script>
 <![endif]-->
</head>
<body>
<div id="wrap">
<!-- 헤더들어가는 곳 -->
   <jsp:include page="../inc/top.jsp"/>
<!-- 헤더들어가는 곳 -->

<!-- 본문들어가는 곳 -->
<!-- 메인이미지 -->
<div id="sub_img_gal"></div>
<!-- 메인이미지 -->

<!-- 왼쪽메뉴 -->
<nav id="sub_menu">
<ul>
<li><a href="writeForm.jsp">글쓰기</a></li>
<li><a href="notice.jsp">글 목록 보기</a></li>
<li><a href="gallery.jsp">사진 갤러리</a></li>
</ul>
</nav>
<!-- 왼쪽메뉴 -->
<!-- 본문들어가는 곳 -->
	<table border="0px solid black">
	<tr>
	<td>

<%
	BoardDAO_east dbad = new BoardDAO_east();
	ArrayList gal = dbad.gallery();
	

	
	for(int i=0;i<gal.size();i++){ 
    BoardBean bb = (BoardBean)gal.get(i);
	
	
%>
<a href="content.jsp?bno=<%=bb.getBno()%>"><img id="gal" src="upfile/<%=bb.getFile() %>"></a>
<%} %>

</td>
	</tr>
	</table>
<!-- 본문들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"/>
<!-- 푸터들어가는 곳 -->
</div>
</body>
</html>