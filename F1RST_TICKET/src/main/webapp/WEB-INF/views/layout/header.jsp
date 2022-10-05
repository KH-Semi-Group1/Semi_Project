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

<style type="text/css">
 #header nav ul li {
 	font-size: 20px;
 }
</style>

<!-- layout.css -->
<link rel="stylesheet" href="/resources/css/layout.css">

</head>
<body>

<header id="header">

  <!-- navbar 위에 메뉴 만들기 -->
  <div class="topmenu">
	<ul style="list-style-type: none">
		<li style="display:inline"><a href="/user/login">로그인</a></li>
		<li style="display:inline"><a href="/">회원가입</a></li>
		<li style="display:inline"><a href="/">마이페이지</a></li>
		<li style="display:inline"><a href="/">고객센터</a></li>
	</ul>    
  </div>
    
<!-- <nav class="navbar navbar-default"> -->
<nav class="navbar navbar-expend-md">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">      
      	<img alt="logo" src ="/resources/img/logo.jpg" style="width: 100%; height: 100%; ">
      </a>
    </div>
    

	<!-- 각페이지 링크 지정. -->
    <div class="collapse navbar-collapse" id="midmenu">
      <ul class="nav navbar-nav">
        <li><a href="/">뮤지컬</a></li>
        <li><a href="/notice/list">공지사항</a></li>
        <li><a href="/review/list">관람후기</a></li>
        <li><a href="/">이용안내</a></li>
        <li><a href="/">My티켓</a></li>
      </ul>
      
      <!-- 검색창 -->
      <form class="navbar-form navbar-right" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="">
        </div>
        
        <!-- 검색 버튼 -->
        <button type="submit" class="btn">
         	<span class="glyphicon glyphicon-search" aria-hidden="true"></span> 
        </button>
      </form>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

</header>

<!-- footer에 사용할 부트스트랩 -->
<nav class="navbar navbar-default navbar-fixed-bottom">
<div class = "container">