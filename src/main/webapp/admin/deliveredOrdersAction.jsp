<%@page import="com.onlineShopping.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="Delivered";

try{
	Connection connection=ConnectionProvider.getConnection();
	Statement st=connection.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");
	response.sendRedirect("ordersReceived.jsp?msg=deliver");
	
}
catch(Exception e) {
	System.out.println(e);
	response.sendRedirect("ordersReceived.jsp?msg=wrong");
}

%>