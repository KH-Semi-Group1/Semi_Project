<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../layout/header.jsp" %>

<link rel="stylesheet" href="/resources/css/reviewWrite.css">

<!-- 스마트 에디터2 설치 -->
<script type="text/javascript" src="/resources/se2/js/service/HuskyEZCreator.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	
	//작성버튼
	$("#btnWrite").click(function() {
		
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
	oEditors.getById["reviewcontent"].exec("UPDATE_CONTENTS_FIELD", [])
}

</script>

<div class="page-header">
	<h1>공연 후기</h1>
	<small>관람하신 공연에 대해서 얼마나 만족하시나요?</small>
</div>

<div class="container-fluid row">
	<div class="col-xs-12">
		<div class="thumbnail row">
			<img class="col-xs-2" alt="..." src="../resources/img/jes.jpg">
			<div class="caption col-md-10">
				<h3>뮤지컬 이름</h3>
				<p>별점</p>
			</div>
		</div>
	</div>
</div>

<form action="./write" method="post" enctype="multipart/form-data">

	<table class="table table-bordered">

		<tr><td>제목</td><td><input type="text" name="reviewtitle" style="width: 100%;"></td></tr>
		<tr><td>상세리뷰</td><td><textarea id="reviewcontent" name="reviewcontent" style="width: 100%;"></textarea></td></tr>
		<tr><td>사진 첨부</td><td><input type="file" name="file"></td></tr>

	</table>

</form>

<div class="text-center">
	<button id="btnWrite" class="btn btn-md">작성하기</button>
	<button id="btnCancel" class="btn btn-md">취소하기</button>
</div>

<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "reviewcontent",	//에디터가 적용될 <textarea>의 id 적기
	sSkinURI: "/resources/se2/SmartEditor2Skin.html",
	fCreator: "createSEditor2"
})
</script>

<%@ include file = "../layout/footer.jsp" %>