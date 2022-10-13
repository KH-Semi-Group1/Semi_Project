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

<form action="/mypage/reservation" method="post" name="myReservation" id="myReservation" class="form-horizontal">

<div class="container-fluid" id="mypageDiv">
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
		<h3>예매확인/취소</h3>
		<div class="col-md-9" style="padding-left: 30px; ">
			<table class="table">
				<thead>
					<tr>
						<th>예매일</th>
						<th>예매번호</th>
						<th>공연명</th>
						<th>관람일시</th>
						<th>매수</th>
						<th>관람 상태</th>
					</tr>
				</thead>
				
				<tbody>
					<tr style="text-align: center">
						<td colspan="6">예매내역이 없습니다.</td>
					</tr>
					
			</table>
		</div>
		
		<div class="col-md-9" style="padding:20 20 20 20; border:1px solid #CADBE9">
			<span class="glyphicon glyphicon-ok-sign" aria-hidden="true" style="font-size: 16px; font-weight: bold">&nbsp;유의사항</span><br><br>
			<span style="color:red;">- 취소 시 예매수수료는 예매 당일 밤 12시 이전까지 환불되며, 그 이후 기간에는 환불되지 않습니다.</span><br>
			<span>- 티켓 수령 방법 변경(현장수령 -> 배송)은 예매 완료된 건에 한하며, 배송비 결제는 신용카드만 결제 가능합니다.(단 공연일 기준 12일 전까지 / 일부 공연 불가)</span><br>
			<span>- 예매 티켓 배송은 예매완료 후 4~5일 이내(영업일 기준) 배송해드립니다. 티켓 분실 시 재발권이 불가하오니, 보관에 주의해주시기 바랍니다.<br>
   					(일괄배송 공연일 경우 일괄배송일 기준 4~5일(영업일 기준) 이내에 수령 가능)</span><br>	
			<span>- 사용기간이 지난 쿠폰은 사용하실 수 없습니다.</span>
	</div>
</div>
</div>


<!-- </table> -->

</form>

<%@ include file = "../layout/footer.jsp" %>