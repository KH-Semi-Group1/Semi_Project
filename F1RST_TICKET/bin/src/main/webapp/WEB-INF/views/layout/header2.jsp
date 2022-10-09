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

 #midmenu{
 	position: fixed-top;
 
 }
.container{
 padding-top: 12%;}
 /*  */
 body {height:3000px;color:#fff;text-align:center; margin:0; padding:0;}
nav {position:fixed; width:100%;height:50px; background:blue;color:white; text-align:center;top:0;left:0;}
.all {display:flex; flex-flow: row wrap; min-width:280px;margin-top:50px;}
header {flex:1 1 100%; height:30px; background:red;}
main {flex: 1 1 70%;height:500px; background:gray;}
aside{flex: 1 1 30%;height:500px;background:purple;}
footer{flex: 1 1 100%;height:100px;text-align:center;background:black;}
 
</style>

<!-- layout.css -->
<!-- <link rel="stylesheet" href="/resources/css/layout.css"> -->

</head>
<body>

<nav>

</nav>
<div class="all">
<header id="header" >대충 상단

</header>
<main>대충 본문</main>
<footer>대충 푸터</footer>
</div>

<header id="header">

<!-- <nav class="navbar navbar-default"> -->
<nav class="navbar navbar-expend-md" >
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">      
      	<img alt="logo" src ="/resources/img/logo.jpg">
      </a>
    </div>
    

	<!-- 각페이지 링크 지정. -->
    <div class="collapse navbar-collapse" id="midmenu">
      <ul class="nav navbar-nav">
        <li><a href="/">뮤지컬</a></li>
        <li><a href="/">공지사항</a></li>
        <li><a href="/">관람후기</a></li>
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
<!-- <nav class="navbar navbar-default navbar-fixed-bottom"> -->
<div class = "container">