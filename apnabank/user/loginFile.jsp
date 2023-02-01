<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %> 
 
<%
// connection
Class.forName("com.mysql.cj.jdbc.Driver");
String Email_id = request.getParameter("email");
String password = request.getParameter("password");

if((Email_id!="")&&(password!="")){
// connection
		  try{
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
			Statement st = con.createStatement(); 
		//	String string ="SELECT Email,password upi_id FROM userdetails,upi_verification WHERE userdetails.Email='"+Email_id+"'and userdetails.password='"+passowrd+"' and upi_verification.Email='"+Email_id+"'";
			
			String string = "SELECT *FROM userdetails ,upi_verification WHERE userdetails.Email='"+Email_id+"' AND userdetails.password ='"+password+"' AND upi_verification.Email='"+Email_id+"'";
            ResultSet val=st.executeQuery(string);
            String Email_ = "";
			String password_ = "";
			String upi_Owner="";

			while(val.next()){
				 Email_    = val.getString("Email").toString();
				 password_ = val.getString("password").toString();
				 upi_Owner = val.getString("upi_id").toString();
				
		  }

		  if((Email_id.compareTo(Email_)==0)&&(password.compareTo(password_)==0)){
					
					session.setAttribute("Email_id",Email_id);
					session.setAttribute("upi_Owner",upi_Owner);  
                    out.print("Succeefully");
				}else{ 
					out.println("Please put correct Email and password");
				}
		}catch( Exception e){
				out.println(e);
			}
			
	    }else{ 
					out.println("Please put  Email and password");
				}
%>
