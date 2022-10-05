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

<h1 class="text-center">공지사항</h1>
<hr>

<table class="table table-hover table-striped table-condensed">
	<thead>
		<tr>
			<th style="width: 10%;">구분</th>
			<th style="width: 50%;">제목</th>
			<th style="width: 20%;">티켓 오픈 일시</th>
			<th style="width: 10%;">조회수</th>
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