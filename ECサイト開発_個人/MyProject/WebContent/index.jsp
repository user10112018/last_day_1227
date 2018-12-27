<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="./css/style01.css">

<!--   上へ戻るボタン -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<!--   これがないとscriptファイルを外部に置いても作動しない -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<title>Index</title>

<style>

hr.hor1 {
color: maroon;
}
hr.hor2 {
color: indigo;
}
hr.hor3 {
font-size: 3px;
}


</style>


</head>


<body>
<!-- ============== ココカラ =============== -->

<!-- スクリプトファイル指定 -->
<script type="text/javascript" src="./javascript/script.js"></script>

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

<p class="name">■ テーブル</p>
<table border="1">
     <tr><th colspan="2">項目と内容</th></tr>
     <tr><td>項目①</td><td>中身①</td></tr>
     <tr><td rowspan="2">行の結合</td><td>中身② 文字数多目にする。</td></tr>
     <tr><td>中身②－2</td></tr>
     <tr><td>項目①</td><td>中身③</td></tr>
</table>
<br>
<p class="ref">参考</p>
<a href="https://techacademy.jp/magazine/9428">https://techacademy.jp/magazine/9428</a>
<br>
<br>

<p class="name">■ 修飾</p>
<br>
<p>この文章の下に<span style="background:#008080;color:aqua;">水平線</span>が入ります</p>
<!-- 水平線を入れたいときには<hr>タグ -->
<hr>
<p>この文章の上に<span style="background:#008080;color:aqua;">水平線</span>が入ります</p>

<br>
<p>水平線に装飾を試みる</p>

<hr class="hor1">
<hr class="hor2">
<hr class="hor3">


<br>
<p class="ref">参考</p>
<a href="https://coliss.com/articles/build-websites/operation/css/css-snippets-for-horizontal-rules.html">ここのはスゴイ</a>
<br>
<br>


<p class="name">■ jQuery</p>

<a href="jquery.jsp">sample</a>

<br>
<br>

<p class="name">■ レイアウトサンプル</p>

<a href="2columns.jsp">２カラムレイアウト</a>
<br>
<a href="3columns.jsp">３カラムレイアウト</a>

<br><br>
★ 中央寄せと検索すると高確率でHITするflexboxを使用したversion<br>
<a href="2columns_flexbox.jsp">２カラムレイアウト(flexbox)</a>
<br>
<a href="3columns_flexbox.jsp">３カラムレイアウト(flexbox)</a>


<br>
<br>
<p class="name">■ 参考文献</p>

<a href="links.jsp">links</a>
<br>
<br>

https://peacepopo.net/ec-netshop-jquery-demo
<br>
https://peacepopo.net/ec-netshop-css-javascript-demo
<br>
https://www.nxworld.net/tips/ec-convenient-iquery-snippets-plugins.html
<br>
https://techracho.bpsinc.jp/hachi8833/2016_10_04/26662
<br>
http://placehold.jp
<br>
https://app.codegrid.net/entry/2017-flexbox-tips-1
<br>
https://webdesignday.jp/inspiration/technique/css/4175/
<br>
http://taneppa.net/box-sizing/
<br>
http://webst8.com/blog/html-major-basic-tag/
<br>
http://webst8.com/blog/css-selector-priority/
<br>
http://webst8.com/blog/css-major-basic-property/
<br>
https://creive.me/archives/5668/
<br>
http://www.webcreatorbox.com/tech/ecsite-design-tips
<br>
http://www.sejuku.net/blog/16055
<br>
http://serinaishii.hatenablog.com/entry/2015/11/06/%E8%B6%85%E7%B0%A1%E5%8D%98%26%E3%82%B3%E3%83%94%E3%83%9A%E3%81%A7OK%EF%BC%81%E3%83%9A%E3%83%BC%E3%82%B8%E3%83%88%E3%83%83%E3%83%97%E3%81%B8%E6%88%BB%E3%82%8B%E3%83%9C%E3%82%BF%E3%83%B3%E3%81%AE
<br>


<br>

<p class="name">■ Tips</p>
ブラウザのアドレスバーに<br>
<input type="text" name="XXX" size="50" value="data:text/html, <html contenteditable>"><br>
と打ち込むと、ブラウザがメモ帳のようになり、画面にテキストを入力できる

<br>
</div>


<!-- 上へ戻るボタン -->
    <p id="pageTop"><a href="#"><i class="fa fa-chevron-up "></i></a></p>


<p>ここは #main-container の外 *** </p>

</div>

<!-- ==== footer ===== -->
<footer>
<p>This page is written by MoeSuzuki   @ Nov. 2018 .</p>
</footer>

</body>

</html>