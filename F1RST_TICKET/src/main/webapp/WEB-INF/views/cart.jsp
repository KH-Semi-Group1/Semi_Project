<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="web.dto.Cart"%>   
<%-- <%List<Cart> cartList = (List) request.getAttribute("cartList");%> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>

<style type="text/css">

.title {
	background: fff;
	font-size: 30px;
	text-align: center;
    color: #333;
    font-family: 'Noto Sans KR','NanumBarunGothic','맑은 고딕','Malgun Gothic',sans-serif;
    font-weight: 700;
    justify-content: center;
    margin-top: 30px;
}

section {
    width: 100%;
    min-width: 1200px;
    overflow: hidden;
	display: block;
	margin: 0;
	border: 0;
    font-size: inherit;
    font-style: normal;
    vertical-align: baseline;
    height:600px;
}

.empty { 
	text-align: center;
}

colgroup {
    display: table-column-group;
}

.mainsec {
    background: #f6f6f6;
    padding: 85px 0;
}


.cart {
	border-collapse: collapse;
	border-spacing: 0;
	margin-top: -50px;
	margin-left: 25px;
	margin-right: 25px;

}

.cart td{
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	word-break: normal;
	line-height: 60px;
    padding: 10px 0;
}
.cart th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: bold;
	overflow: hidden;
	padding: 10px 20px;
	word-break: normal;
}

.cart-body {
	background-color: #ffffff;
	text-align:center;
	vertical-align:top
}

.count #down .downBtn {
	position: static
}

.upBtn {
	border: none;
}

.info {
	margin-top: 30px;
	position: relative;
}

.info-txt {
	font-size: 14px;
	background: fff;
	color: #333;
	text-align: left;
	font-weight: normal;
	margin-left: 10px;
}

.pay-sec {
	width: 100%;
	height: 70px;
	margin-top: 50px;
}

.pay-tit {
	text-align: center;
    font-size: 16px;
    color: #777;
    margin-right: 70px;
}

.submit-btn-group {
	padding-top: 20px;
    padding-bottom: 10px;
    min-height: 35px;
    text-align: center;
    clear: both;
    position: relative;
}

.submit-btn {
    min-width: 290px;
    height: 60px;
    line-height: 54px;
    padding-top: 4px;
    font-size: 20px;
    font-weight: 50px;
    font-family: 'Noto Sans KR','NanumBarunGothic','맑은 고딕','Malgun Gothic',sans-serif;
    border: 1px solid #6AAFE6;
    background-color: #6AAFE6;
}


</style>

<script type="text/javascript">  	 

//$("document").ready(function() {
//	  //selectedTotal
//		var total=Number(0);
<%-- 		  <% --%>
<%-- 		  for(int j=0;j<productList.size();j++){%> --%>
<%-- 			total += Number(document.getElementsByName("total")[<%=j%>].value); --%>
<%-- 		  <%}%> --%>
// 		  $('#selectedTotal').val(total);
// 	});
	
// 	$("document").ready(function() {
//     //count button 
//     $(document).on('click','button[name="countBtn"]',function(e){
//  		 e.stopPropagation();
//  	     e.preventDefault();
//   	 let countBox = $(this).closest('.count-box');
//   	 let row = countBox.closest('tr');
//   	 let countInput = countBox.find('input[name=countInput]');
//   	 let count = parseInt(countInput.val());
//   	 let price = row.find('input[name=price]').val(); 
//   	 let totalInput = row.find('input[name=total]');

//   	 //upBtn일 경우
// 	 if($(this).hasClass("upBtn")){
// 		 count++;
		
// 	 //downBtn일 경우
// 	 } else {
// 		 count--;
// 		 if(count < 1) return;
// 	 }
// 	 countInput.val(count);
// 	 totalInput.val(count * price); 
// 	 var total=Number(0);
<%-- 	  <% --%>
<%-- 	  for(int j=0;j<mcList.size();j++){%> --%>
<%-- 		total += Number(document.getElementsByName("total")[<%=j%>].value); --%>
<%-- 	  <%}%> --%>
// 	  $('#selectedTotal').val(total);
//   });

