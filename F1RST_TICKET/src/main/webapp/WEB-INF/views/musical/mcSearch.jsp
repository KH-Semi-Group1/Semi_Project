<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.dto.Musical"%>
<%@ page import="java.util.List"%>
<!-- c:forEach 사용을 위한 jstl 선언 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 조회결과 반환 -->
<% List<Musical> mcSearchList = (List) request.getAttribute("mcSearchList"); %>

<%@ include file="../layout/header_musearch.jsp" %>


<hr>
<div class="text-center">
	<sqan id="key">'${param.keyword}'</sqan>
	<span id="text">에 대한 검색 결과 입니다.</span>
</div>
<hr>

<!-- 뮤지컬 검색 목록 -->
<div class="container">
<table class="table table-striped table-hover table-condensed">


<%	for(int i=0; i<mcSearchList.size(); i++) { %>
<tr>
	<td style="width: 130px;">
	<a href="./mcView?mcno=<%=mcSearchList.get(i).getMcno() %>">
		<img alt="포스터" src="${pageContext.request.contextPath}/resources/img/mc/<%=mcSearchList.get(i).getMcimg() %>"
						onerror="this.src='${pageContext.request.contextPath}/resources/img/mc/noImg.jpg'">
	</a>
	</td>
	<td class="contents" style="width: 45%">
		<a style="text-decoration: none;" href="./mcView?mcno=<%=mcSearchList.get(i).getMcno() %>">
			<p>뮤지컬[<%=mcSearchList.get(i).getMcname() %>]</p>
		</a>
	</td>
	<td class="contents" style="width: 20%">
		<p><%=mcSearchList.get(i).getMcstart() %> 
		~ <%=mcSearchList.get(i).getMcend() %></p>
	</td>
	<td class="contents" style="width: 20%">
		<p><%=mcSearchList.get(i).getMcloc() %></p>
	</td>
</tr>
<%	} %>
</table>



	


</div>

<%@ include file = "../layout/footer.jsp" %>