<%@page import="com.itwillbs.board.BoardDAO_west"%>
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
<link href="../css/content.css" rel="stylesheet" type="text/css">
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
<li><a href="gallery.jsp">사진 모아보기</a></li>
</ul>
</nav>
<!-- 왼쪽메뉴 -->
	<%
	  // http://localhost:8088/JSP7/board/content.jsp?bno=23&pageNum=1
	  // 글번호(pk)에 해당하는 글의 정보를 가져오기
	  
	  // 전달된 데이터 저장 (bno,pageNum)
	  int bno = Integer.parseInt(request.getParameter("bno"));
	  String pageNum = request.getParameter("pageNum");	  
	  
	  // BoardDAO_west 객체 생성
	  BoardDAO_west bdao = new  BoardDAO_west();
	  
	  // 글의 조회수 정보를 1증가 ( updateReadCount(bno) )
	  bdao.updateReadCount(bno); 
	  
	  // 글정보를 가져오는 메서드 생성 ( getBoard(bno) )
	  BoardBean bb = bdao.getBoard(bno); 
	  
	  // 화면(테이블)에 출력
	%>
	
	<table id="t1">
	  <tr>
	    <th id="t2">글번호</th>
	    <td><%=bb.getBno() %></td>
	    <th id="t2">조회수</th>
	    <td><%=bb.getReadcount() %></td>
	  </tr>
	  <tr>
	    <th id="t2">작성자</th>
	    <td><%=bb.getName() %></td>
	    <th id="t2">작성일</th>
	    <td><%=bb.getDate() %></td>
	  </tr>
	  <tr>
	    <th id="t2">제목</th>
	    <td colspan="3"><%=bb.getSubject() %></td>
	  </tr>
	  <% if(bb.getFile()!=null){%>
	  <tr>
	    <th id="t2">첨부파일</th>
	    <td colspan="3" >
	    	<a href="file_down.jsp?file_name=<%=bb.getFile()%>"><%=bb.getFile() %></a></td>
	  </tr>
	  
	  <tr>
	    <th id="t2">첨부파일<br><br>미리보기</th>
	    <td colspan="3" id="ima">
	    	<img src="upfile/<%=bb.getFile()%>" id="add"></td>
	  </tr>
	  
	  	  	  <tr>
	   <th id="t2"> 위치 </td>
	   <td colspan="3"> 
	   
	   <!--  -->	   
			<div id="map" style="width:100%;height:200px;"></div>
			<div id="clickLatlng"></div>
				   
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=087e5e254ffcda7e615fddd9ac8ba200"></script>
			<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        //center: new kakao.maps.LatLng(33.49049106586281, 126.63941742791488), // 지도의 중심좌표
			        center: new kakao.maps.LatLng<%=bb.getMap()%>, // 지도의 중심좌표
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
			    
			
			    
			    
			    
			});
			    
			    
			</script>

 
	   
	   
	   <!--  -->
	   
	    </td>
	  </tr>
	  
	   <%} %>
	  <tr>
	   <th id="t2"> 글 내용 </td>
	   <td colspan="3"> <%=bb.getContent() %> </td>
	  </tr>
	  
	  <tr>
	    <td colspan="4" id="none">
	    <!-- 로그인정보가 없거나, 글쓴이 이름과 아이디가 다를경우 
	         수정하기,삭제하기 버튼을 숨김
	         로그인한 아이디의 정보가 글쓴이 이름과 같다면 수정하기 ,삭제하기를 보여주기
	      -->
	      <%
	        // 로그인정보를 가져와서 판단
	        // 세션값 가져오기
	        String id = (String)session.getAttribute("id");
	        
	        if(id != null && id.equals(bb.getName())){
	        	// 아이디 있으면서, 이름이랑 아이디랑 같은경우
	      %>
	      <input type="button" value="수정하기" 
	             onclick="location.href='updateForm.jsp?bno=<%=bb.getBno() %>&pageNum=<%=pageNum%>'"
	      >
	      <input type="button" value="삭제하기" 
	             onclick="location.href='deleteForm.jsp?bno=<%=bb.getBno() %>&pageNum=<%=pageNum%>'"
	      >
	      <%
			}
	      %>
	      
	      <input type="button" value="답글쓰기"
	             onclick="location.href='reWriteForm.jsp?bno=<%=bb.getBno() %>&re_ref=<%=bb.getRe_ref() %>&re_lev=<%=bb.getRe_lev() %>&re_seq=<%=bb.getRe_seq() %>'"
	      >
	      <input type="button" value="목록으로" onclick="location.href='notice.jsp?pageNum=<%=pageNum%>'">
	    </td>
	  </tr>
	  
	
	
	</table>




<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"/>
<!-- 푸터들어가는 곳 -->
</div>
</body>
</html>