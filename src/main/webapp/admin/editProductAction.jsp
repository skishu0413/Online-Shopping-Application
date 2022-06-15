<%@page import="com.onlineShopping.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String status=request.getParameter("status");

try{
	Connection connection=ConnectionProvider.getConnection();
	Statement st=connection.createStatement();
	st.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',status='"+status+"' where id='"+id+"'");
	if(status.equals("No")) {
		st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
	}	
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=invalid");

}
%>