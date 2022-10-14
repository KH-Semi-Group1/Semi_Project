<%@page import="java.util.List"%>
<%@page import="web.dto.Comment"%>
<%@page import="web.dto.Review"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	Review viewReview = (Review) request.getAttribute("viewReview");
	List<Comment> commentList = (List) request.getAttribute("commentList");
	request.setCharacterEncoding("UTF-8");
	%>

<%@ include file = "../layout/header.jsp" %>

<script type="text/javascript">
$(document).ready(function() {
	
	//후기게시판 목록으로 이동
	$("#btnList").click(function() {
		$(location).attr('href', './list')
	})
	
	//댓글작성버튼
	$("#btnCommentWrite").click(function() {
		
		if( $("#content").val != null ) {
			
			//#content의 값이 널값이 아닐때 댓글작성
			$("form").submit();
			
		} else {
			alert('댓글 입력을 안했습니다.')
		}
		
	})
})
</script>

<div class="page-header">
<h1 class="text-center"><strong>관람후기</strong></h1>
</div>

<!-- 후기게시글 -->
<div class="container">

	<div class="row row-cols-auto">
		<div class="col page-header">
			<h3 class="text-left"><strong><%=viewReview.getReviewtitle() %></strong></h3> <!-- 후기제목 -->
		</div>
	
		<div class="row">
			<span class="col col-md-auto col-md-offset-9">작성자 : <%=viewReview.getUserid() %></span>
			<span class="col col-md-auto col-md-offset-9">등록일 : <%=viewReview.getWritedate() %></span>
		</div>
		
		<!-- 후기게시글내용 -->
		<div class="row">
			<div class="col"><%=viewReview.getReviewcontent() %></div>
		</div>
	</div>

</div>

<!-- 목록버튼 -->
<div class="text-center">
	<button id="btnList" class="btn btn-outline-secondary">목록으로</button>
</div>


<!-- 후기게시글 댓글 -->
<div class="container">

<div class="page-header">
	<h3 class="text-left"><strong>댓글</strong></h3>
</div>

<!-- 댓글 입력하는 폼 -->
<form action="./view" method="post">

	<table class="table table-striped">
		<tr>
			<td style="border-bottom:none;" valign="middle"><br><br><%=session.getAttribute("userid") %></td>
			<td><input type="text" style="height:100px; width:100%;" placeholder="상대방을 존중하는 댓글을 남깁시다." name = "content" id="content"></td>
			<td><br><br><button type="button" id="btnCommentWrite" class="btn btn-outline-secondary">댓글작성</button></td>
		</tr>
	</table>
<input type="text" name="reviewno" value="<%=viewReview.getReviewno() %>">
<input type="text" name="login" value="<%=session.getAttribute("login") %>" >
</form>


<%	for( int i=0; i<commentList.size(); i++) { %>

<div class="media">
	<div class="media-left media-middle">
		<div class="media-object" style="padding: 5px;">
			<span class="glyphicon glyphicon-user" style="font-size: 40px;"></span>
		</div>
	</div>

	<div class="media-body text-left">
	
		<h4 class="media-heading"><%=commentList.get(i).getUserid() %></h4>
		<%=commentList.get(i).getContent() %>
	
		<div class="text-right">
			<span>작성일:<%=commentList.get(i).getWritedate() %></span>
		</div>
	</div>
	
</div>
<%	} %>

<%@	include file="../layout/commentPaging.jsp" %>

</div><!-- 댓글창 끝 -->
<%@ include file = "../layout/footer.jsp" %>