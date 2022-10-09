<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript" src = "https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!--  비 로그인 --> 
<% if(session.getAttribute("login") == null )  { %>
  <div class="topmenu">
	<ul style="list-style-type: none">
		<li style="display:inline"><a href="/user/login">로그인</a></li>
		<li style="display:inline"><a href="/join">회원가입</a></li>
		<li style="display:inline"><a href="/">고객센터</a></li>
	</ul>    
  </div>
<%@ include file = "./layout/header.jsp" %>

<% }  %>

<!-- 로그인 -->
<% if(session.getAttribute("login") != null  && (boolean)session.getAttribute("login"))  { %>
  <div class="topmenu">
	<ul style="list-style-type: none">
		<li style="display:inline; color: #fff;"><%=session.getAttribute("loginname") %>님, 환영합니다.</li>
		<li style="display:inline"><a href="/user/logout" id="mainOut">로그아웃</a></li>
		<li style="display:inline"><a href="/mypage">마이페이지</a></li>
		<li style="display:inline"><a href="/">고객센터</a></li>
	</ul>    
  </div>
<%@ include file = "./layout/header.jsp" %>
<% }  %>


<script type="text/javascript"> 
  $(document).ready(function(){
	// 로그아웃 버튼 눌렀을 시
	 $('#mainOut').click(function() {
	  alert('로그아웃 되었습니다.')
	 });
  });
</script>    

<%@ include file = "./layout/footer.jsp" %>