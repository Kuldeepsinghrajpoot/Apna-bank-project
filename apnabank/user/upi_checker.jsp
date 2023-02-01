<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@include file="catchFile.jsp" %>
<%

//	String AccountNumber = request.getParameter("Email_Id");
	String upiid      = request.getParameter("upi_id");
	String Upi_reciver="";
	
try{
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
	Statement  statement = connection.createStatement();
	String query = "SELECT *FROM upi_verification";
	ResultSet val= statement.executeQuery(query);
	

	while(val.next()){
		Upi_reciver = val.getString("upi_id").toString();
	if (Upi_reciver.compareTo(upiid)==0) {
		out.print("YES");
	}
}
}catch(Exception ex){
	out.print(ex);

}
%>