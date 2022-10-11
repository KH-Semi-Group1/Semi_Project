<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
       
<script type="text/javascript" src = "https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
 
<!-- Slick 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
<link rel="stylesheet" href="/resources/css/layout.css">

<style type="text/css">

body {
    line-height: 1;
    font-weight: 400;
}

.slider-hidden {
    width: 100%;
    max-width: 1920px;
    min-width: 1300px;
    overflow: hidden;
    margin: 0 auto;
    height: 500px;
    position: relative;
    margin-bottom: 50px;
}

.slider-wrap {
    width: 1200px;
    position: absolute;
    height: 430px;
    top: 60px;
    left: 50%;
    margin-left: -600px;
}

.slider {
    width: 1350px;
    height: 430px;
    margin-left: -78px;
}

.slide-txt {
	position: absolute;
    text-align: center;
    bottom: 20px;
    width: 100%;
    transition: 0.3s all;
}

.slide-txt p {
	color: #fff;
    line-height: 34px;
    padding: 0 20px;
    font-family: 'Noto Sans KR','NanumBarunGothic','맑은 고딕','Malgun Gothic',sans-serif;
    font-weight: 300;
}

.slide-txt-title {
	font-size: 30px;
    letter-spacing: -0.03em;
}


.slide-txt-sub {
	font-size: 12px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.sec1 {
       border: 1px;
       height:450px;
       width: 350px;
    }


/* 뮤지컬 순위표 목록 */

section {
    width: 100%;
    min-width: 1300px;
    overflow: hidden;
	display: block;
	margin: 0;
	border: 0;
    font-size: inherit;
    font-style: normal;
    vertical-align: baseline;
    height:600px;
}

.main-sec2 {
    background: #f6f6f6;
    padding: 15px 0;
}


/* what's hot */


.hotmain {
	float: left;
    border: 1px solid #ddd;
    background: #fff;
    position: relative;
    margin-left: 100px;
    
	display: grid; 
	grid-template-columns: 200px 200px 200px; 
	grid-template-rows: 300px; 
	gap: 0px 3em; 
	grid-template-areas: 
    ". . ."; 
    justify-content: center; 
 	align-content: start; 
 	width: 800px; 
 	height: 400px; 
}

.hot-tit {
	text-align: left;
	width: 600px;
}

.hot-tit span {
	display: inline-block;
    padding-left: 425px;
    margin-top: 60px;
    font-size: 26px;
    color: #333;
    font-family: 'Noto Sans KR','NanumBarunGothic','맑은 고딕','Malgun Gothic',sans-serif;
    font-weight: 700;
}

/* what's new */

.newmain {
	float: right;
    border: 1px solid #ddd;
    background: #fff;
    position: relative;
    margin-right: 100px;
    margin-bottom: 150px;
    
	display: grid; 
	grid-template-columns: 200px 200px 200px; 
	grid-template-rows: 300px; 
	gap: 0px 3em; 
	grid-template-areas: 
    ". . ."; 
    justify-content: center; 
 	align-content: start; 
 	width: 800px; 
 	height: 400px; 

}

.new-tit {
	text-align: right;
}

.new-tit span {
    display: inline-block;
    padding-right: 440px;
    margin-top: -100px;
    font-size: 26px;
    color: #333;
    font-family: 'Noto Sans KR','NanumBarunGothic','맑은 고딕','Malgun Gothic',sans-serif;
    font-weight: 700;
}

.main-sec3 {
	background: #fff;
    padding: 15px 0;
}

/* Ranking */

.rank {
	float: left;
    width: 800px;
    height: 400px;
    border: 1px solid #ddd;
    background: #fff;
    position: relative;
    margin-left: 100px;
    margin-top: 80px;
}

.rank-tit {
	font-size: 26px;
    width: 370px;
    color: #333;
    position: absolute;
    left: 54px;
    top: 52px;
    font-weight: bold;
    font-family: 'Noto Sans KR','NanumBarunGothic','맑은 고딕','Malgun Gothic',sans-serif;
}

/* Ranking Table */

ul.rank-txt {
    position: absolute;
    left: 54px;
    top: 105px;
    width: 370px;
    border-top: 2px solid #333;
    height: 200px;
    list-style-type: none;
    font-size: 16px;
    padding-top: 6px;
    font-weight: bold;
}

ul.rank-txt > li {
    border-bottom: 1px solid #ddd;
    font-size: 17px;
    padding: 18px 0;
    margin-left: -20px;
    height: 16px;
    position: relative;
    justify-content: center;
}

ul.rank-txt > li > a {
	white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    color: #000;
}

/* MD's Best */

.best {
	float: right;
    width: 800px;
    height: 400px;
    border: 1px solid #ddd;
    background: #fff;
    position: relative;
    margin-right: 100px;
    margin-top: 80px;
}


</style>

<script>
   $(function(){
        $('.center').slick({
          centerMode: true,
          centerPadding: '60px',
          slidesToShow: 3,
          responsive: [
            {
              breakpoint: 768,
              settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 3
              }
            },
            {
              breakpoint: 480,
              settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 1
              }
            }
          ]
        });

    })
  
  </script>
  
