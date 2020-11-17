<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
     // 화면 상단에 위치하는 메뉴처리 (모든페이지에 공유)
     
     //로그인 체크(세션 id 값이 있는지 없는지 체크)
			String id = (String)session.getAttribute("id");
    	
    %>
    
    <header>
    
		<div id="login">
		<%
		if(id==null){
			%>
			<a href="../member/loginForm.jsp">로그인</a> 
			| <a href="../member/joinForm.jsp">회원가입</a>
		<%}else{ %>
			<a href="../member/updateForm.jsp">
			<%=id %></a>님 환영합니다.		
			| <a href="../member/logout.jsp">로그아웃</a>
			<%} %>
		</div>
		
		
		<div class="clear"></div>
		

		<!-- 로고들어가는 곳 -->
		<div id="logo"><img src="../images/busan_logo.png" width="265" height="62" alt="Fun Web"></div>
		<!-- 로고들어가는 곳 -->
		<nav id="top_menu">
		<ul>
			<li><a href="../index.jsp">HOME</a></li>
			<li><a href="../north/notice.jsp">NORTH</a></li>
			<li><a href="../west/notice.jsp">WEST</a></li>
			<li><a href="../east/notice.jsp">EAST</a></li>
			<li><a href="../south/notice.jsp">SOUTH</a></li>
		</ul>
		</nav>
	</header>