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

<!-- list.css -->
<link rel="stylesheet" href="/resources/css/list_mu.css">


</head>
<body>
<div class="wrap">
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
	        <li><a href="/musical/mcList">뮤지컬</a></li>
	        <li><a href="/">공지사항</a></li>
	        <li><a href="/">관람후기</a></li>
	        <li><a href="/">이용안내</a></li>
	        <li><a href="/">My티켓</a></li>
	      </ul>
		</div>
	</header>
	</div>
</div>

<!-- 검색창 -->
      <form style="margin-right:50px;" class="navbar-form navbar-right" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="">
        </div>
        <button type="submit" class="btn">
         	<span class="glyphicon glyphicon-search" aria-hidden="true"></span> 
        </button>
      </form>

      

<!-- ----------------------------Header end---------------------------- -->
<main>
<div class="container">