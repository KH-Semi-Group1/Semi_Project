<%@page import="web.dto.Review"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	List<Review> reviewList = (List) request.getAttribute("reviewList"); %>

<%@ include file="../layout/header.jsp" %>

<style type="text/css">

th, td {
	text-align: center;
}

td:nth-child(2) {
	text-align: justify;
}

img {
	transform: scale(0.95);
	-webkit-transform: scale(0.95);
	-moz-transform: scale(0.95);
	-ms-transform: scale(0.95);
	-o-transform: scale(0.95);
	transition: all 0.2s ease-in-out;
}

img:hover {
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
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

<div class="row">
<%	for( int i=0; i<reviewList.size(); i++ ) { %>
	<div class="col-sm-6 col-md-4">
	<a href="./view?reviewno=<%=reviewList.get(i).getReviewno() %>">
		<div class="thumbnail">
			<img src="../resources/img/jes.jpg" alt="...">
			<div class="caption">
				<h3><%=reviewList.get(i).getReviewtitle() %></h3>
				
				<p><%	for( int j=0; j < reviewList.get(i).getReviewscope(); j++ ) { %>
					<%	 %>
					<%	} %>
					<%=reviewList.get(i).getReviewscope() %>점
				</p>
				<p><%=reviewList.get(i).getReviewcontent() %></p>
			</div>
		</div>
	</a>
	</div>
<%	} %>
</div>

<div class="clearfix"></div>

<%@	include file="../layout/paging.jsp" %>

<%@	include file="../layout/footer.jsp" %>