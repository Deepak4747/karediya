<%@page import="java.sql.*"%>
<html>
<head>
<link rel='stylesheet' type='text/css'  href='xyz2.css' /> 
</head>
<body>
<%@include file="mymenu1.jsp"%>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepak?useSSL=false","root","root");
Statement st=con.createStatement();

String q =" select * from insert1 ";
ResultSet rs=st.executeQuery(q);
%>
<center>
<table cellpadding='12' border='5'>
<tr>
<td>Roll no</td>
<td>Name</td>
<td>Physics</td>
<td>Chemistry</td>
<td>Maths</td>
</tr>
<%while(rs.next())
{
%>	
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
</tr>
<%}
}
catch(Exception e)
{
out.println(e);
}%>


</table>
</center>
</body>
</html>