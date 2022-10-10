<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../layout/header.jsp" %>
<script type="text/javascript">
$(document).ready(function(){
	// 아이디 포커스
	$("input").eq(0).focus()
	
	// 비밀번호 입력창에 엔터키 입력시 submit
	$("input").eq(1).keydown(function(e){
		if(e.keycode == 13) {
			$("#btnLogin").click();
		}
	})
	
	// 로그인버튼
	$("#btnLogin").click(function(){
		$(this).parents("form").submit();
	})
	
	// 비회원 로그인 버튼
	$("#btnNoLogin").click(function(){
		$(location).attr('href','/nouser/login')
	})
	
	// 비회원 티켓 조회 버튼
	$("#btnNoTicket").click(function(){
		$(location).attr('href', '/nouser/ticket')
	})
	
})

</script>

<hr>

<form action="/user/login" method="post" class="form-horizontal">

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

<!-- css 부분 다시 생각해보기 -->
<div class="form-group" id="loginJoin">
	<div class="text-center">
		<ul style="list-style-type: none; padding:0px;">
			<li style="display:inline;"><a href="/lost/id">아이디 찾기</a></li>
			<li style="display:inline;">&nbsp;|&nbsp;</li>
			<li style="display:inline;"><a href="/lost/pw">비밀번호 찾기</a></li>
			<li style="display:inline">&nbsp;|&nbsp;</li>
			<li style="display:inline;"><a href="/">회원가입</a></li>
		</ul>  
	</div> 
</div>


<div class="clearfix"></div>

<!-- --------------------------------------- -->


<div class="form-group">
	<div class="col-sm-4 col-sm-offset-4">
		<button type="button" class="form-control btn btn-block" style="background-color: #6AAFE6; color:#fff;" id="btnLogin">로그인</button><br>
</div>
	

<div class="col-sm-4 col-sm-offset-4">
	<button type="button" class="form-control btn btn-block" style="background-color: #D4DFE6;" id="btnNoLogin">카카오 로그인 자리</button><br>
</div>

<div class="col-sm-4 col-sm-offset-4">
	<button type="button" class="form-control btn btn-block" style="border:1px solid black;" id="btnNoTicket">네이버 로그인 자리</button>
</div>

</div>

</form>

<%@ include file = "../layout/footer.jsp" %>