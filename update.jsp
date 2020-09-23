<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("u1");
String s2=request.getParameter("u2");
String s3=request.getParameter("u3");
String s4=request.getParameter("u4");
String s5=request.getParameter("u5");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepak?useSSL=false","root","root");
Statement st=con.createStatement();
String q="update insert1 set name='"+s2+"',physics='"+s3+"',chemistry='"+s4+"',maths='"+s5+"' where rollno='"+s1+"'";
st.executeUpdate(q);

response.sendRedirect("showAll.jsp");

con.close();
}
catch(Exception e)
{ 
out.println(e);
}	
%>