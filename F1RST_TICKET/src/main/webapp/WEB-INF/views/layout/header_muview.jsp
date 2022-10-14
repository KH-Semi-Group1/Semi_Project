<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1RST TICKET</title>

<script type="text/javascript" src = "https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="/resources/css/layout.css">

<!-- mcView.css -->
<link rel="stylesheet" href="/resources/css/view_mu.css">


</head>
<body>
<nav class="topmenu">

<!--  비 로그인  --> 
<% if(session.getAttribute("login") == null )  { %>
  <div class="topmenu">
	<ul style="list-style-type: none">
		<li style="display:inline"><a href="/user/login">로그인</a></li> 
		<li style="display:inline"><a href="/join">회원가입</a></li>  
	</ul>    
</div>
<% }  %>

<!--  로그인  -->
<% if(session.getAttribute("login") != null  && (boolean)session.getAttribute("login"))  { %>
  <div class="topmenu">
	<ul style="list-style-type: none">
		<li style="display:inline; color: #fff;"><%=session.getAttribute("username") %>님, 환영합니다.</li>
		<li style="display:inline"><a href="/user/logout" id="mainOut">로그아웃</a></li>
		<li style="display:inline"><a href="/mypage">마이페이지</a></li>
		<li style="display:inline"><a href="/user/update">회원정보수정</a></li>
	</ul>    
</div>
<% }  %>

</nav>

<div class="all">  
	<div class="collapse navbar-collapse header1 topcon" id="midmenu">
		<a href="/"><img src="/resources/img/logo.jpg" style="height:65px;"></a>
	</div>
	<div>
	<header>
		<div class="header2">
	      <ul class="nav navbar-nav nav-pills topcon" data-bs-target="#navbarToggleExternalContent">
	        <li><a href="/musical/mcList">뮤지컬</a></li>
	        <li><a href="/notice/list">공지사항</a></li>
	        <li><a href="/review/list">관람후기</a></li>
	        <li><a href="/">이용안내</a></li>
	        <!--  비 로그인  --> 
			<% if(session.getAttribute("login") == null )  { %>
	        <li class="noLoginTC"><a href="/user/login">My티켓</a></li> <!-- 로그인과 비로그인 화면&알림 맞춰놓기 -->
	      	<% } %>
	      	
	      	<!--  로그인  -->
			<% if(session.getAttribute("login") != null  && (boolean)session.getAttribute("login"))  { %>
	      		<li class="LoginTC"><a href="/mypage">My티켓</a></li>
	      	<% } %>
	      	
	      </ul>
		</div>
	</header>
	</div>
</div>


<script type="text/javascript"> 
  $(document).ready(function(){
	// 로그아웃 버튼 눌렀을 시
	 $('#mainOut').click(function() {
	  alert('로그아웃 되었습니다.')
	 });
  	
	// 비회원이 my티켓 버튼 눌렀을 시
	 $('.noLoginTC').click(function() {
		  alert('로그인 후 사용하실 수 있습니다.')
	 });
	
  });
  
</script>   


<!-- ----------------------------Header end---------------------------- -->
<main>
<div class="container">