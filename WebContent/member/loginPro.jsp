<%@page import="com.itwillbs.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

   <h1>WebContent/member/loginPro.jsp</h1>
   <%
     // 전달된 정보(ID,PASS) 출력
     String id = request.getParameter("id");
     String pass = request.getParameter("pass");
     
     // DAO 객체 생성->idCheck(id,pass)
     MemberDAO mdao = new MemberDAO();
     
     int result = mdao.idCheck(id, pass);
     
     if(result==1){
    	 //로그인 성공
    	 
    	 //아이디 값을 세션객체에 저장
    	 session.setAttribute("id", id);
    	 response.sendRedirect("../main/main.jsp");
     }else if(result==0){
    	 %>
    	 <script type="text/javascript">
    	 	alert("비밀번호 오류");
    	 	history.back();
    	 </script>
    	 <%
     }else{ //result=-1
			%>
			<script type="text/javascript">
			alert("아이디 오류");
			history.back();
			</script>
			<%    		 
     }
     
   
   %>
   <%-- <%=id%>
   <%=pass %> --%>
   
   
   
   
   
   
   
   
   
   
   
   
   

</body>
</html>