<body>

<header>

<nav class="topmenu">

<!--  비 로그인   -->
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

		<div class="header2">
	      <ul class="nav navbar-nav nav-pills topcon" data-bs-target="#navbarToggleExternalContent">
	        <li><a href="/">뮤지컬</a></li>
	        <li><a href="/">공지사항</a></li>
	        <li><a href="/">관람후기</a></li>
	        <li><a href="/">이용안내</a></li>
	        <li><a href="/">My티켓</a></li>
	      </ul>
		</div>

	</div>
</div>

</header>

<div class="slider-hidden">
<div class="slider-wrap">
<div class="slider">
	
	<div class="center slick_slider">
		<div class="slide"><a href='#'><img src="./resources/img/poster/jes.jpg" class="sec1"></a><div class="slide-txt"><p class="slide-txt-title">뮤지컬 (지저스)</p><p class="slide-txt-sub">asdasd</p></div></div>
		<div class="slide"><a href='#'><img src="./resources/img/poster/ale.jpg" class="sec1"></a></div>
		<div class="slide"><a href='#'><img src="./resources/img/poster/bru.jpg" class="sec1"></a></div>
		<div class="slide"><a href='#'><img src="./resources/img/poster/sam.jpg" class="sec1"></a></div>
		<div class="slide"><a href='#'><img src="./resources/img/poster/seo.jpg" class="sec1"></a></div>


	</div>
	
</div>
</div>
</div>

<section class="main-sec2">

		<div class="hot-tit">
			<span>What's Hot</span>
<!-- 			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 			<button type="button" class="btn btn-default">전체보기</button> -->
		</div>
	<div class="hotmain">
		<img src="./resources/img/poster/jes.jpg" style="width:180px; height:260px;">
		<img src="./resources/img/poster/ale.jpg" style="width:180px; height:260px;">
		<img src="./resources/img/poster/bru.jpg" style="width:180px; height:260px;">
		
	</div>

		<div class="new-tit">
			<span>What's New</span>
<!-- 			<button type="button" class="btn btn-default">Default</button> -->
<!-- 			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
		</div>
	<div class="newmain">
		<img src="./resources/img/poster/jes.jpg" style="width:180px; height:260px;">
		<img src="./resources/img/poster/ale.jpg" style="width:180px; height:260px;">
		<img src="./resources/img/poster/bru.jpg" style="width:180px; height:260px;">
	</div>

</section>

<section class="main-sec3">

	<div class="rank">
		<p class="rank-tit">
		Weekly Ranking
		</p>
		<ul class="rank-txt">
		<br>
		<li><a href='#'>1위. 뮤지컬 〈킹키부츠〉 - 부산 </li></a><br>
		<li><a href='#'>2위. 더뮤지컬 콘서트 〈할로윈 더 뮤지컬〉</li></a><br>
		<li><a href='#'>3위. 뮤지컬 〈서편제〉</li></a><br>
		<li><a href='#'>4위. 뮤지컬 〈안나, 차이코프스키〉</li></a><br>
		<li><a href='#'>5위. 뮤지컬 〈삼총사〉</li></a>
		</ul>
		
	</div>

<div class="best">
</div>
</section>




<%@ include file = "./layout/footer.jsp" %>


