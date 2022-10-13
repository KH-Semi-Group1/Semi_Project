<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!-- mypage.css -->
<link rel="stylesheet" href="/resources/css/mypage.css">

<%@ include file = "../layout/header.jsp" %>


<script type="text/javascript">
$(document).ready(function(){
	
	// 리뷰작성 버튼
	$("#btnReview").click(function(){
		$("form").submit();
		$(location).attr('href', '/') /* '/' 자리에 리뷰 작성 페이지 넘어가게 링크 작성 */
	})

	$('#btnResCancel').click(function() {
        var result = confirm('예매를 취소하시겠습니까?');
        if(result) {
        	
        	if(result == true){
        		
        	 $(location).attr('href', '/resListCancel')
        	}
        }
    });
	
})
</script>

<h1 style="text-align: center">마이페이지</h1>
<hr>

<form action="/watch/musical" method="post" name="watchmc" id="watchmc" class="form-horizontal">

<div class="container-fluid" id="mypageDiv">
	<div class="row text-center" id="mypageInfo" style="font-size: 20px;">
		<div class="col-md-3" >My Ticket</div>
		<div class="col-md-3">미사용 티켓<br><a href='/noUseTicket'>[DB]</a> 장</div>
		<div class="col-md-3">할인쿠폰<br><a href='//advance/ticket'>[DB]</a> 장</div>
<!-- 		<div class="col-md-3">My Point<br><a href='/mypage'>[DB]</a> 점</div> -->
	</div>
	<div class="row">
		<div class="col-md-3" id="mypageMenu">
			<ul style="list-style-type: none; padding:0;">
				<li class="list-item"><a href="/mypage/reservation">예매확인 / 취소
				 	<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span> </a></li><br>
				<li class="list-item"><a href="/advance/ticket">할인쿠폰 / 예매권
					<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></li><br>
				<li class="list-item"><a href="/watch/musical">나의 관람 공연
					<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></li><br>
				<li class="list-item"><a href="/user/update">회원 정보 수정
					<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></li><br>
			</ul>
		</div>
		<br>
		<h3>할인예매권/예매권</h3>
		<div class="col-md-9" style="padding-left: 30px; ">
			<input type="text" placeholder="공연명을 입력하세요.">
			<button style="background-color:#6AAFE6; color:#fff">조회</button>
		<br><br>
		<div class="col-md-12" style="padding:20 20 20 20; border:1px solid #CADBE9">
			<hr>
				<h3>관람하신 공연이 없습니다.</h3>
			<hr>
			
		</div>
	</div>
</div>
</div>


<!-- </table> -->

</form>

<%@ include file = "../layout/footer.jsp" %>