<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>

<title>ItemList画面</title>

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

<!-- =========== header =========== -->
<div id="header">
<div id="pr">
</div></div>
<!-- =========== header =========== -->


<div id="main">

<!-- =========== label =========== -->
<div id="top">
<p>ItemList</p>
</div>
<!-- =========== label =========== -->

<!-- ================== main contents ================== -->

<div>

   <table border="1" cellspacing="1" cellpadding="5">

   <tbody>
<tr bgcolor="#dcdcdc">

<th>itemNAME</th>
<th>itemPRICE</th>
<th>itemSTOCK</th>
<th>DELETE</th>
<!-- <th>RESULT</th> -->

</tr>

<s:iterator value="#session.itemList">

<tr>
<!-- value の値はLoginDTO クラスで定義した変数名にする -->
<td><s:property value="ItemName"/></td>
<td><s:property value="ItemPrice"/></td>
<td><s:property value="ItemStock"/></td>
<!-- <td> -->
<%--    <s:form action="ItemListDeleteConfirmAction"> --%>
<%--       <s:submit value="削除"/> --%>
<%--    </s:form> --%>
<!-- </td> -->
<%-- <td><s:property value="result"/></td> --%>
</tr>


</s:iterator>
</tbody>


   </table>

</div>


<!-- test 6 -->
<p>test 6</p>
<div>
<table>
<tbody>

<tr>
<td><s:property value="#session.ItemName"/></td>
<td><s:property value="#session.ItemPrice"/></td>
<td><s:property value="#session.ItemStock"/></td>
</tr>


</tbody>
</table>
</div>
<!-- test 6 -->



<div>
   <s:form action="ItemListDeleteConfirmAction">
      <s:submit value="全件削除"/>
   </s:form>
</div>


<p>
<a href='<s:url action="AdminAction" />'>管理者画面へ</a></p>








<!-- ================== main contents ================== -->

</div>

<!-- =========== footer =========== -->
<div id="footer">
<div id="pr">
</div>
</div>
<!-- =========== footer =========== -->

</body>
</html>