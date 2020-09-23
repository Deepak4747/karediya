<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("rollno");

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepak?useSSL=false","root","root");
Statement st=con.createStatement();
String q="delete from insert1 where  rollno=' "+s1+" '";
st.executeUpdate(q);
con.close();
response.sendRedirect("showAll.jsp");
}
catch(Exception e)
{
    out.println(e);
}
%>