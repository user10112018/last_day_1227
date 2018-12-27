<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style01.css">
<!-- bxslider -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<!--   上へ戻るボタン -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> --%>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!-- elevateZoom -->
  <script type="text/javascript" src="./javascript/jquery.elevatezoom.js"></script>

<title>jQuery</title>

<style>
/* #main { */
/* 	text-align:center; */
/* 	} */

/* ---------------- アコーディオン内 ----------------- */
.accordion dt {
color: teal;
text-align: left;
cursor: pointer;
/* これが有効だとクリック範囲が横幅いっぱいになる */
}
.accordion dd {
display: none;
}

.accordion_2 dt {
text-align: center;
color: white;
border-bottom: 1px white solid;
cursor: pointer;
background-color: lightseagreen;
width: 500px;
height: 50px;
line-height: 50px;
}
.accordion_2 dd {
display: none;
/* これが最初にないとページリロードで開きっぱなし */
text-align: center;
color: lightseagreen;
border-bottom: 1px lightseagreen solid;
cursor: pointer;
background-color: paleturquoise;
width: 100%;
height: 50px;
line-height: 50px;
}
/* dt { */
/* cursor: pointer; */
/* } */
/* dd { */
/* display: none */
/* } */

/* ======== CSS によるアコーディオン =============== */
/* reset */
.accordion_css > button {
backgraund: transparent;
border: none;
cursor: pointer;
outline: none;
padding: 0;
appearance: none;
}
.accordion_css > ul {
list-style-type: none;
margin: 0;
padding: 0;
color: black;
}
.accordion_css > li.p {
margin: 0;
}
/* reset */

.accordion_css > button {
display: block;
cursor: pointer;
background-color: darkturquoise;
text-align: center;
width: 300px;
height: 50px;
line-height: 50px;
}
.accordion_css > ul > li {
background-color:paleturquoise;
text-align: center;
width: 300px;
/* 閉じた状態 */
border-top: 1px white solid;
padding-top: 13px;
padding-bottom: 13px;
}
/* .accordion_css > ul.is-open > li { */
/* /* 開いた状態 */ */
/* border-top: 1px white solid; */
/* padding-top: 13px; */
/* padding-bottom: 13px; */
/* } */
.accordion_css > ul > li > p {
/* 閉じた状態 */
line-height: 1.5;
/* opacity: 0; */
/* visibility: hidden; */
}
/* .accordion_css > ul.is-open > li > p { */
/* /* 開いた状態 */ */
/* line-height: 1.5; */
/* opacity: 1; */
/* visibility: visible; */
/* } */

/* ======== CSS によるアコーディオン =============== */



</style>

<!-- ======= javascript(jQuery) =================================== -->
  <script>
    $(document).ready(function(){


      $('.bxslider').bxSlider({
    	  auto: true,
    	  mode: 'fade',
    	  speed: 1000,
    	  slideWidth: 400
      });


      $('.accordion dt').click(function(){
    	  $(this).toggleClass('open');
    	  $(this).next().slideToggle();
      });

      $('.accordion_2 dt').click(function(){
    	  $(this).next('dd').slideToggle();
    	  $(this).next('dd').siblings('dd').slideUp();
    	  $(this).togglClass('open');
    	  $(this).siblings('dt').removeClass('open');
          });


      $('#zoom').elevateZoom({
//     	  option
      });

      $('#zoom2').elevateZoom({
//     	  option
      });





    });
  </script>
  <!-- ======= jQuery =================================== -->
<!-- bxslider -->


</head>


<body>

<!-- スクリプトファイル指定 -->
<script type="text/javascript" src="./javascript/script.js"></script>

<!-- ============== ココカラ =============== -->

<!-- ==== header ===== -->
<header>

<div id="logo">ＭｙＰｒｏｊｅｃｔ</div>



<div id="menu">

<ul>
   <li>ＴＯＰ</li>
   <li>menuＡ</li>
   <li>menuＢ</li>
   <li>menuＣ</li>
</ul>

</div>

</header>

<!-- ==== main ===== -->

<div id="main">
<div id="main-container">

<p class="name">■ 文字に対するイベント</p>

<h1>
Click Here !
<br>
</h1>

<div class="samp1">
sample   #samp1
<br>

<div class="samp2">
sample   #samp1 #samp2
<br>
</div>
</div>

sample
<br>


<div class="samp2">
sample  #samp2
</div>
<br>

sample
<br>

<br>
<p class="name">■ 画像に対するイベント</p>

<div class="img">

<div class="click_img">
<img src="./img/bookstore.jpg" width="400px">
<!-- width=400px で下4枚と同じサイズ -->
</div>
<br>

<div class="4imgs">
<img src="./img/pic1.jpg">
<img src="./img/pic4.jpg">
<img src="./img/pic6.jpg">
<img src="./img/pic8.jpg">
</div>

<br>
<br>
<p class="name">■ スライドショー</p>
   bxslider を使用<br>

  <div class="bxslider">
    <img src="./img/jQuery_image1.jpg">
    <img src="./img/jQuery_image2.jpg">
    <img src="./img/jQuery_image3.jpg">
    <img src="./img/jQuery_image4.jpg">
    <img src="./img/jQuery_image5.jpg">
  </div>

  <p class="name">■ アコーディオン</p>
  jQuery を使用<br>
  ① 開きっぱなし
  <br>
  <dl class="accordion">
    <dt>click here!</dt>
      <dd>Menu 01 contents...</dd>
    <dt>click here!!</dt>
      <dd>Menu 02 contents...</dd>
    <dt>click here!!!</dt>
      <dd>Menu 03 contents...</dd>
  </dl>

<br>
  ② ひとつしか開かない
<br>
<dl class="accordion_2">
    <dt>Menu 01</dt>
      <dd>Menu 01 contents...</dd>
    <dt>Menu 02</dt>
      <dd>Menu 02 contents...</dd>
    <dt>Menu 03</dt>
      <dd>Menu 03 contents...</dd>
  </dl>
<br>

<p>jQuery を使わないでCSS のみでアコーディオン</p>
<p> js が動かないのでこの先に進めない<br>
<a href="https://liginc.co.jp/356926">https://liginc.co.jp/356926</a></p>

<div class="accordion_css">
<button>CLICK</button>
<ul>
    <li>
    <p>1つめの項目</p>
    </li>
    <li>
    <p>2つめの項目</p>
    <p>他の項目より高さがある</p>
    </li>
    <li>
    <p>3つめの項目</p>
    </li>
</ul>
</div>


<br>
<p class="name">■ 画像ズーム</p>
<p>elevateZoom を使用</p>

<img id="zoom" src="./img/pic5.jpg" data-zoom-img="./img/pic5.jpg" width="150"/>
<br>
<br>

<img id="zoom2" src="./img/bookstore.jpg" data-zoom-img="./img/bookstore.jpg" width="250"/>
<br>

<br>
<br>


</div>

<br>
<a href='jquery.jsp'>pageRenew</a><br>
<br>
<a href='index.jsp'>goToHome</a>


<!-- 上へ戻るボタン -->
    <p id="pageTop"><a href="#"><i class="fa fa-chevron-up "></i></a></p>

</div>

<br>



<!-- ======================= ココマデ ===================================== -->
</div>



<!-- ==== footer ===== -->
<footer>
<p>This page is written by MoeSuzuki   @ Nov. 2018 .</p>
</footer>






</body>
</html>