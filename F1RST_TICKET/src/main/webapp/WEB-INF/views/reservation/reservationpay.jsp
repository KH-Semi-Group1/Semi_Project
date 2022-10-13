<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file = "../layout/header.jsp" %>

    <script type="text/javascript" src = "https://code.jquery.com/jquery-2.2.4.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
var today = new Date();
function buildCalendar(){
  var row = null
  var cnt = 0;
  var calendarTable = document.getElementById("calendar");
  var calendarTableTitle = document.getElementById("calendarTitle");
  calendarTableTitle.innerHTML = today.getFullYear()+"년"+(today.getMonth()+1)+"월";
  
  var firstDate = new Date(today.getFullYear(), today.getMonth(), 1);
  var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
  while(calendarTable.rows.length > 2){
  	calendarTable.deleteRow(calendarTable.rows.length -1);
  }

  row = calendarTable.insertRow();
  for(i = 0; i < firstDate.getDay(); i++){
  	cell = row.insertCell();
  	cnt += 1;
  }

  for(i = 1; i <= lastDate.getDate(); i++){
  	cell = row.insertCell();
  	cnt += 1;

    cell.setAttribute('id', i);
  	cell.innerHTML = i;
  	cell.align = "center";

    cell.onclick = function(){
    	clickedYear = today.getFullYear();
    	clickedMonth = ( 1 + today.getMonth() );
    	clickedDate = this.getAttribute('id');

    	clickedDate = clickedDate >= 10 ? clickedDate : '0' + clickedDate;
    	clickedMonth = clickedMonth >= 10 ? clickedMonth : '0' + clickedMonth;
    	clickedYMD = clickedYear + "-" + clickedMonth + "-" + clickedDate;
		
    	console.log(clickedYMD);
    	document.getElementById("scheduleDate").value=clickedYMD;
    	
    	if(opener!=null){
    		const date = opener.document.getElementById("date");
    		if(date!=null){
    			date.value = clickedYMD;
    		}
    	}
    
    	self.close();
    }
    if (cnt % 7 == 1) {
    	cell.innerHTML = "<font color=#F79DC2>" + i + "</font>";
    }

    if (cnt % 7 == 0){
    	cell.innerHTML = "<font color=skyblue>" + i + "</font>";
    	row = calendar.insertRow();
    }
  }

  if(cnt % 7 != 0){
  	for(i = 0; i < 7 - (cnt % 7); i++){
  		cell = row.insertCell();
  	}
  }
}

function prevCalendar(){
	today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
	buildCalendar();
}

function nextCalendar(){
	today = new Date(today.getFullYear(), today.getMonth()+1, today.getDate());
	buildCalendar();
}

function onChangeListener(selectedItem){
	console.log(selectedItem.value);

	document.getElementById("mcname").value=selectedItem.value;
}

function onChangeScheduleTime(selectedItem){
	console.log(selectedItem.value);
	
	document.getElementById("scheduleTime").value = selectedItem.value;
}

function onChangeTicketcount(selectedItem){
	console.log(selectedItem.value);
	document.getElementById("ticketcount").value = selectedItem.value;
	
}

</script>

<style>
.sec1img {
	top: 30px;
	height: 270px;
	width:220px;
	position: absolute;
	left: 80px;
}

#calendar{
	height: 300px;
	width: 350px;
}

.sec5{
	height: 600px;
}

select{
	height: 40px;
	width: 350px;
	text-align:center;
	font-size: 14pt;
}

.selectform p {
	font-size: 19px;
	font-weight: bold;
}

input{
	text-align:center;
	font-size: 20px;
}

td:hover{
	background: pink;
}

.buttonform{
	height: 450px;
}

.pay{
	display:flex;
	padding: 20px 0 20px 0;
	font-size: 20px;
	margin: 0;
}

label{
	padding-right: 10px;
}

.formitem{
	font-size: 19px;
	font-weight: bold;
}

.formitem>input{
	font-size: 20px;
}

