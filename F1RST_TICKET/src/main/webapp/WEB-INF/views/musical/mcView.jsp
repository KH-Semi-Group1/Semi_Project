<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.dto.Musical"%>
<%	Musical viewMc = (Musical) request.getAttribute("viewMc"); %>
<%@ include file="../layout/header_muview.jsp" %>

<script>	
$(document).ready(function(){		
// 뮤지컬 위치 클릭 시 map으로 스크롤 이동          
	$('#moveLoc').click(function(){			
		var offset = $('#map').offset(); //offset : 선택한 태그의 위치를 반환                
		$('html').animate({scrollTop : offset.top}, 600);	//0.6초 동안 부드럽게 해당 위치로 이동	
	});	
	
// 아이콘 클릭 시 맨 위로 스크롤 이동          
	$('#moveTop').click(function(){			
		var offset = $('#top').offset(); //offset : 선택한 태그의 위치를 반환                
		$('html').animate({scrollTop : offset.top}, 600);	//0.6초 동안 부드럽게 해당 위치로 이동	
	});	
});
</script>


<!-- 맨 위로 스크롤 이동 버튼(고정) -->
<button id="moveTop"><span class="glyphicon glyphicon-arrow-up" aria-hidden="true"></span></button>

<hr id="top" >
<h6 style="text-align:left;">뮤지컬 > 상세보기</h6>
<h2 style="text-align:left;">뮤지컬 [<%= viewMc.getMcname() %>]</h2>
<h5 style="text-align:left;"><%= viewMc.getMcstart() %> ~ <%= viewMc.getMcend() %> | 
	<!-- map으로 스크롤 이동 버튼 -->
	<button id="moveLoc" onclick="locMove()">
	<%= viewMc.getMcloc() %>
	<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
	</button>
</h5>
<hr style="border:solid 1px;">

<div class = "row">
	<div class="col-md-5">
		<img alt="포스터" src="${pageContext.request.contextPath}/resources/img/mc/<%= viewMc.getMcimg() %>"
						onerror="this.src='${pageContext.request.contextPath}/resources/img/mc/noImg.jpg'">
		<div class="row">
		<div class="col-sm-5"><%= viewMc.getMclike() %>  Likes</div>
		<div class="col-sm-5">Reviews</div>
		</div>
	</div>
	<div class="col-md-7">
		<div class="row">
			<label class="col-sm-3">등급</label>
			<div class="col-sm-9"><%= viewMc.getMcage() %></div>
		</div>
		<div class="row">
			<label class="col-sm-3">관람시간</label>
			<div class="col-sm-9">--</div>
		</div>
		<div class="row">
			<label class="col-sm-3">출연</label>
			<div class="col-sm-9"><%= viewMc.getMcact() %></div>
		</div>
		<div class="row">
			<label class="col-sm-3">가격</label>
			<div class="col-sm-9" id="sale">
			<p class="seat">VIP석 <span>150,000</span>원</p>
			<p class="seat">R석 <span>120,000</span>원</p>
			<p class="seat">S석 <span>90,000</span>원</p>
			<p class="seat">A석 <span>70,000</span>원</p>
			<hr style="margin: 25px;">
			<p class="seat" style="font-size:11px;">현장 구매 시 최대 <span>3000</span>원 할인 진행 중</p>
			</div>
		</div>
		<hr style="border:solid 1px;">
		<div class="row">
			<label class="col-sm-3">공연시간 안내</label>
			<div class="col-sm-9"><%= viewMc.getMctime() %></div>
		</div>
		<div class="row">
			<label class="col-sm-3">배송정보</label>
			<div class="col-sm-9">현장 수령만 가능</div>
		</div>
		<hr style="border:solid 1px;">
	</div>

</div>

<!-- 달력 -->
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

       opener.document.getElementById("date").value = clickedYMD;
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

</script>
<!-- 달력 표시 테이블 -->
<!-- <div id="cal" style="margin:20px;"> -->
<!-- 	<table id="calendar" align="center"> -->
<!--       <tr> -->
<!--          <td align="center"><label onclick="prevCalendar()"> ◀ </label></td> -->
<!--          <td colspan="5" align="center" id="calendarTitle">yyyy년 m월</td> -->
<!--          <td align="center"><label onclick="nextCalendar()"> ▶ </label></td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--          <td align="center" style="font color ="#F79DC2">일</td> -->
<!--          <td align="center">월</td> -->
<!--          <td align="center">화</td> -->
<!--          <td align="center">수</td> -->
<!--          <td align="center">목</td> -->
<!--          <td align="center">금</td> -->
<!--          <td align="center"><font color ="skyblue">토</td> -->
<!--       </tr> -->
<!--       <script type="text/javascript">buildCalendar();</script> -->
<!--    </table> -->
<!-- </div> -->

<div id="btns">
<button id="tick"><a href="/">예매하기</a></button>
<button id="bag"><a href="/musical/bag">장바구니</a></button>
</div>


<p class="contents">유의사항</p>
<img alt="포스터" src="${pageContext.request.contextPath}/resources/img/mc/<%= viewMc.getMcimgchk() %>"
						onerror="this.src='${pageContext.request.contextPath}/resources/img/mc/noImg.jpg'">
						
<p class="contents">할인정보</p>
<img alt="포스터" src="${pageContext.request.contextPath}/resources/img/mc/<%= viewMc.getMcimgsale() %>"
						onerror="this.src='${pageContext.request.contextPath}/resources/img/mc/noImg.jpg'">
						
<p class="contents">공연정보</p>
<img alt="포스터" src="${pageContext.request.contextPath}/resources/img/mc/<%= viewMc.getMcimginfo() %>"
						onerror="this.src='${pageContext.request.contextPath}/resources/img/mc/noImg.jpg'">
						
<p class="contents">캐스팅 일정</p>
<img alt="포스터" src="${pageContext.request.contextPath}/resources/img/mc/<%= viewMc.getMcimgcas() %>"
						onerror="this.src='${pageContext.request.contextPath}/resources/img/mc/noImg.jpg'">
						
<hr style="border:solid 1px;">

<!-- 카카오맵 -->
<div id="loc">
	<%= viewMc.getMcloc() %>
	<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
</div>
<div id="map" style="width:880px;height:430px;margin-left:135px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fe1f196c3457ab9e5845ff66728babb2&libraries=services"></script>
<script>
// 마커를 클릭하면 장소명을 표출할 인포윈도우
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도 생성  
var map = new kakao.maps.Map(mapContainer, mapOption); 

//줌 컨트롤
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT)

// 장소 검색 객체
var ps = new kakao.maps.services.Places(); 

// 키워드 검색
ps.keywordSearch('<%= viewMc.getMcloc() %>', placesSearchCB); 

// 키워드 검색 완료 시 호출되는 콜백함수
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new kakao.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정
        map.setBounds(bounds);
    } 
}

// 지도에 마커를 표시하는 함수
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}
</script>

<%@ include file = "../layout/footer.jsp" %>