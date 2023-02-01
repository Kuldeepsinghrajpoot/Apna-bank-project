<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>

<%
//connection
Class.forName("com.mysql.cj.jdbc.Driver");

String Email     = request.getParameter("email");
String FirstName = request.getParameter("FirstName");
String LastName  = request.getParameter("LastName");
String dob       = request.getParameter("dob");
String Address   = request.getParameter("Address");
String password  = request.getParameter("password");

if((Email!="")&&(FirstName!="")&&(LastName!="")&&(dob!="")&&(Address!="")&&(password!="")){
   int counter = 0;
    while(counter<1){
    try{
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");

        Statement statement = connection.createStatement();
        String query = "insert into userdetails(FirstName,LastName,Email,DOB,Address,password) values('"+FirstName+"','"+LastName+"','"+Email+"','"+dob+"','"+Address+"','"+password+"')";

        statement.executeUpdate(query);
        if(counter==1){
            out.println("failed");
            connection.close();
        }else{
            out.print("Succeefully");
        }
    }catch(Exception e){
        out.print(e);
    }
    counter++;
    }

}else{
    out.print("Failed");
}



%>

 