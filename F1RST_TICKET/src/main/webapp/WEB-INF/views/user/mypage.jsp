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

<form action="/mypage" method="post" name="mypage" id="mypage" class="form-horizontal">

<div class="container-fluid" id="mypageDiv">
	<div class="row text-center" id="mypageInfo" style="font-size: 20px;">
		<div class="col-md-3" >My Ticket</div>
	</div>
	
	<div class="row">
		<div class="col-md-3" id="mypageMenu">
			<ul style="list-style-type: none; padding:0;">
				<li class="list-item"><a href="/mypage/reservation">예매확인 / 취소
				 	<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span> </a></li><br>
				<li class="list-item"><a href="/advance/ticket">할인 쿠폰 / 예매권
					<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></li><br>
				<li class="list-item"><a href="/watch/musical">나의 관람 공연
					<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></li><br>
				<li class="list-item"><a href="/user/update">회원 정보 수정
					<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></li><br>
			</ul>
		</div>
		<br>
		<div class="col-md-9" style="padding-left: 30px; ">
		
		<!-- 최근 예매 내역 확인. 최신 3개만 보여줄 수 있음 -->
			<h4>최근 예매 내역</h4>
			<table class="table">
				<thead>
					<tr>
						<th>예매일</th>
						<th>예매번호</th>
						<th>공연명</th>
						<th>관람일시</th>
						<th>매수</th>
						<th>예매상태</th>
					</tr>
				</thead>
				
				<tbody>
					<tr>
						<td>2022-10-11</td>
						<td>098229629</td>
						<td>뮤지컬 [삼총사]</td>
						<td>2022-10-18</td>
						<td>2 장</td>
						<td>
							<button type="button" class=" btn btn-sm" style="background-color: #D4DFE6;" id="btnResCancel">예매취소</button>
					
						</td>
					</tr>
					<tr>
						<td>2022-10-01</td>
						<td>333079378</td>
						<td>뮤지컬 〈지저스 크라이스트 수퍼스타〉 50주년 기념 한국 공연</td>
						<td>2022-10-05</td>
						<td>3 장</td>
						<td>관람 완료</td>
					</tr>
					<tr>
						<td>2022-09-03</td>
						<td>370295172</td>
						<td>2022 웰컴 대학로-웰컴 씨어터 뮤지컬 〈브람스〉</td>
						<td>2022-09-08</td>
						<td>2 장</td>
						<td>관람 완료</td>
					</tr>
					
				</tbody>
			</table>
			<br>
			
			<!-- 없앨 기능. 근데 이게 더 쉬우면 살릴 수도 있음 -->
			<!-- <h4>My Point 적립내역</h4>
			<table class="table">
				<thead>
					<tr>
						<th>공연명(예매번호)</th>
						<th>적립일</th>
						<th>My Point </th>
						<th>매수</th>
						<th>적립유형</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>뮤지컬 [삼총사](098229629)</td>
						<td>2022-10-11</td>
						<td>500 점</td>
						<td>2 장</td>
						<td>포인트</td>
					</tr>
					<tr>
						<td>뮤지컬 〈지저스 크라이스트 수퍼스타〉 50주년 기념 한국 공연(333079378)</td>
						<td>2022-10-01</td>
						<td>350 점</td>
						<td>3 장</td>
						<td>포인트</td>
					</tr>
					
					<tr>
						<td>2022 웰컴 대학로-웰컴 씨어터 뮤지컬 〈브람스〉(370295172)</td>
						<td>2022-09-04</td>
						<td>200 점</td>
						<td>2 장</td>
						<td>포인트</td>
					</tr>
					
				</tbody>
			</table>
			
			<br> -->
			
			<!-- 최근 관람 공연 3개만 보여줌. 관람 완료 후 후기 작성 안된 부분은 버튼 보이도록 할 것 -->
			<h4>나의 관람 공연</h4>
			<table class="table">
				<thead>
					<tr>
						<th>공연명(예매번호)</th>
						<th>관람일시</th>
						<th>매수</th>
						<th>후기작성</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>뮤지컬 〈지저스 크라이스트 수퍼스타〉 50주년 기념 한국 공연(333079378)</td>
						<td>2022-10-05	</td>
						<td>3 장</td>
						<td>
							<button type="button" class=" btn btn-sm" style="background-color: #D4DFE6;" id="btnReview">후기작성</button>
						</td>
					</tr>
					<tr>
						<td>2022 웰컴 대학로-웰컴 씨어터 뮤지컬 〈브람스〉(370295172)</td>
						<td>2022-09-08</td>
						<td>2 장</td>
						<td>작성 완료</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>


<!-- </table> -->

</form>

<%@ include file = "../layout/footer.jsp" %>