<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("p1");
String s2=request.getParameter("p2");
String s3=request.getParameter("p3");
String s4=request.getParameter("p4");

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepak?useSSL=false","root","root");
Statement st=con.createStatement();

String q =" insert into regist values(' " +s1+" ',' "+s2+" ',' "+s3+" ',' "+s4+" ')";
st.executeUpdate(q);
response.sendRedirect("login.jsp");
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>