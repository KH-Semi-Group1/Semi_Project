<%@page import="web.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% User user = (User) request.getAttribute("user");%>

<%@ include file = "../layout/header_login.jsp" %>

<!-- 카카오 로그인 -->

<!-- 네이버 로그인 -->

<script type="text/javascript">
$(document).ready(function(){
	// 아이디 포커스
	$("input").eq(0).focus()
	
	// 비밀번호 입력창에 엔터키 입력시 submit
	$("input").eq(1).keydown(function(e) {
		if( e.keyCode == 13 ) { //엔터키
			$("#btnLogin").click();
		}
	}) 
	
	// 로그인버튼
 	$("#btnLogin").click(function() {
		$("form").submit();
		document.getElementById("userid").value ='';
	})  

})

</script>

<hr>

<form action="/user/login" method="post" name="login" class="form-horizontal">

<div class="form-group">
	<label for="userid" class="col-sm-4 control-label"></label>
	<div class="col-sm-4">
		<input type="text" name="userid" id="userid" class="form-control" placeholder="아이디"> <br>
	</div>
</div>


<div class="form-group">
	<label for="userpw" class="col-sm-4 control-label"></label>
	<div class="col-sm-4">
		<input type="password" name="userpw" id="userpw" class="form-control" placeholder="비밀번호">
	</div>
</div>

<div class="form-group" id="loginJoin">
	<div class="text-center">
		<ul style="list-style-type: none; padding:0px;">
			<li style="display:inline;"><a href="/user/findid">아이디 찾기</a></li>
			<li style="display:inline;">&nbsp;|&nbsp;</li>
			<li style="display:inline;"><a href="/user/findpw">비밀번호 찾기</a></li>
			<li style="display:inline">&nbsp;|&nbsp;</li>
			<li style="display:inline;"><a href="/join">회원가입</a></li>
		</ul>  
	</div> 
</div>


<div class="clearfix"></div>

<!-- --------------------------------------- -->


<div class="form-group">
	<div class="col-sm-4 col-sm-offset-4">
		<button type="button" class="btn btn-block" style="background-color: #6AAFE6; color:#fff;" id="btnLogin">로그인</button><br>
</div>
	

<div class="col-sm-4 col-sm-offset-4">
	<button type="button" class="form-control btn btn-block" style="background-color: #D4DFE6;" id="btnKakaoLogin" onclick="btnKakaoLogin">카카오 로그인 자리</button><br>
</div>

<div class="col-sm-4 col-sm-offset-4">
	<button type="button" class="form-control btn btn-block" style="border:1px solid black;" id="btnNaverTicket">네이버 로그인 자리</button>
</div>

</div>

</form>






<!-- 해결될때까지 잠시 주석처리 -->
<%-- <%@ include file = "../layout/footer.jsp" %> --%>