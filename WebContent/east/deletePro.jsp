<%@page import="com.itwillbs.board.BoardDAO_east"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
String pageNum= request.getParameter("pageNum");

int bno=Integer.parseInt(request.getParameter("bno"));
String pass = request.getParameter("pass");

BoardDAO_east bdao = new BoardDAO_east();
int check = bdao.deleteBoard(bno,pass);

if(check == 1){// 정상처리
	%>
	  <script type="text/javascript">
	      alert(" 글 삭제 완료 ! ");
	      location.href="notice.jsp?pageNum=<%=pageNum%>";
	  </script>			
	<%			
}else if(check == 0){
	%>
	  <script type="text/javascript">
	      alert(" 글 비밀번호 오류 ! ");
	      history.back();
	  </script>			
	<%
}else{ //check == -1
	%>
	  <script type="text/javascript">
	      alert(" 글 번호 없음 ! ");
	      history.back();
	  </script>			
	<%
}

%>
</body>
</html>