</style>
<h1>예매/결제</h1>
<hr>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
			<img class="sec1img i1" alt="Bootstrap Image Preview" src="/resources/img/poster/ale.jpg" />
 			<img class="sec1img i2" alt="Bootstrap Image Preview" src="/resources/img/poster/bru.jsp" />
			<img class="sec1img i3" alt="Bootstrap Image Preview" src="/resources/img/poster/dre.jpg" />
			<img class="sec1img i4" alt="Bootstrap Image Preview" src="/resources/img/poster/hook.jpg" />
			<img class="sec1img i5" alt="Bootstrap Image Preview" src="/resources/img/poster/jes.jpg" />
			<img class="sec1img i6" alt="Bootstrap Image Preview" src="/resources/img/poster/pri.jpg" />
			<img class="sec1img i7" alt="Bootstrap Image Preview" src="/resources/img/poster/sam.jpg" />
			<img class="sec1img i7" alt="Bootstrap Image Preview" src="/resources/img/poster/seo.jpg" />
 			
		</div>
		<div class="col-md-4 selectform">
			<div><p>뮤 지 컬 제 목</p></div>
			<select onchange="onChangeListener(this)" id="sel1" required>
				<option value="none">(예매하실 뮤지컬 선택)</option>
				<option>태양의서커스〈뉴 알레그리아> </option>
				<option>2022푸에르자부르타 웨이라</option>
				<option>창작뮤지컬 드리머스 Dreamers</option>
				<option>[The Hook]</option>
				<option>지저스 크라이스트 수퍼스타</option>
				<option>삼총사</option>
				<option>서편제</option>
			</select>
			<hr>
			<div><p>공연 시작시간</p></div>
			<select onchange="onChangeScheduleTime(this)" id="sel2" required>
				<option value="none">(공연시간 선택)</option>
				<option value="10:00">10:00</option>
				<option value="12:00">12:00</option>
				<option value="14:00">14:00</option>
				<option value="16:00">16:00</option>
				<option value="18:00">18:00</option>
			</select>
			<hr>
				
			<div><p>예  매  수  량</p></div>
			<select onchange="onChangeTicketcount(this)" id="sel3">
				<option value="none">(예매 수량 선택 /1인 최대 5매)</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select>
		</div>

		<div class="col-md-4">
		<table id="calendar" align="center">
	         <tr>
	            <td align="center"><label onclick="prevCalendar()"> ◀ </label></td>
	            <td colspan="5" align="center" id="calendarTitle">yyyy년 m월</td>
	            <td align="center"><label onclick="nextCalendar()"> ▶ </label></td>
	         </tr>
	         <tr>
	            <td align="center" style="font color ="#F79DC2">일</td>
	            <td align="center">월</td>
	            <td align="center">화</td>
	            <td align="center">수</td>
	            <td align="center">목</td>
	            <td align="center">금</td>
	            <td align="center"><font color ="skyblue">토</td>
	         </tr>
         <script type="text/javascript">buildCalendar();</script>
         </table>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-7">
			<img alt="Bootstrap Image Preview" src="/resources/img/poster/jes.jpg" />
		</div>
		
		<div class="sec5">
			<form class="col-md-5 form-group buttonform" action="/reservationpay" method="POST">
				<label for="mcname" class="control-label"></label>
				<div class="col-md-12 formitem">
					뮤지컬제목<input type="text" id="mcname" name="mcname" class="form-control" required>
				</div>
				<div class="col-md-12 formitem">
					공연날짜<input type="text" id="scheduleDate" name="scheduleDate" class="form-control" required>
				</div>
				<div class="col-md-12 formitem">
					공연시작시간<input type="text" id="scheduleTime" name="scheduleTime" class="form-control" required>
				</div>
				<div class="col-md-12 formitem">
					예매수량<input type="text" id="ticketcount" name="ticketcount" class="form-control" required>
				</div>
				<div class="col-md-12 formitem">
					결제금액<input type="text" id="paymoney" name="paymoney" class="form-control" required>
				</div>
				
<!-- 				-------- -->
				<div class="btn-group btn-group-sm col-md-12 pay" role="group" id="payment" name="payment" required>
					<div>
				    	<input type="radio" id="card" name="payment" value="카드" checked>
				     	<label for="card">카드</label>
				    </div>
					<div>
				    	<input type="radio" id="atm" name="payment" value="자동이체">
				      	<label for="atm">자동이체</label>
				    </div>
					<div>
				     	 <input type="radio" id="virtualAccount" name="payment" value="무통장">
				      	<label for="virtualAccount">무통장</label>
				    </div>
					<div>
				      	<input type="radio" id="Pay" name="payment" value="Pay">
				     	 <label for="Pay">Pay</label>
				    </div>
				</div> 
			
				<button type="submit" class="btn btn-primary btn-md btn-block">
					예매하기
				</button><a href="#" class="btn btn-secondary btn-block active" type="button">Button</a>
			</form>
		</div>
	</div>
</div>
<hr>























<%@ include file = "../layout/footer.jsp" %>