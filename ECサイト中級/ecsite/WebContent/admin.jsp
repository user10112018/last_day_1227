<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="imagetoolbar" content="no	">
<meta name="Content-Type" content="">
<meta name="Content-Type" content="">
<title>Admin画面</title>

<style type="text/css">

/* ============= TAG LAYOUT ============= */
body {
margin: 0;
padding: 0;
line-height: 1.6;
letter-spacing: 1px;
font-family: Verdana, Helvetica, sans-serif;
font-size: 12px;
color: #333;
background: #fff;
}

table {
text-align: center;
margin: 0 auto;
}

/* ======== ecsite LAYOUT ==================== */
#top {
width: 780px;
margin: 30px auto;
border: 1px solid #333;
}

#header {
width: 100%;
height: 80px;
background-color: black;
}

#main {
clear: both;
width: 100%;
height: 500px;
text-align: center;
margin: 0 auto;
}

/* #text-center { */
/* display: inline-block; */
/* margin: 0 auto; */
/* text-align: center; */
/* } */

#main-container {
text-align: center;
/* width: 90%; */
/* margin: 0 auto; */
margin-top: 70px;

}

#left {
display: inline-block;
border: 1px solid #333;
width: 40%;
height: 300px;
margin-bottom: 40px;
}

#right {
display: inline-block;
border: 1px solid #333;
width: 40%;
height: 300px;
margin-bottom: 40px;
}


#footer {
clear: both;
width: 100%;
height: 80px;
background-color: black;
}





</style>


</head>
<body>

<!-- ========= header ========= -->
<div id="header">
<div id="pr"></div>
</div>

<div id="main">
    <div id="top">
    <p>Admin</p>
    </div>

<!-- </div> -->
<!-- ================== ココカラ ================= -->

<!-- <div id="text-center"> -->

<div id="main-container">

<!-- === 商品 === -->
<div id="left">
   <p>商品</p>
   <s:form action="ItemCreateAction">
      <s:submit value="新規登録"/>
   </s:form>

<!-- <br> -->
<!-- <br> -->
<!-- <br> -->
<!--    <table></table> -->

<div>
   <s:form action="ItemListAction">
      <s:submit value="一覧表示"/>
   </s:form>
</div>

</div>


<!-- === ユーザー === -->
<div id="right">
   <p>ユーザー</p>
   <s:form action="UserCreateAction">
      <s:submit value="新規登録"/>
   </s:form>


   <table>

   <tbody>
<tr>

<th>USERID</th>
<th>USERNAME</th>
<th>PASSWORD</th>
<!-- <th>RESULT</th> -->

</tr>

<s:iterator value="#session.loginDTOList">

<tr>
<!-- value の値はLoginDTO クラスで定義した変数名にする -->
<td><s:property value="loginId"/></td>
<td><s:property value="userName"/></td>
<td><s:property value="loginPassword"/></td>
<%-- <td><s:property value="result"/></td> --%>
</tr>


</s:iterator>
</tbody>


   </table>

<div>
   <s:form action="UserListAction">
      <s:submit value="一覧表示"/>
   </s:form>
</div>

</div>


</div>

<p><a href='<s:url action="GoHomeAction" />'>
Home 画面へ</a></p>

<!-- </div> -->

<!-- ================== ココマデ ================= -->

</div>

<!-- ========= footer ========= -->
<div id="footer">
<div id="pr"></div>
</div>


</body>
</html>