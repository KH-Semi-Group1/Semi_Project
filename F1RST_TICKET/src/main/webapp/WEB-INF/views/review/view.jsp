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

<div class="page-header">
<h1 class="text-center"><strong>관람후기</strong></h1>
</div>

<!-- 후기게시글 -->
<div class="container">

	<div class="row row-cols-auto">
		<div class="col page-header"><h3 class="text-left"><strong><%=viewReview.getReviewtitle() %></strong></h3></div> <!-- 후기제목 -->
	
		<div class="row">
			<span class="col col-md-auto col-md-offset-9">등록일 : <%=viewReview.getWritedate() %></span>
		</div>
		
		<!-- 후기게시글내용 -->
		<div class="col"><%=viewReview.getReviewcontent() %></div>
	</div>

</div>

<!-- 목록버튼 -->
<div class="text-center">
	<button id="btnList" class="btn btn-outline-secondary">목록으로</button>
</div>


<!-- 후기게시글 댓글 -->

<div class="page-header">
	<h3 class="text-left"><strong>댓글</strong></h3>
</div>

<div class="media">
<div class="media-left media-middle">
<div>
	<span class="glyphicon glyphicon-user"></span>
</div>
</div>
<div class="media-body">
<h4 class="media-heading">유저아이디</h4>
댓글내용
</div>
</div>

<%@ include file = "../layout/footer.jsp" %>