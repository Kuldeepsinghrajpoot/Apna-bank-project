<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%

   
   String Email = request.getParameter("Email_Id");

   if (Email!=null) {
   //	String AccountNumber = request.getParameter("Email_Id");
		
		String New_Password        = request.getParameter("New_Password");
		String Retype_new_password = request.getParameter("Retype_new_password");
		
		String correct = "";
		String update_amount ="";
   
  
   	int counter=0;
	   
   
   try{
   	 Connection conne = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
	   String query = "UPDATE  userdetails SET password=?WHERE Email ='"+Email+"'";
	       
	     
	         PreparedStatement state = conne.prepareStatement(query);
	        state.setString(1,New_Password);
	         counter=state.executeUpdate();
	        if(counter>0){
	            out.print("Succeefully");
	      
	            conne.close();
	        }else{
	            out.print(new New_Password);
	            
	        }
   }catch(Exception ex){
	   out.print(ex);
   
   }   

}else{
	out.print("Something Went wrong");

}
   %>
