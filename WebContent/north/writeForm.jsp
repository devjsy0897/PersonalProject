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
<div id="sub_img_center"></div>
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

<!-- 게시판 -->
<article>
<h1>게시판 글쓰기</h1>
<!-- 로그인 한 사용자만 글쓰기 가능
		  로그인한 사람의 ID값을 글쓴이로 지정 
 -->
	<%
		//세션ID값을 사용해서 글쓴이 지정
		//로그인x -> 로그인 페이지로 이동
		String id = (String)session.getAttribute("id");
		if(id==null){
			response.sendRedirect("../member/loginForm.jsp");
						
		}
	%>
<form action="writePro.jsp" method="post" name="fr" enctype="multipart/form-data">
	<table id="notice">
		<tr>
			<td>글쓴이</td>
			<td>
				<input type="text" name="name" value=<%=id %> readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<input type="text" name="pass" >
			</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>
				<input type="text" name="subject">
			</td>
		</tr>
		</tr>
		<tr>
			<td>내용</td>
			<td>
				<textarea rows="15" cols="22" name="content"></textarea>
			</td>
		</tr>
		<tr>
			<td>파일</td>
			<td>
				<input type="file" name="file"><br>
			</td>
		</tr>
		<tr>
			<td>위치</td>
			<td>
				<input type="text" name="map" class="map">
				<input type="button" value="위치 지정 하기" class="map" onclick="winopen();"><br>
			</td>
		</tr>
	</table>

<div id="table_search">
<input type="submit" value="글쓰기" class="btn">
</div>
<div class="clear"></div>
</form>
<div id="page_control">

</div>
</article>
<!-- 게시판 -->
<!-- 본문들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"/>
<!-- 푸터들어가는 곳 -->
</div>

<script type="text/javascript">
function winopen(){
	  
	  window.open("map.jsp",width=350, height=200);
	  
}

</script>
</body>
</html>