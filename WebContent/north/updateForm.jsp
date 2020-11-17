<%@page import="com.itwillbs.board.BoardBean"%>
<%@page import="com.itwillbs.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
<link href="../css/content.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
	int bno=Integer.parseInt(request.getParameter("bno"));
	String pageNum=request.getParameter("pageNum");
	
	BoardDAO bdao = new BoardDAO();
	BoardBean bb = bdao.getBoard(bno);
%>
	<fieldset>
		<form action="updatePro.jsp?pageNum=<%=pageNum%>" method="post">
			<input type="hidden" name="bno" value="<%=bb.getBno()%>">
	   글쓴이 : <input type="text" name="name" value="<%=bb.getName()%>"> <br>
	   비밀번호 : <input type="password" name="pass"><br>
	   제목 : <input type="text" name="subject" value="<%=bb.getSubject()%>"><br>
	   내용 : <br> 
	   <textarea rows="10" cols="25" name="content"><%=bb.getContent() %></textarea><br><br><br>
	   
	  <input type="submit" value="수정하기">	
						
		</form>
	</fieldset>
</body>
</html>