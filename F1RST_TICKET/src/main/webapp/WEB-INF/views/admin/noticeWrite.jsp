<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 스마트 에디터2 설치 -->
<script type="text/javascript" src="/resources/se2/js/service/HuskyEZCreator.js"></script>

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
	font-size: 18px;
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

tr th{
	font-size: 14px;
}

</style>


<script type="text/javascript">
$(document).ready(function() {
	
	//작성버튼
	$("#btnUpdate").click(function() {
		
		//작성된 내용을 <textarea>에 적용하기
		updateContents()
		
		$("form").submit();
	})
	
	//취소버튼
	$("#btnCancel").click(function() {
		history.go(-1)
	})
	
})

function updateContents() {
	//스마트 에디터에 작성된 내용을 #content에 반영한다
	oEditors.getById["noticontent"].exec("UPDATE_CONTENTS_FIELD", [])
}

</script>

<div class="container">

<div class="page-header">
	<h1>공지사항 작성</h1>
</div>

<form action="./noticewrite" method="post">

	<table class="table table-bordered">

		<tr><td>제목</td><td colspan="3"><input type="text" name="notititle" style="width: 100%;"></td></tr>
		<tr><td>아이디</td><td><%=session.getAttribute("adminid") %></td>
			<td>공지타입</td>
			<td>
				<div class="btn-group">
					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
						Action <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
					</ul>
				</div>
			</td>
		</tr>
		<tr><td colspan="4">본문</td></tr>
		<tr><td colspan="4"><textarea id="noticontent" name="noticontent" style="width: 100%;"></textarea></td></tr>

	</table>
	
</form>

</div>


<% 	if( session.getAttribute("adminlogin") == null ) { %>		
<div class="text-center">
	<p class="text-danger">관리자로그인 후 작성하실 수 있습니다.</p>
	<a href="/admin/login" type="button" id="newLogin"
		class="btn btn-outline-success">관리자로그인</a>
</div>
<%	}  else { %>
	<button id="btnUpdate" class="btn btn-md">작성하기</button>
<%	} %>

<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "noticontent",	//에디터가 적용될 <textarea>의 id 적기
	sSkinURI: "/resources/se2/SmartEditor2Skin.html",
	fCreator: "createSEditor2"
})
</script>
