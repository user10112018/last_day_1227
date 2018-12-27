<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>

<link rel="stylesheet" href="./css/style01.css">

<title>3columns</title>

<!-- ============= box style =============== -->
<style>

#main {
text-align:center;
}

#box-container{
margin-top: 120px;
text-align: center;
}

#left-box{
display: inline-block;
background-color: #48d1cc;
width: 20%;
height: 600px;
margin-bottom: 40px;
}

#center-box{
display: inline-block;
background-color: #008080;
width: 40%;
height: 600px;
margin-bottom: 40px;
}

#right-box{
display: inline-block;
background-color: #afeeee;
width: 30%;
height: 600px;
margin-bottom: 40px;
}


</style>

</head>

<body>
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


<div id="main">
<!-- ============== main =============== -->


<div id="box-container">


<!-- ====== left side ======== -->
<div id="left-box">




</div>

<!-- ====== center ======== -->
<div id="center-box">




</div>

<!-- ====== right side ======== -->
<div id="right-box">




</div>

</div>

<a href='index.jsp'>goToHome</a>

<!-- ============== main =============== -->
</div>
<!-- ==== footer ===== -->
<footer>
<p>This page is written by MoeSuzuki   @ Nov. 2018 .</p>
</footer>


</body>
</html>