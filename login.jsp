<html>
<head>
<link rel="stylesheet" type="text/css" href="xyz1.css">
<style> 
    #message
    {
       color: red;

    }
    
</style>
</head>
<body>
<%@include file="mymenu.jsp"%>
<div id="data">
<center>
<form action="login1.jsp">
<table cellpadding="15px">
<tr>
<td>User name</td>
<td><input type="text" id="t1" placeholder="Enter name" name="q1"></td>
</tr>
<tr>
<td>User pass</td>
<td><input type="password" id="t1" placeholder="Enter password" name="q2"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" class="B" value="Login"></th>
</tr>
<tr>
    <th colspan="2" style="color:red ">
    <%
    String s1=request.getParameter("s");
    if(s1!=null)
    {
    %>
     <%=s1%>
     <%}%>
    </th>   
</tr>
<tr>



</tr>
</table>
</form>
</center>
</div>


</body>
</html>