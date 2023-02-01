<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>


<%-- <%@include file="catchFile.jsp" %> --%>
 
<%
String Email = (String)session.getAttribute("Email_id");
if(Email==null){
  response.sendRedirect("login.jsp");
}

// connection
Class.forName("com.mysql.cj.jdbc.Driver");

         String FirstName = request.getParameter("firstName");
         String LastName  = request.getParameter("LastName");
         String Add       = request.getParameter("address");
         String Dob       = request.getParameter("dob");
        
         //String Phone     = resultset.getString("phone");
         //String userid    = resultset.getString("user_id");
        // String AccountNumber = resultset.getString("ACNumber");
         //String IFSC      = resultset.getString("ifsc");
         String pincode   = request.getParameter("zipCode");
         String State     = request.getParameter("state");

if((pincode!="")&&(State!="")&&(Add!="")&&(Dob!="")){
// connection
		  int counter = 0;

    try{
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");

       
        //String query = "UPDATE  userdetails SET DOB=('"+Dob+"'),Address='"+Add+"',state='"+State+"', zip_code='"+pincode+"' WHERE EMAIL ='"+Email+"'";
        String query = "UPDATE  userdetails SET DOB=?,FirstName=?,Address=?,state=?, zip_code=? ,LastName=? WHERE Email ='"+Email+"'";
         PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1,Dob);
        statement.setString(2,FirstName);
        statement.setString(6,LastName);
        statement.setString(4,State);
        statement.setString(5,pincode);
        statement.setString(3,Add);
        counter=statement.executeUpdate();
   
        if(counter>0){
            out.print("Succeefully");
            connection.close();
        }else{
            out.print("Ohooo");
        }

    }catch(Exception e){
        out.print(e);
    }
  



}else{
    out.print("Something Went wrong");
}
%>

