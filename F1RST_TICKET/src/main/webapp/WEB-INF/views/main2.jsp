<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file = "./layout/header.jsp" %>

<style type="text/css">
   .slide{
      padding-right: 50px;
   }
    .sec1 {
       border: 1px; background: yellow;
       height:1000px;
       width: 350px;
    }
  </style>
     <script type="text/javascript" src = "https://code.jquery.com/jquery-2.2.4.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="slick/slick.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
 
<!-- Slick 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
<script>
   $(function(){
        $('.center').slick({
          centerMode: true,
          centerPadding: '60px',
          slidesToShow: 3,
          responsive: [
            {
              breakpoint: 768,
              settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 3
              }
            },
            {
              breakpoint: 480,
              settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 1
              }
            }
          ]
        });

    })
  
  </script>
<!-- <div class="slide"> -->
  <div class="center slick_slider">
    <div class="slide"><a href=""><img src="" class="sec1"></a></div>
    <div class="slide"><a href=""><img src="" class="sec1"></a></div>
    <div class="slide"><a href=""><img src="" class="sec1"></a></div>
    <div class="slide"><a href=""><img src="" class="sec1"></a></div>
    <div class="slide"><a href=""><img src="" class="sec1"></a></div>
  </div>

<%@ include file = "./layout/footer.jsp" %>