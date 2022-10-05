<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

<style type="text/css">

th, td {
	text-align: center;
}

td:nth-child(2) {
	text-align: justify;
}

</style>

<script type="text/javascript">
$(document).ready(function() {
	$("#btnWrite").click(function() {
		location.href = "./write"
	})
})
</script>

<h1 class="text-center">관람후기</h1>
<hr>

<table class="table table-hover table-striped table-condensed">
	<thead>
		<tr>
			<th style="width: 15%;">글번호</th>
			<th style="width: 30%;">제목</th>
			<th style="width: 20%;">작성자 아이디</th>
			<th style="width: 15%;">조회수</th>
			<th style="width: 20%;">최초작성일</th>
		</tr>
	</thead>
	
	<tbody>
	</tbody>
	
</table>

<div id="btnBox" class="pull-right">
	<button id="btnWrite" class="btn btn-primary">글쓰기</button>
</div>

<div class="clearfix"></div>

<%-- <%@	include file="../layout/paging.jsp" %> --%>

<%@	include file="../layout/footer.jsp" %>