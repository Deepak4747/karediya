<html>
<head>
<link rel="stylesheet" type="text/css" href="xyz2.css">
</head>
<body>
 <%@include file="mymenu1.jsp"%>
<div id="data">
<center>
<form action="insert1.jsp">
<table cellpadding="15" > 
<tr>
<td>Enter Roll number</td>
<td ><input type="text"  id="t1" placeholder="Enter Roll Number" name="r1"> </td>
</tr>
<tr>
<td>Enter name</td>
<td><input type="text" id="t1"  placeholder="Enter name" name="r2" ></td>
</tr>
<tr>
<td>Physics</td>
<td><input type="text" id="t1"  placeholder="Enter physics marks" name="r3" ></td>
</tr>
<tr>
<td>Chemistry</td>
<td><input type="text" id="t1"  placeholder="Enter chemestry marks" name="r4"></td>
</tr>
<tr>
<td>Maths</td>
<td><input type="text" id="t1"  placeholder="Enter maths marks" name="r5"></td>
</tr>
<tr>
<th colspan="2"><input type="submit"  value="Insert" class="B"  ></th>
</tr>
</table >
</form>
</center>
</div>
</body>
</html>