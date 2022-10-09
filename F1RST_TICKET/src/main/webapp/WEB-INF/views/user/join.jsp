<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../layout/header_login.jsp" %>
<title>F1RST TICKET</title>

<script type="text/javascript">
function joinCheck() {
	if (document.joinform.userid.value.length < 4) {
		alert("아이디는 4글자 이상이어야 합니다.");
		document.joinform.name.focus();
		return false;
	}
	if (document.joinform.reid.value == "") {
		alert("아이디 중복체크를 하지 않았습니다.");
		return false;
	}

	if (document.joinform.userpw.value != document.joinform.userpw2.value) {
		alert("패스워드가 일치하지 않습니다.");
		document.joinform.userpw2.focus();
		return false;
	}

	return true;
}

function idCheck() {
	if (document.joinform.userid.value == "") {
		alert("사용자 아이디를 입력해주세요.");
		document.joinform.userid.focus();
		return false;
	
	}
}
</script>

<hr>
<div class = "container">

<form action="/join" method="post" class="form-horizontal" name="joinform" onSubmit="return check()">

	<div class="form-group">
		<label for="username" class="col-xs-2 control-label">이름</label>
		<div class="col-xs-7">
			<input type="text" id="username" name="username" class="form-control" placeholder="이름을 입력하세요" required>
		</div>
	</div>

	<div class="form-group">
		<label for="userid" class="col-xs-2 control-label" required>아이디</label>
		<div class="col-xs-7">
			<input type="text" id="userid" name="userid" class="form-control" placeholder="아이디를 입력하세요" required>
		</div>
		
		<input type="hidden" name="reid" value="0">
		
		<div>
			<button type="button" class="btn btn-sm" style="background-color: #6AAFE6; color:#fff;" onclick="return idCheck()">중복확인</button>
		</div>
	</div>

	<div class="form-group">
		<label for="userpw" class="col-xs-2 control-label">패스워드</label>
		<div class="col-xs-7">
			<input type="password" id="userpw" name="userpw" class="form-control" placeholder="패스워드를 입력하세요" required>
		</div>
	</div>
	
	<div class="form-group">
		<label for="userpw2" class="col-xs-2 control-label">패스워드확인</label>
		<div class="col-xs-7">
			<input type="password" id="userpw2" name="userpw2" class="form-control" placeholder="패스워드 재확인" required>
		</div>
	</div>
	
<!-- 	<div class="form-group">
		<label for="yy" class="col-xs-2 control-label">생년월일</label>
	 	<div class="bir_yy">
			<span class="col-xs-2">
				<input type="text" class="form-control" id="yy" name="yy" placeholder="년(4자)" maxlength="4">
			</span>
		</div>
		<div class="bir_mm">
			<div class="col-xs-2">
				<select class="form-control" id="mm" name="mm">
		    	<option value="">월</option>
		   	 	<option value="01">1</option>
		   	 	<option value="02">2</option>
		   	 	<option value="03">3</option>
		   	 	<option value="04">4</option>
		   	 	<option value="05">5</option>
		   	 	<option value="06">6</option>
		   	 	<option value="07">7</option>
		   	 	<option value="08">8</option>
		   	 	<option value="09">9</option>
		   	 	<option value="10">10</option>
		   	 	<option value="11">11</option>
		   	 	<option value="12">12</option>
            </select>
			</div>
		</div>
		<div class="bir_dd">
			<span class="col-xs-3">
				<input type="text" class="form-control" id="dd" name="dd" placeholder="일" maxlength="2">
			</span>
		</div>
	</div> -->
	
	<div class="form-group">
		<label for="userbirth" class="col-xs-2 control-label">생년월일</label>
		<div class="col-xs-7">
			<input type="text" id="userbirth" class="form-control" name="userbirth" placeholder="@1995-12-25" required>
		</div>
	</div>
	
	<div class="form-group">
    	<label for="uphone" class="col-xs-2 control-label">휴대 전화</label>
    	<div class="col-xs-7">
    		<input type="tel" class="form-control" id="uphone" name="uphone" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
    	</div>
    </div>
	
	<div class="form-group">
	<label for="gender" class="col-xs-2 control-label">성별</label>
		<div class="col-xs-7">
         	<select class="form-control" id="gender" name="gender">
		    	<option value="M">남자</option>
		   	 	<option value="F">여자</option>
            </select>
         </div>
	</div>

	<div class="form-group">
		<label for="address" class="col-xs-2 control-label">주소</label>
		<div class="col-xs-7">
			<input type="text" id="address" name="address" class="form-control" placeholder="주소">
		</div>
	</div>
	
	<div class="form-group">
		<label for="email" class="col-xs-2 control-label">이메일</label>
		<div class="col-xs-7">
			<input type="email" id="email" name="email" class="form-control" placeholder="이메일을 입력하세요">
		</div>
	</div>

	<div class="text-center">
		<input type="submit" value="회원가입" class="btn" style="background-color: #6AAFE6; color:#fff;" id="btnJoin" onclick="return joinCheck()"></button>
		<button type="reset" class="btn" style="background-color: #D4DFE6;" id="btnCancel">취소</button>
	</div>
</form>

