<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F1RST TICKET</title>

<script type="text/javascript" src = "https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- layout.css -->
<link rel="stylesheet" href="/resources/css/layout.css">

</head>
<body>

<header id="header2">

<div class="text-center" style="padding-top:20px;">
	<a href="/">
	<img src="/resources/img/logo.jpg" alt="logo">
	</a>
</div>

</header>
<hr>
<div class = "container">

<form action="/join" method="post" class="form-horizontal">
	<div class="form-group">
		<label for="userid" class="col-xs-2 control-label">이름</label>
		<div class="col-xs-7">
			<input type="text" id="userid" name="userid" class="form-control" placeholder="이름을 입력하세요">
		</div>
	</div>

	<div class="form-group">
		<label for="userid" class="col-xs-2 control-label">아이디</label>
		<div class="col-xs-7">
			<input type="text" id="userid" name="userid" class="form-control" placeholder="아이디를 입력하세요">
		</div>
		<div>
			<button type="button" class="btn btn-info">중복확인</button>
		</div>
	</div>

	<div class="form-group">
		<label for="userpw" class="col-xs-2 control-label">패스워드</label>
		<div class="col-xs-7">
			<input type="text" id="userpw" name="userpw" class="form-control" placeholder="패스워드를 입력하세요">
		</div>
	</div>
	
	<div class="form-group">
		<label for="userpw" class="col-xs-2 control-label">패스워드확인</label>
		<div class="col-xs-7">
			<input type="text" id="userpw" name="userpw" class="form-control" placeholder="패스워드를 재확인">
		</div>
	</div>
	
	<div class="form-group">
		<label for="bir_yy" class="col-xs-2 control-label">생년월일</label>
	 	<div class="bir_yy">
			<span class="col-xs-2">
				<input type="text" class="form-control" id="yy" placeholder="년(4자)" maxlength="4">
			</span>
		</div>
		<div class="bir_mm">
			<div class="col-xs-2">
				<select class="form-control" id="mm">
		    	<option value="월">월</option>
		   	 	<option value="1">1</option>
		   	 	<option value="2">2</option>
		   	 	<option value="3">3</option>
		   	 	<option value="4">4</option>
		   	 	<option value="5">5</option>
		   	 	<option value="6">6</option>
		   	 	<option value="7">7</option>
		   	 	<option value="8">8</option>
		   	 	<option value="9">9</option>
		   	 	<option value="10">10</option>
		   	 	<option value="11">11</option>
		   	 	<option value="12">12</option>
            </select>
			</div>
		</div>
		<div class="bir_dd">
			<span class="col-xs-3">
				<input type="text" class="form-control" id="yy" placeholder="일" maxlength="2">
			</span>
		</div>
	</div>
	
	<div class="form-group">
    	<label for="gender" class="col-xs-2 control-label">휴대 전화</label>
    	<div class="col-xs-7">
    		<input type="tel" class="form-control onlyNumber" id="phone" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
    	</div>
    </div>
	
	
	<div class="form-group">
	<label for="gender" class="col-xs-2 control-label">성별</label>
		<div class="col-xs-7">
         	<select class="form-control" id="gender">
		    	<option value="M">남자</option>
		   	 	<option value="F">여자</option>
            </select>
         </div>
	</div>


	<div class="form-group">
		<label for="userpw" class="col-xs-2 control-label">주소</label>
		<div class="col-xs-7">
			<input id="userpw" name="userpw" class="form-control" placeholder="주소">
		</div>
	</div>
	
	<div class="form-group">
		<label for="email" class="col-xs-2 control-label">이메일</label>
		<div class="col-xs-7">
			<input type="email" id="email" name="email" class="form-control" placeholder="이메일을 입력하세요">
		</div>
	</div>

	<div class="text-center">
		<button type="button" class="btn btn-info" id="btnJoin">회원가입</button>
		<button type="button" class="btn btn-warning" id="btnCancel">취소</button>
	</div>
</form>

