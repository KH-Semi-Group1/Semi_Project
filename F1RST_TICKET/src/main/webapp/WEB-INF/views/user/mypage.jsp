<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file = "../layout/header.jsp" %>

<!-- mypage.css -->
<!-- <link rel="stylesheet" href="/resources/css/mypage.css"> -->

<h1 style="text-align: center">마이페이지</h1>
<hr>

<form action="/mypage" method="post" name="mypage" id="mypage" class="form-horizontal">
	
	
<div class="container-fluid">
	<div class="row text-center" style="font-size: 16px; background-color: #D4DFE6;">
		<div class="col-md-3">
		My Ticket
		</div>
		<div class="col-md-3">
		미사용 티켓<br>
		[DB작업] 장
		</div>
		<div class="col-md-3">
		할인 쿠폰<br>
		[DB작업] 장
		</div>
		<div class="col-md-3">
		My Point<br>
		[DB작업] 장
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<ul style="list-style-type: none">
				<li class="list-item"><a href="/">예매확인 / 취소</a></li>
				<li class="list-item"><a href="/">할인 쿠폰 / 예매권</a></li>
				<li class="list-item"><a href="/mypage">나의 관람 공연</a></li>
			</ul>
		</div>
		<div class="col-md-9">
			<h4>
				최근 예매 내역
			</h4>
			<table class="table">
				<thead>
					<tr>
						<th>
							예매일
						</th>
						<th>
							예매번호
						</th>
						<th>
							공연명
						</th>
						<th>
							관람일시
						</th>
						<th>
							매수
						</th>
						<th>
							예매상태
						</th>
						
					</tr>
				</thead>
				
				<tbody>
					<tr>
						<td>
							[예매일]
						</td>
						<td>
							[예매번호]
						</td>
						<td>
							[공연명]
						</td>
						<td>
							[관람일시]
						</td>
						<td>
							[매수]
						</td>
						<td>
							[예매상태]
						</td>
					</tr>
					
				</tbody>
			</table>
			
			<h4>
				My Point 적립내역
			</h4>
			<table class="table">
				<thead>
					<tr>
						<th>
							공연명(예매번호)
						</th>
						<th>
							적립일
						</th>
						<th>
							My Point 
						</th>
						<th>
							매수
						</th>
						<th>
							적립유형
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							[공연명(예매번호)]
						</td>
						<td>
							[적립일]
						</td>
						<td>
							[My Point]
						</td>
						<td>
							[매수]
						</td>
						<td>
							[적립유형]
						</td>
					</tr>
					
				</tbody>
			</table>
			
			<h4>
				나의 관람 공연
			</h4>
			<table class="table">
				<thead>
					<tr>
						<th>
							공연명(예매번호)
						</th>
						<th>
							관람일시
						</th>
						<th>
							매수
						</th>
						<th>
							리뷰 작성
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							[공연명(예매번호)]
						</td>
						<td>
							[관람일시]
						</td>
						<td>
							[매수]
						</td>
						<td>
							[리뷰 작성]
						</td>
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>
</div>


<!-- </table> -->

</form>