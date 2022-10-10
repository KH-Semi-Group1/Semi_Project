<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Header</title>

<script type="text/javascript" src = "https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
body {
	height:3000px; color : #fff;text-align:center; margin:0; padding:0;
}

nav {
	position : fixed; width:100%; height:40px; background : #6AAFE6; 
	color : white; text-align : center;top:0;left:0;}
	
.all {
display:flex; flex-flow : row wrap; min-width:280px;margin-top:50px;
}

header {
	flex:1 1 100%; height:85px; background:white;
}
	
main {
	flex: 1 1 100%;height:70%;
}

footer{
	position : fixed; width:100%;
}

.header1{
	display: inline-block;
}

.header2{
	display: inline-block;
	padding-top: 10px;
	font-size: 20px;
}

.header3{
	float: right;
	padding-top: 10px;
	font-size: 20px; */
}

.topmenu {
	float:right;
	padding: .4% 3% 0 0;
	z-index: 10;
}

.topmenu>ul>li{

	margin-left: 18px;
	font-size: 14px;
}

.topmenu a {
	text-decoration: none;
	color:#fff;
}

.topmenu a:hover{
	text-decoration: none;
	color: black;
} 

header li a {
	color : black;
	
}

header li a:hover{
	border-bottom: 2px solid black;
	color : black !important;
	background-color: #fff !important;
}

footer a:hover {
	text-decoration: none;
}

.topcon {
	padding-left: 20px;
}


html, body{
	height:100%;
}

.footer-wrap {
	background:#6AAFE6;
	width:100%;
	height:50px;
	z-index: 2;
}

.empty {
	background:white;
	height:200px;
	width:100%;
	z-index: 1;
	position:relative;
	transform: translatY(-100%);
	
}
</style>

</head>
<body>

<nav class="topmenu">

<!--  비 로그인  --> 
<% if(session.getAttribute("login") == null )  { %>
  <div class="topmenu">
	<ul style="list-style-type: none">
		<li type="button" style="display:inline"><a href="/user/login">로그인</a></li> 
		<li type="button" style="display:inline"><a href="/join">회원가입</a></li>  
		<li type="button" style="display:inline"><a href="/">고객센터</a></li>
	</ul>    
  </div>
<% }  %>

<!--  로그인  -->
<% if(session.getAttribute("login") != null  && (boolean)session.getAttribute("login"))  { %>
  <div class="topmenu">
	<ul style="list-style-type: none">
		<li style="display:inline; color: #fff;"><%=session.getAttribute("loginid") %>님, 환영합니다.</li>
		<li style="display:inline"><a href="/user/logout">로그아웃</a></li>
		<li style="display:inline"><a href="/">마이페이지</a></li>
		<li style="display:inline"><a href="/">고객센터</a></li>
	</ul>    
  </div>
<% }  %>
</nav>

<div class="all">  
	<div class="collapse navbar-collapse header1 topcon" id="midmenu">
		<a href="#"><img src="/resources/img/logo.jpg" style="height:65px;"></a>
	</div>
	<div>
	<header>
		<div class="header2">
	      <ul class="nav navbar-nav nav-pills topcon" data-bs-target="#navbarToggleExternalContent">
	        <li><a href="/">뮤지컬</a></li>
	        <li><a href="/">공지사항</a></li>
	        <li><a href="/">관람후기</a></li>
	        <li><a href="/">이용안내</a></li>
	        <li><a href="/">My티켓</a></li>
	      </ul>
		</div>
	</header>
	</div>
</div>

<!-- ----------------------------Header end---------------------------- -->
<main>