//전체 체크

$(document).on('change','#allCheck',function(e){
	  let checkItem = $("input[name=checkP]");
    if($(this).prop("checked")) { 
  	  checkItem.prop("checked",true); 
    } else {
  	  checkItem.prop("checked",false);
    }
});
let checkItem = $("input[name=checkP]");
$("#allCheck").prop("checked",true);
checkItem.prop("checked",true); 

//개별 체크

$(document).on('change','input[name=checkP]',function(e){
	let totalPrice = $("#selectedTotal");
	let countInput = countBox.find('input[name=countInput]');
	let count = countInput.val();
	totalPrice = parseInt(document.getElementById("sum").val(count)); 
l	let val = document.getElementById('input[name="checkP"]').checked;
         
	if($(this).prop("checked")) {
		totalPrice+=result;
	} else {
		totalPrice-=result;
	}
	document.getElementById("sum").value = totalPrice;
         
	totalPrice.empty();
	totalPrice.html(val);  
}); 

</script>


<body>

<%@ include file = "./layout/header.jsp" %>

<p class="title">
Order / Payment 
</p>

<section class="mainsec">

<!-- <br> -->
<%-- 	<%-- 있으면 목록 출력 없으면 비어있음 표시--%> --%>
<%-- 	<% if (cartList.isEmpty()) { %> --%>
<!-- 		<div class="empty"> -->
<!-- 		<p>Your cart is empty</p> -->
<!-- 		</div> -->
<%-- 	<% } else {%> --%>

<table class="cart">

	<colgroup>
		<col width="10%">
		<col width="30%">
		<col width="15%">
		<col width="7%">
		<col width="15%">
		<col width="3%">
		<col width="10%">
	</colgroup>
		
	<thead>
  	<tr>
		<th scope="col" class="cart-body">예매번호</th>
		<th scope="col" class="cart-body">공연명</th>
    	<th scope="col" class="cart-body">관람일시</th>
    	<th scope="col" class="cart-body">매수</th>
   		<th scope="col" class="cart-body">관람 상태</th>
   		<th scope="col" class="cart-body"><input type="checkbox" id="allCheck" name="allcheck"></th>
   		<th scope="col" class="cart-body">가격</th>
  	</tr>
	</thead>
	
	<tbody>
 	 <tr>
    	<td class="cart-body">1</td>
    	<td class="cart-body">2</td>
    	<td class="cart-body">3</td>
    	<td class="cart-body">4</td>
    	<td class="cart-body">5</td>
    	<td class="cart-body"><input type="checkbox" name="checkP" class="check" ></td>
    	<td class="cart-body">3,000,000</td>
  	</tr>
	</tbody>
	
</table>

<div class="info">
	<ul class="info-txt">
		<li>취소 일자에 따라 아래와 같이 취소수수료가 부과됩니다. 예매일보다 관람일 기준이 우선 적용되오니 유의해주시기 바랍니다.</li>
		<li>단, 예매 후 7일 이내라도 취소시점이 공연일로부터 10일 이내라면 그에 해당하는 취소수수료가 부과됩니다.</li>
		<li>예매수수료는 예매 당일 밤 12시 이전 취소 시에만 환불되며, 그 이후 기간에는 환불되지 않습니다.</li>
		<li>각 상품별로 취소 정책이 다르게 적용될 수 있으니, 각 상품 안내 사항을 확인해주시기 바랍니다.</li>
	</ul>
</div>

<div class="pay-sec">
	<p class="pay-tit">최종 결제 금액 = </p>
	<p class="final-price"><span id=""></span></p>
</div>

<div class="submit-btn-group">
<button onclick="" class="submit-btn">예매하기</button>
</div>


</section>

<%@ include file = "./layout/footer.jsp" %>



