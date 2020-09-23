<html>
<head>
    <script type="text/javascript" src="ABC.js"></script>
<link rel="stylesheet" type="text/css" href="xyz1.css">
</head>
<body>
 <%@include file="mymenu.jsp"%>
<div id="data">
<center>
<form action="regis1.jsp" name="form1">
<table cellpadding="15" > 
<caption>REGISTRATION FORM</caption>
<tr>
<td>First Name</td>
<td ><input type="text"  id="t1" placeholder="First Name" name="p1">
<br>
<font id="s1" ></font>
</td>
</tr>
<tr>
<td>last Name</td>
<td><input type="text" id="t2"  placeholder="Last Name" name="p2">
<br>
<font id="s2"></font>
</td>
</tr>
<tr>
<td>Father Name</td>
<td><input type="text" id="t3"  placeholder="Father Name" name="p3">
<br>
<font id="s3" ></font>
</td>
</tr>
<tr>
<td>Conatact No</td>
<td><input type="text" id="t4"  placeholder="123456" name="p4">
<br>
<font id="s4" ></font>
</td>
</tr>
<tr>
<th colspan="2"><input type="button" onclick="demo()" class="B" value="registered" ></th>

</tr>
</table >
</form>
</center>
</div>
</body>
</html>