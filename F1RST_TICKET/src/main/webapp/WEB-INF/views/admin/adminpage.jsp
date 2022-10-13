<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script type="text/javascript" src = "https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<!-- adminpage.css -->
<style type="text/css">
#adminpageDiv div{
	vertical-align: middle;
	padding: 20px;
}

#adminpageDiv ul li a {
	text-decoration: none;
	color : #fff;
	font-size: 16px;
}

#adminpageDiv ul li a:hover{
	
border-bottom: 2px solid #D4DFE6;

}

#adminpageDiv{
	
	background-color: #8EC0E4;
	padding-top: 10%;
	padding-bottom: 20%;
}

#adminpageMain {
	padding-top: 5%;

}

</style>

	
<form action="/adminpage" method="post" name="adminpage" id="adminpage" class="form-horizontal">

<div class="container-fluid">
	<div class="row">
		<div class="col-md-4 col-md-offset-1">
			<a href='/admin/main'><img alt="LOGO" src="/resources/img/logo.jpg" style="display: inline"></a>
		</div>
	</div>
	<div class="col-md-4 col-md-offset-1">
		<p style="font-size: 20px; color:black; font-weight: bold">관리자 페이지</p>
	</div>
	<br><br>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-2 col-md-offset-1" id="adminpageDiv">
			<ul style="list-style-type: none;">
				<li><a href="/admin/main">회원 관리
				<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></li><br>
				<li><a href="/admin/main">게시글 관리
					<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></li><br>
				<li><a href="/admin/main">예매 관리
					<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></li><br>
				<li><a href="/admin/main">티켓 관리
					<span class="glyphicon glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></li><br>
			</ul>
		</div>
		<div class="col-md-8" id="adminpageMain">
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
						<td>[예매일]</td>
						<td>[예매번호]</td>
						<td>[공연명]</td>
						<td>[관람일시]</td>
						<td>[매수]</td>
						<td>[예매상태]</td>
					</tr>
				</tbody>
			</table>
			
			<h4>My Point 적립내역</h4>
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
						<td>[공연명(예매번호)]</td>
						<td>[적립일]</td>
						<td>[My Point]</td>
						<td>[매수]</td>
						<td>[적립유형]</td>
					</tr>
				</tbody>
			</table>
			
			<h4>나의 관람 공연</h4>
			<table class="table">
				<thead>
					<tr>
						<th>공연명(예매번호)</th>
						<th>관람일시</th>
						<th>매수</th>
						<th>리뷰 작성</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>[공연명(예매번호)]</td>
						<td>[관람일시]</td>
						<td>[매수]</td>
						<td>[리뷰 작성]</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</div>
</form>