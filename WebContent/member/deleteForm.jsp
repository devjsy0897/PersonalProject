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
     // 로그인 처리 -> 로그인 x (로그인페이지 이동)
     
     String id = (String) session.getAttribute("id");
     
     if( id == null ){
    	 response.sendRedirect("loginForm.jsp");
     }
     
     // 회원 비밀번호만 입력받아서 deletePro.jsp페이지 이동후 삭제   
   %>
   
     <fieldset>
      <legend> 회원 정보 탈퇴 하기 </legend>
      <form action="deletePro.jsp" method="post">
        <!-- 화면에 해당 input 태그를 숨겨서 정보를 전달 -->
              아이디 : <input type="text" name="id" value="<%=id%>" disabled="disabled"><br>
              비밀번호 : <input type="password" name="pass"><br>
              
       <input type="submit" value="탈퇴 하기">      
      </form>   
   </fieldset>
   
</body>
</html>