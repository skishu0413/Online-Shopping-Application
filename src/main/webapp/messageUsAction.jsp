<%@page import="com.onlineShopping.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email=session.getAttribute("email").toString();
String subject=request.getParameter("subject");
String msgBody=request.getParameter("msgBody");

try{
	Connection connection=ConnectionProvider.getConnection();
	PreparedStatement ps=connection.prepareStatement("insert into message(email,subject,msgBody) values(?,?,?)");
	ps.setString(1, email);
	ps.setString(2, subject);
	ps.setString(3, msgBody);
	ps.executeUpdate();
	response.sendRedirect("messageUs.jsp?msg=done");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("messageUs.jsp?msg=invalid");
}

%>