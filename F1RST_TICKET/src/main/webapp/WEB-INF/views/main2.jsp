<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file = "./layout/header.jsp" %>

    <script type="text/javascript" src = "https://code.jquery.com/jquery-2.2.4.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
 
<style>
.s1{
	board: 1px solid black;
	width: auto;
	height: 100px;
}

#s1_img{
	width: 100px;
	height: 180px;
}

textarea{
    height: 100px;
    width: 700px;
    resize: none;
    border: 1px solid #ddd;
    outline: none;
    padding: 10px 0px;
}


</style>
 
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center text-primary">
				공연리뷰
			</h3>
			<p>관람하신 공연에 대해서 얼마나 만족하시나요?</p>
		</div>
	</div>
	
	<hr>
	
	<!-- 사진+별표 -->
	<div class="row">
		<div class="s1">
			<div class="col-md-10 col-md-offset-1 media">
				<a class="pull-left" href="#">
	    			<img class="media-object" id="s1_img" src="/resources/img/logo.jpg" style="height:65px;"">
	  			</a>
	  			<div class="col-md-9">
	    			<h4 class="media-heading text-left col-md-3">뮤지컬 이름 </h4>
	 
	    <!-- 안에 있는 미디어 객체 -->
				    <div class="media text-left">
				      ...
				    </div>
				    <div>
				      ...
				    </div>
				</div>
			</div>
		</div>
	</div>
	
	<hr>
	
	<!-- 상세리뷰 textarea -->
	<div class="row">
		<div class="col-md-12">
			<div>
				<h3 class="text-center text-primary">
				상세리뷰
				</h3>
			</div>
			<div>
				<textarea rows="" cols="" placeholder="공연에 대한 고객님의 솔직한 리뷰 작성을 부탁드립니다."></textarea>
			</div>
			<hr>
			<!-- 사진첨부 -->
			
			<label for ><div style="position:absolute;">
				<h3 class="text-center text-primary">
				상세리뷰
				</h3>
			</div></label>	
			<div>
				<input type="file" name="upfile">
			</div>	
			
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
	<div class="row">
		<div class="col-xs-1">
			 
			<button type="button" class="btn btn-info btn-sm btn-block">
				Button
			</button> 
			<button type="button" class="btn btn-success btn-sm active btn-block">
				Button
			</button>
		</div>
	</div>
</div>

<%@ include file = "./layout/footer.jsp" %>