<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@include file="catchFile.jsp" %>
<%
   String Email = (String)session.getAttribute("Email_id");
if (Email!=null) {
	String AccountNumber = request.getParameter("Email_Id");
	String upiid        = request.getParameter("upiid");
int counter=0;
while (counter<1) {
	
try{

	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
	Statement statement = connection.createStatement();
	String query = "insert into upi_verification(Email,upi_id) values('"+Email+"','"+upiid+"')";
	statement.executeUpdate(query);
if(counter==1){
            out.println("failed");
            connection.close();
        }else{
            out.print("Succeefully");
        }
}catch(Exception ex){
	out.print(ex);

}
counter = 1;
}


}else{
	out.println("wrong");
}


%>