<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file = "../layout/header.jsp" %>

<!-- mypage.css -->
<!-- <link rel="stylesheet" href="/resources/css/mypage.css"> -->

<h1 style="text-align: center">마이페이지</h1>
<hr>

<form action="/mypage" method="post" name="mypage" id="mypage" class="form-horizontal">
	
<table class = "table table-bordered">

<!-- mypage 메뉴 -->
<tr>
  <td class="info">My Ticket</td>
  <td class="info">미사용 티켓<br>
 	[DB 작업] 장</td>
  <td class="info">할인 쿠폰<br>
  	[DB 작업] 장</td>
  <td class="info">My Point<br> 
  	[DB 작업] 점</td>
</tr>

<!-- Ticket 메뉴(?) -->
<tr>
	<td>
		<ul style="list-style-type: none">
			<li><a href="/">예매확인 / 취소</a></li>
			<li><a href="/">할인 쿠폰 / 예매권</a></li>
			<li><a href="/mypage">나의 관람 공연</a></li>
		</ul>   
	</td> 
	
</tr>



</table>

</form>