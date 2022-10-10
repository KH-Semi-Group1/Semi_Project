<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- adminpage.css -->
<style type="text/css">
#adminpageDiv ul li a{
	
	text-decoration: none !important;
	
}

#adminpageDiv ul li a:visited{
	color:black;
}

</style>

	
<form action="/adminpage" method="post" name="adminpage" id="adminpage" class="form-horizontal">

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<a href='/admin/main'><img alt="LOGO" src="/resources/img/logo.jpg"></a>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3" id="adminpageDiv">
		<ul style="list-style-type: none;">
				<li><a href="/admin/main">회원 관리</a></li><br>
				<li><a href="/admin/main">게시글 관리</a></li><br>
				<li><a href="/admin/main">예매 관리</a></li><br>
				<li><a href="/admin/main">티켓 관리</a></li><br>
			</ul>
		</div>
		<div class="col-md-9">
		</div>
	</div>
</div>

</form>