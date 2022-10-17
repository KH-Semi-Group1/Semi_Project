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
<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
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
    width: 1350px;
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

.slick-next:before, .slick-prev:before {
    font-family: slick;
    font-size: 25px;
    line-height: 1;
    opacity: .75;
    color: #6AAFE6;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
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
    height:700px;
}

.main-sec2 {
    background: #f6f6f6;
    padding: 85px 0;
}

.more {
	float: right;
	margin-top: 35px;
 	}

/* what's hot */


.hotmain {
	float: left;
    border: 1px solid #ddd;
    background: #fff;
    position: relative;
    margin-left: 110px;
    
	display: grid; 
	grid-template-columns: 200px 200px 200px; 
	grid-template-rows:   80px 280px 70px 70px; 
	gap: 0px 3em; 
	grid-template-areas: 
    ". . ."; 
    justify-content: center; 
 	align-content: start; 
 	width: 800px; 
 	height: 500px; 
}

.hot-tit {
	background: fff;
	font-size: 30px;
	text-align: center;
    color: #333;
    font-family: 'Noto Sans KR','NanumBarunGothic','맑은 고딕','Malgun Gothic',sans-serif;
    font-weight: 700;
    justify-content: center;
    padding-left: -10px;
    margin-top: 40px;
}

.hot-tit-sub {
	font-size: 15px;
	background: fff;
	color: #333;
	text-align: center;
	font-weight: bold;
}

.hot-tit-sub2 {
	font-size: 12px;
    color: #999;
    text-align: center;
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
	grid-template-rows:   80px 300px 70px 70px; 
	gap: 0px 3em; 
	grid-template-areas: 
    ". . ."; 
    justify-content: center; 
 	align-content: start; 
 	width: 800px; 
 	height: 550px; 

}

.new-tit {
	background: fff;
	font-size: 30px;
	text-align: center;
    color: #333;
    font-family: 'Noto Sans KR','NanumBarunGothic','맑은 고딕','Malgun Gothic',sans-serif;
    font-weight: 700;
    justify-content: center;
    padding-left: -10px;
    margin-top: 40px;
}

.new-tit-sub {
	font-size: 15px;
	background: fff;
	color: #333;
	text-align: center;
	font-weight: bold;
}

.new-tit-sub2 {
	font-size: 12px;
    color: #999;
    text-align: center;
}


.main-sec3 {
	background: #fff;
    padding: 15px 0;
}

/* Ranking */

.rank {
	float: left;
    width: 600px;
    height: 400px;
    border: 1px solid #ddd;
    background: #f6f6f6;
    position: relative;
    margin-left: 200px;
    margin-top: 120px;
}

.more-rank {
	margin-top: -30px;
	margin-left: 290px;
}
.rank-tit {
	font-size: 26px;
    width: 370px;
    color: #333;
    position: absolute;
    left: 54px;
    top: 52px;
    font-weight: bold;
    text-align: left;
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
    text-align: left;
}

ul.rank-txt > li > a {
	white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    color: #000;
}



/* MD's Pick */

.pickmain {
	float: right;
    border: 1px solid #ddd;
    background: #f6f6f6;
    position: relative;
    margin-right: 100px;
    margin-top: 65px;
    
	display: grid; 
	grid-template-columns: 200px 200px 200px; 
	grid-template-rows:   80px 300px 60px 60px; 
	gap: 0px 3em; 
	grid-template-areas: 
    ". . ."; 
    justify-content: center; 
 	align-content: start; 
 	width: 800px; 
 	height: 500px; 
}

.pick-tit {
	background: fff;
	font-size: 30px;
	text-align: center;
    color: #333;
    font-family: 'Noto Sans KR','NanumBarunGothic','맑은 고딕','Malgun Gothic',sans-serif;
    font-weight: 700;
    justify-content: center;
    padding-left: -10px;
    margin-top: 40px;
}

.pick-tit-sub {
	font-size: 15px;
	background: fff;
	color: #333;
	text-align: center;
	font-weight: bold;
	margin-top: -20px;
}

