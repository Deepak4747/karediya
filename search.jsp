<%@page import="java.sql.*"%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       <html>
<head>
<link rel='stylesheet' type='text/css'  href='xyz2.css' /> 
</head>
<body>
 <%@include file="mymenu1.jsp"%>

<div id='data'>
<center>
<form action="search.jsp">
<table cellpadding='10px' >
<tr>
<td >Roll No:</td>
<td><input type="text" name="Roll"  id='t1'></td>
</tr>
<tr >
<th colspan="2"><input type="submit" class="B" value="search" name="b"></th></tr>
</table>
</form>
</center>
<%
String b1=request.getParameter("b");
if(b1!=null)
{
String s1=request.getParameter("Roll");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepak?useSSL=false","root","root");
Statement st=con.createStatement();
String q="select * from insert1 where rollno=' "+s1+" ' ";
ResultSet rs=st.executeQuery(q);   
%>
<div id="data">
<center>
<%
if(rs.next())
{%>
<form action="update.jsp">
<table cellpading="10px">
<tr>
<td>Roll no</td>    
<td><input type="taxt" value="<%=rs.getString(1)%>" name="u1"</td>
</tr>
<tr>
<td>name</td>    
<td><input type="taxt" value="<%=rs.getString(2)%>" name="u2"</td>
</tr>   
<tr>
<td>phy</td>    
<td><input type="taxt" value="<%=rs.getString(3)%>" name="u3"</td>
</tr>   
<tr>
<td>Che</td>    
<td><input type="taxt" value="<%=rs.getString(4)%>" name="u4"</td>
</tr>   
         
<tr>
 <td>maths</td>    
<td><input type="taxt" value="<%=rs.getString(5)%>" name="u5"</td>
 </tr>
 <tr>
 <th colspan="2"><input type="submit" value="Update" class="B" </th>
 </tr>   
</table>
</form>
 </center>    
</div>
<%
 } 
con.close();
}

 catch(Exception e)
{
out.println(e);
}
}
%>

</body>
</html>