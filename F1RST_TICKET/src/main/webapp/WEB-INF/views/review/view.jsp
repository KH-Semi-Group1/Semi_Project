<%@page import="web.dto.Review"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	Review viewReview = (Review) request.getAttribute("viewReview");
	request.setCharacterEncoding("UTF-8");
	%>

<%@ include file = "../layout/header.jsp" %>

<script type="text/javascript">
$(document).ready(function() {
	$("#btnList").click(function() {
		$(location).attr('href', './list')
	})
})
</script>

<h1 class="text-center">관람후기</h1>

<!-- 후기게시글 -->
<div class="row row-cols-auto">
	<div class="col"><h3><%=viewReview.getReviewtitle() %></h3></div> <!-- 후기제목 -->
	<div class="col">
		<span>등록일 : <%=viewReview.getWritedate() %></span>
	</div>
	
	<!-- 후기게시글내용 -->
	<div class="col"><%=viewReview.getReviewcontent() %></div>

	<!-- 목록버튼 -->
	<div class="text-center">
		<button id="btnList" class="btn btn-outline-secondary">목록으로</button>
	</div>
</div>

<!-- 후기게시글 댓글 -->
<div>
	<h3>댓글</h3>
	
	<div>
		
	</div>
</div>

<%@ include file = "../layout/footer.jsp" %>