.pick-tit-sub2 {
	font-size: 12px;
    color: #999;
    text-align: center;
}


</style>

<script>

// 슬라이드
   $(function(){
        $('.center').slick({
          centerMode: true,
          centerPadding: '100px',
          slidesToShow: 3,
          responsive: [
            {
              breakpoint: 768,
              settings: {
                arrows: true,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 3
              }
            },
            {
              breakpoint: 480,
              settings: {
                arrows: true,
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
	        <li><a href="/musical/mcList">뮤지컬</a></li>
	        <li><a href="/notice/list">공지사항</a></li>
	        <li><a href="/review/list">관람후기</a></li>
	        <li><a href="/">이용안내</a></li>
	        <li><a href="/">My티켓</a></li>
	      </ul>
		</div>

	</div>
</div>

</header>

<!-- 슬라이드 -->
<div class="slider-hidden">
<div class="slider-wrap">

	<div class="slider">
	
		<div class="center slick_slider">
			<div class="slide"><a href='#'><img src="./resources/img/poster/jes.jpg" class="sec1"></a></div>
			<div class="slide"><a href='#'><img src="./resources/img/poster/hap.jpg" class="sec1"></a></div>
			<div class="slide"><a href='#'><img src="./resources/img/poster/ale.jpg" class="sec1"></a></div>
			<div class="slide"><a href='#'><img src="./resources/img/poster/bru.jpg" class="sec1"></a></div>
			<div class="slide"><a href='#'><img src="./resources/img/poster/hook.jpg" class="sec1"></a></div>
			<div class="slide"><a href='#'><img src="./resources/img/poster/seo.jpg" class="sec1"></a></div>
			<div class="slide"><a href='#'><img src="./resources/img/poster/pri.jpg" class="sec1"></a></div>
			<div class="slide"><a href='#'><img src="./resources/img/poster/per.jpg" class="sec1"></a></div>
			<div class="slide"><a href='#'><img src="./resources/img/poster/sam.jpg" class="sec1"></a></div>
		</div>

	</div>
	
</div>
</div>

<section class="main-sec2">

<!-- WHAT'S HOT -->
	<div class="hotmain">
		<div class="hotitem"></div>
		<div class="hot-tit">WHAT'S HOT </div>
		<div class="hotitem"><a href='#'><div class="more"><img src="resources/img/more.png"></div></a></div>
		<div class="hotitem"><a href='#'><img src="./resources/img/poster/sam.jpg" title="뮤지컬 <삼총사>" style="width:200px; height:260px;"></a></div>
		<div class="hotitem"><a href='#'><img src="./resources/img/poster/pri.jpg" title="뮤지컬 <프리즌>" style="width:200px; height:260px;"></a></div>
		<div class="hotitem"><a href='#'><img src="./resources/img/poster/hap.jpg" title="뮤지컬 <우연히 행복해지다>" style="width:200px; height:260px;"></a></div>
		<div class="hot-tit-sub">뮤지컬 <삼총사></div>
		<div class="hot-tit-sub">뮤지컬 <프리즌></div>
		<div class="hot-tit-sub">뮤지컬 <우연히 행복해지다></div>
		<div class="hot-tit-sub2">학생 할인 30%</div>
		<div class="hot-tit-sub2">평일 22,000원</div>
		<div class="hot-tit-sub2">평일 할인 40%</div>
	</div>
	
<!-- WHAT'S NEW -->
	<div class="hotmain">
		<div class="newitem"></div>
		<div class="new-tit">WHAT'S NEW </div>
		<div class="newitem"><a href='#'><div class="more"><img src="resources/img/more.png"></div></a></div>
		<div class="newitem"><a href='#'><img src="./resources/img/poster/hook.jpg" title="뮤지컬 <더 훅 The Hook>" style="width:200px; height:260px;"></a></div>
		<div class="newitem"><a href='#'><img src="./resources/img/poster/per.jpg" title="뮤지컬 <사람은 무엇으로 사는가>" style="width:200px; height:260px;"></a></div>
		<div class="newitem"><a href='#'><img src="./resources/img/poster/dre.jpg" title="뮤지컬 <드리머스 Dreamers>" style="width:200px; height:260px;"></a></div>
		<div class="new-tit-sub">뮤지컬 <더 훅 The Hook></div>
		<div class="new-tit-sub">뮤지컬 <사람은 무엇으로 사는가></div>
		<div class="new-tit-sub">뮤지컬 <드리머스 Dreamers></div>
		<div class="new-tit-sub2">평일 할인 30%</div>
		<div class="new-tit-sub2">학생 할인 40%</div>
		<div class="new-tit-sub2">평일 20,000원</div> 
	</div>

</section>

<section class="main-sec3">

<!-- WEEKLY RANKING -->
	<div class="rank">
	
		<div class="rank-tit">
			WEEKLY RANKING
			<a href='#'><div class="more-rank"><img src="resources/img/more.png"></div></a>
		</div>
		
		<ul class="rank-txt">
			<li><a href='#'>1위. 뮤지컬 〈킹키부츠〉 - 부산 </li></a><br>
			<li><a href='#'>2위. 더뮤지컬 콘서트 〈할로윈 더 뮤지컬〉</li></a><br>
			<li><a href='#'>3위. 뮤지컬 〈서편제〉</li></a><br>
			<li><a href='#'>4위. 뮤지컬 〈안나, 차이코프스키〉</li></a><br>
			<li><a href='#'>5위. 뮤지컬 〈삼총사〉</li></a>
		</ul>
		
	</div>

<!-- MD'S PICK -->
	<div class="pickmain">
		<div class="pickitem"></div>
		<div class="pick-tit">MD'S PICK</div>
		<div class="pickitem"><a href='#'><div class="more"><img src="resources/img/more.png"></div></a></div>
		<div class="pickitem"><a href='#'><img src="./resources/img/poster/ale.jpg" title="뮤지컬 <엘그리아 Alegria>" style="width:200px; height:260px;"></a></div>
		<div class="pickitem"><a href='#'><img src="./resources/img/poster/seo.jpg" title="뮤지컬 <서편제>" style="width:200px; height:260px;"></a></div>
		<div class="pickitem"><a href='#'><img src="./resources/img/poster/pri.jpg" title="뮤지컬 <프리즌>" style="width:200px; height:260px;"></a></div>
		<div class="pick-tit-sub">뮤지컬 <엘그리아 Alegria></div>
		<div class="pick-tit-sub">뮤지컬 <서편제></div>
		<div class="pick-tit-sub">뮤지컬 <프리즌></div>
		<div class="pick-tit-sub2">평일 20,000원</div> 
		<div class="pick-tit-sub2">평일 할인 30%</div>
		<div class="pick-tit-sub2">학생 할인 40%</div>
	</div>
	
</section>

<!-- Footer start -->
<footer class="py-5 bg-dark mt-auto" id="footer">
	<div class="empty">
		<div class="footer-wrap">
<!-- 			<div class="collapse navbar-collapse" id="bottm-logo" style= "float:right; display:inline-block;"> -->
<!-- 				<a class="navbar-brand navbar-right" href="/"> -->
<%-- 					<img alt="logo" src="<%=request.getContextPath()%>/resources/img/logo.jpg"> --%>
<!-- 				</a> -->
<!-- 			</div> -->
			<div class="collapse navbar-collapse botmenu"  id="botmenuid">
				<ul class="nav navbar-nav">
					<li><a href="/">회사소개</a></li>
					<li><a href="/">개인정보 처리방침</a></li>
					<li><a href="/">이용약관</a></li>
					<li><a href="/">고객센터</a></li>
					<li><a href="/">티켓판매안내</a></li>
					<li><a href="/">광고안내</a></li>
				</ul>
			</div>
		</div>
	</div>	
</footer> <!-- Footer end -->

