<%@page import="com.onlineShopping.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email=session.getAttribute("email").toString();
String product_id=request.getParameter("id");
try{
	Connection connection=ConnectionProvider.getConnection();
	Statement st=connection.createStatement();
	st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+product_id+"' and address is NULL");
	response.sendRedirect("myCart.jsp?masg=removed");
}
catch(Exception e){
	System.out.println(e);
}
%>