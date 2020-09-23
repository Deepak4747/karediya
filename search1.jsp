<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("Roll");

out.println("<html>");
out.println("<head>");
out.println("<link rel='stylesheet' type='text/css'  href='xyz2.css' /> ");
out.println("</head>");
out.println("<body>");

out.println("<div id='mymenu'>");
out.println("<ul>");
		
out.println("<li ><a href='afterlogin.jsp'>Home</a></li>");
out.println("<li ><a href='insert.jsp'>Insert</a></li>");
out.println("<li><a href='search.jsp'>Search</a></li>");
out.println("<li>Update</li>");
out.println("<li><a href='delete.jsp'>Delete</li>");
out.println("<li>ShowAll</li>");
out.println("<li>Logout</li>");
out.println("</ul>");
out.println("</div>");
	
	
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepak?useSSL=false","root","root");
Statement st=con.createStatement();

String q="select * from insert1 where rollno=' "+s1+" ' ";
ResultSet rs=st.executeQuery(q);
if(rs.next())
{
out.println("<form action='update.jsp'>");
out.println("<center>");
out.println("<table cellpadding='12'>");
out.println("<tr>");
out.println("<td>Rollno:</td>");
out.println("<td><input type='text'  name='n1' value='"+rs.getString(1)+"'></td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>Name:</td>");
out.println("<td><input type='text'  name='n2' value='"+rs.getString(2)+"'></td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>physics:</td>");
out.println("<td><input type='text'  name='n3' value='"+rs.getString(3)+"'></td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>chemistry:</td>");
out.println("<td><input type='text' name='n4' value='"+rs.getString(4)+"'></td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>maths:</td>");
out.println("<td><input type='text'  name='n5' value='"+rs.getString(5)+"'></td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th colspan='3'><input type='submit' value='update' class='B'></th>");
out.println("</tr>");


out.println("</table>");
out.println("</center>");
out.println("</form>");
}
else
{
 out.println("data not found");   
 
}
con.close();
}
catch(Exception e)
{
out.println(e);
}

out.println("</body>");
out.println("</html>");

%>