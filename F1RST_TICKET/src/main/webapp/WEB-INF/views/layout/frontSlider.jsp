<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- layout.css -->
<link rel="stylesheet" href="/resources/css/layout.css">

</head>

<script type="text/javascript">
$(document).ready(function() {
	
	var $slider_list = $("#slider li")
	console.log( $slider_list )
	
	//모든 이미지 숨기기

	$slider_list.css("left", $("#swiper-slide").css("width"))
	
	//새로고침을 때 첫번째 이미지 보여주기
	$slider_list.eq(0).css("left", 0)

	
	//3초마다 클릭이벤트를 발생시키기
	var sliderClick = function() {
		$("#swiper-slide").click()
	}
	
	var timerid = setInterval( sliderClick, 3000 )
	
	//#sliderbox를 클릭할 때마다 이미지 교체하기

	//현재 보여지는 슬라이드의 인덱스 변수
	var curSlide = 0;
	
	$("#swiper-slide").click(function() {

		//timerid를 가진 타이머객체를 종료시킨다
		clearInterval( timerid )
		
		//3초마다 클릭이벤트가 발생하도록 갱신
		timerid = setInterval( sliderClick, 5000 );
		
		
		//다음에 보여지는 슬라이드의 인덱스 변수
		var nextSlide = curSlide + 1;
		nextSlide %= $slider_list.length;
		
		console.log( curSlide, ":", nextSlide )

		//현재 슬라이드 숨기기 - curSlide
		$slider_list.eq(curSlide).animate( { "left": "-="+$("#swiper-slide").css("width") } )
		
		
		
		//다음으로 보여질 슬라이드 준비하기
		$slider_list.eq(nextSlide).css( "left", $("#swiper-slide").css("width") )
		
		//다음 슬라이드 보여주기 - nextSlide
		$slider_list.eq(nextSlide).animate( { "left": "-="+$("#swiper-slide").css("width") } )
	
		//증가식
		curSlide++;
		curSlide %= $slider_list.length;
	})
	
})
 
</script>

<style type="text/css">

/* 이미지 슬라이더 박스 */
#sliderbox {
	width: 600px;
	height: 400px;
	
	/* 외부 정렬 */
	margin: 0 auto;

	/* div영역을 벗어난 부분 안보이도록 처리 */
 	overflow: hidden;
 	position: relative;

}

#slider {
	/* ul태그의 기본 스타일 제거 */
	padding: 0;
	margin: 0;
	list-style-type: none;
	
	/* 자식요소 absolute를 받은 li태그의 기준점으로 설정하기 */
	position: relative;	
}

.slider li {
	position: absolute;
}

.slider li img {
	width: 600px;
	height: 400px;
}

</style>

<body>
<div id="">
<div class="">

<ul>
<li><img src="resources/img/jes.jpg"></li>
<li><img src="resources/img/sam.jpg"></li>
</ul>


</div>
</div>
</body>
</html>