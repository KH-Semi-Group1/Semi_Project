<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../layout/header_login.jsp" %>

<!-- 찾는 아이디/ 비번은 팝업창(또는 알림창)으로 나타나게 하기 -->

<script type="text/javascript">
$(document).ready(function(){
	// 휴대전화 포커스
	$("input").eq(0).focus()
	
	// 이메일 입력창에 엔터키 입력시 submit
	$("input").eq(1).keydown(function(e){
		if(e.keycode == 13) {
			$("#btnSearch").click();
		}
	})
	
	// 조회하기 버튼
	$("#btnSearch").click(function(){
		$(this).parents("form").submit();
	})
	
})

</script>

<hr>

<form action="/lost/id" method="post" class="form-horizontal">

<h1>아이디 찾기</h1>
<p style="font-size:20px; padding-bottom: 50px;">등록된 회원정보로 아이디를 찾을 수 있습니다.</p>

<div class="form-group">
	<label for="searchIdPhone" class="col-sm-4 control-label">휴대 전화</label>
	<div class="col-sm-4">
		<input type="text" name="searchIdPhone" id="searchIdPhone" class="form-control" placeholder='"-"를 제외하고 숫자만 입력하세요.'> <br>
	</div>
</div>

<div class="form-group">
	<label for="searchIdEmail" class="col-sm-4 control-label">이메일</label>
	<div class="col-sm-4">
		<input type="email" name="searchIdEmail" id="searchIdEmail" class="form-control" placeholder="abc@ticket.com">
	</div>
</div>

<div class="form-group">
	<div class="col-sm-4 col-sm-offset-4">
		<button type="button" class="form-control btn btn-block" style="background-color: #6AAFE6; color:#fff;" id="btnSearch">조회하기</button><br>
	</div>
</div>

<div class="form-group" id="loginJoin">
	<div class="text-center">
		<ul style="list-style-type: none; padding:0px;">
			<li style="display:inline;"><a href="/lost/pw">비밀번호 찾기</a></li>
			<li style="display:inline">&nbsp;|&nbsp;</li>
			<li style="display:inline;"><a href="/user/login">로그인</a></li>
			<li style="display:inline">&nbsp;|&nbsp;</li>
			<li style="display:inline;"><a href="/">회원가입</a></li>
		</ul>  
	</div> 
</div>

</form>