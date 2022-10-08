<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.dto.Musical"%>
<%@ page import="java.util.List"%>
<!-- c:forEach 사용을 위한 jstl 선언 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 조회결과 반환 -->
<% List<Musical> musicalList = (List) request.getAttribute("musicalList"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1RST TICKET</title>

<script type="text/javascript" src = "https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script>
$(document).ready(function(){
	<!-- 뮤지컬 카테고리 메뉴 클릭 시 아이콘 변경 -->
	$(".dropdown").on("hide.bs.dropdown", function(){
		$(".btn").html('전체보기 <span class="glyphicon glyphicon-chevron-down"></span>');
	});
	$(".dropdown").on("show.bs.dropdown", function(){
		$(".btn").html('전체보기 <span class="glyphicon glyphicon-chevron-up"></span>');
	});
  
	<!-- 뮤지컬 카테고리 메뉴 트렌젝션 -->
	$('.dropdown').on('show.bs.dropdown', function() {
		$(this).find('.dropdown-menu').first().stop(true, true).slideDown();
	});
	$('.dropdown').on('hide.bs.dropdown', function() {
		$(this).find('.dropdown-menu').first().stop(true, true).slideUp();
	});
});
</script>

<!-- layout.css -->
<link rel="stylesheet" href="/resources/css/layout.css">

<!-- list.css -->
<link rel="stylesheet" href="/resources/css/list.css">

</head>
<body>

<header id="header">

  <div class="topmenu">
	<ul style="list-style-type: none">
		<li style="display:inline"><a href="/">로그인</a></li>
		<li style="display:inline"><a href="/">마이페이지</a></li>
		<li style="display:inline"><a href="/">고객센터</a></li>
	</ul>    
  </div>
  
<!-- <nav class="navbar navbar-default"> -->
<nav class="navbar navbar-expend-md" >
  <div class="container-fluid">
<!-- <div class="navbar-header">
      <a class="navbar-brand" href="/">      
      	<img alt="logo" src ="/resources/img/logo.jpg" style="height: 50px;">
      </a>
     </div> -->
    

	<!-- 각페이지 링크 지정. -->
    <div class="collapse navbar-collapse" id="midmenu">
    <a class="navbar-brand" href="/">      
      	<img alt="logo" src ="/resources/img/logo.jpg" style="height: 60px; position: relative; bottom: 15px;">
     </a>
      <ul class="nav navbar-nav">
        <li><a href="/musical/mcList">뮤지컬</a></li>
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
<div class="container">


<hr>
<div class="text-center">
		<span id="menuMu">뮤지컬</span>
		<span style="display:inline-block;" class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
	
	<!-- 뮤지컬 페이지 드롭다운 메뉴 -->
	<div class="dropdown" style="display:inline-block;">
  		<button onclick="handleTitleClick()" class="btn btn-default.focus dropdown-toggle btn-lg" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
    		전체보기 <span id="icon" class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
	  	</button>
	  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
	    <li role="presentation"><a role="menuitem" tabindex="-1" href="/musical/mcList">전체보기</a></li>
	    <li role="presentation"><a role="menuitem" tabindex="-1" href="/musical/mcNew">신규보기</a></li>
	    <li role="presentation"><a role="menuitem" tabindex="-1" href="/musical/mcLike">인기보기</a></li>
	    <li role="presentation"><a role="menuitem" tabindex="-1" href="/musical/mcMd">MD's PICK</a></li>
	  </ul>
	</div>
</div>
<hr>

<!-- 뮤지컬 전체 목록 -->
<div>
	
<c:forEach var="musical" items="${musicalList}"> 
	<a href="./muView?mcno=${musical.mcno}">
		<div class="col-md-3">
			<div id="imgWrapper">
				<img alt="포스터" src="${pageContext.request.contextPath}/resources/img/mc/${musical.mcimg}"
						onerror="this.src='${pageContext.request.contextPath}/resources/img/mc/noImg.jpg'">
			</div>
			<div id="textWrapper">
				<p class="title">뮤지컬 [${musical.mcname}]</p> 
				<p class="info">${musical.mcstart} ~ ${musical.mcend}</p> 
				<p class="info">${musical.mcloc}</p>
				<br><br>
			</div>
		</div> 
	</a>
</c:forEach>

</div>

<%@ include file = "../layout/footer.jsp" %>

