<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("r1");
String s2=request.getParameter("r2");
String s3=request.getParameter("r3");
String s4=request.getParameter("r4");
String s5=request.getParameter("r5");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepak?useSSL=false","root","root");
Statement st=con.createStatement();

String q =" insert into insert1 values(' " +s1+" ',' "+s2+" ',' "+s3+" ',' "+s4+" ' ,' "+s5+" ')";
st.executeUpdate(q);
response.sendRedirect("showAll.jsp");

con.close();
}
catch(Exception e)
{
out.println(e);
	
}

%>