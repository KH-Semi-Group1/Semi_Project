<%@page import="web.dto.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	Notice viewNotice = (Notice) request.getAttribute("viewNotice"); %>

<%@ include file = "../layout/header.jsp" %>

<script type="text/javascript">
$(document).ready(function() {
	$("#btnList").click(function() {
		$(location).attr('href', './list')
	})
})
</script>

<h1 class="text-center">공지사항</h1>

<div class="container">

<table class="table">
	<thead>
		<th><span class="label label-info"><%=viewNotice.getNotitype() %></span></th>
		<th colspan="3"><%=viewNotice.getNotititle() %></th>
	</thead>
	
	<tbody>
		<tr>
			<td>등록일</td><td><%=viewNotice.getNotidate() %></td>
			<td>조회수</td><td><%=viewNotice.getNotihit() %></td>
		</tr>
		
		<tr>
			<td colspan="4"><%=viewNotice.getNoticontent() %></td>
		</tr>
		
	</tbody>
</table>

<div class="text-center">
	<button id="btnList" class="btn btn-info">목록</button>
</div>

</div>

<%@ include file = "../layout/footer.jsp" %>