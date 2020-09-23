<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("q1");
String s2=request.getParameter("q2");

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String Dburl="jdbc:mysql://localhost:3306/deepak?useSSL=false";
String dbuname="root";
String dbpass="root";
	
Connection con=DriverManager.getConnection(Dburl,dbuname,dbpass);
Statement st=con.createStatement();
String q="select * from regist where fname=' "+s1+" '  AND  contact=' "+s2+" ' ";
ResultSet rs =st.executeQuery(q);
if(rs.next())
{
response.sendRedirect("afterlogin.jsp");
}
else
{

response.sendRedirect("login.jsp?s=Invalid username and password");
}
}
catch(Exception e2)
{
out.println(e2);
}
%>