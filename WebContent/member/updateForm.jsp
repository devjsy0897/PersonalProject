<%@page import="com.itwillbs.member.MemberBean"%>
<%@page import="com.itwillbs.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<!-- 본문메인이미지 -->
<div id="sub_img_member"></div>
<!-- 본문메인이미지 -->
<!-- 왼쪽메뉴 -->
	<nav id="sub_menu">
		<ul>
		<li><a href="updateForm.jsp">정보수정</a></li>
		<li><a href="deleteForm.jsp">회원탈퇴</a></li>
		</ul>
	</nav>
<!-- 왼쪽메뉴 -->
<!-- 본문내용 -->
	<%
	  // WebContent/JSP6/updateForm.jsp 참고해서 페이지 생성
	  // DB 처리를 DAO 객체로 전달해서 처리 
	  
	  // 로그인 세션처리
	  String id = (String)session.getAttribute("id");
	  if(id == null){
		 response.sendRedirect("loginForm.jsp");
	  }
	  
	  // MemberDAO 객체 생성
	  MemberDAO mdao = new MemberDAO();
	  // id에 해당하는 회원정보 가져오기 getMember(id)
	  MemberBean mb = mdao.getMember(id);
	%>
		<article>
		<h1>정보 수정</h1>
		
			
			<form action="updatePro.jsp" method="post" name="fr" id="join" onsubmit="return check()">
			<fieldset>
			<label>아이디</label>
			<input type="text" name="id" value="<%=mb.getId() %>" readonly><br>
			<label>기존 비밀번호</label>
			<input type="password" name="pass"><br>
			<label>변경할 비밀번호</label>
			<input type="password" name="pass1" placeholder="미 변경 시 기존 비번 입력"><br>
			<label>이름</label>
			<input type="text" name="name" value="<%=mb.getName() %>"><br>
			<label>E-Mail</label>
			<input type="text" name="email" value="<%=mb.getEmail() %>"><br>
			<label>생년월일(6자리)</label>
			<input type="text" name="birth"  value="<%=mb.getBirth() %>"><br>
			<br>
		
		</fieldset>
		

		<div class="clear"></div>
		<div id="buttons">
		<input type="submit" value="수정하기" class="submit">
		<input type="reset" value="리셋하기" class="cancel">
		</div>
	</form>
		</article>
<!-- 본문내용 -->
<!-- 본문들어가는 곳 -->

<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
    <jsp:include page="../inc/bottom.jsp"/>
<!-- 푸터들어가는 곳 -->
</div>
   <script type="text/javascript">
      /* 회원정보 수정시  */
      // 비밀번호 및 변경할 비밀번호 빈칸 체크 후 alert
      
      
      function check(){
    	  // alert("테스트");
    	  // 아이디가 입력이 안되있을경우 "아이디를 입력하시오!"
    	  if(document.fr.pass.value.length <= 0){
    		  alert("비밀번호를 입력하시오!");
    		  document.fr.pass.focus();
    		  return false;
    	  }
    	  if(document.fr.pass1.value.length <= 0){
    		  alert("변경할 비밀번호를 입력하시오!");
    		  document.fr.pass1.focus();
    		  return false;
    	  }
      }
   
      
      
   </script>


</body>
</html>