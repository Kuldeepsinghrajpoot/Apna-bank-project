<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %> 
 
<%
// connection
Class.forName("com.mysql.cj.jdbc.Driver");
String Email_id = request.getParameter("Email-id");
String passowrd = request.getParameter("password");

if((Email_id!="")&&(passowrd!="")){
// connection
		  try{
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/java","root","");
			Statement st = con.createStatement(); 
			String string ="SELECT *FROM javaconnection WHERE Email_Id='"+Email_id+"' and password='"+passowrd+"'";
			
            ResultSet val=st.executeQuery(string);
            String check = "";
			while(val.next()){
				 check = val.getString(2);
				
		  }

		  if(Email_id.compareTo(check)==0){
					response.sendRedirect("/sendData/home.jsp");
					session.setAttribute("Email id",Email_id);  
				}else{ 
					out.println("please enter correct user id and password");
				}
		}catch( Exception e){
				out.println(e);
			}
			
	    }
%>
