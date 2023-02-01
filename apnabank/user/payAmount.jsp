<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
   String Email = (String)session.getAttribute("Email_id");
   // String upi_sender   = (String)session.getAttribute("upi");
   
   if (Email!=null) {
   //	String AccountNumber = request.getParameter("Email_Id");
		String upiid        = request.getParameter("upi_id");
		String amount       = request.getParameter("amount");
		String upi_sender   = request.getParameter("upi_sender");
		String Total_amount = request.getParameter("Total_amount");
		String correct = "";
		String update_amount ="";
   
   if(upiid.compareTo(upi_sender)==0){
   	out.print("We can not send money in same bank Account");
   }
   else{
	   int Amount        = Integer.parseInt(amount);
	   int Total_balance = Integer.parseInt(Total_amount);
	   
	   Random rand = new Random();
			int n = rand.nextInt(900000000) + 100000000;
			//date for inserting
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String date = sdf.format(new Date());
	   if ((amount.compareTo("0")==0)&&(upi_sender!=null)){
	   	out.print("check Amount");
	   }else{
	   String Upi_reciver="";
 
   
   try{
	   Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
	   Statement  statement = connection.createStatement();
	   String query = "SELECT upi_id, current_amount FROM upi_verification,amount WHERE upi_verification.upi_id = '"+upiid+"' AND  amount.upi='"+upiid+"'";
	   ResultSet val= statement.executeQuery(query);
   
   
	   while(val.next()){
			   Upi_reciver = val.getString("upi_id").toString();
			   update_amount = val.getString("current_amount").toString();
	   
	   if (Upi_reciver.compareTo(upiid)==0) {
			   correct="YES";
		   }
	   }
   }catch(Exception ex){
	   out.print(ex);
   
   }
   String yes = "YES";
   String flag = "";
   if((correct.compareTo(yes)==0)) {
   
	   Total_balance =Total_balance-Amount;
   
   int cnt=0;
   while(cnt<1){
   try{
		   Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
		   Statement  statement = connection.createStatement();
		   String Query = "INSERT INTO `transactions`(`UPI_reciver`,`TRANSACTIONSID`,`DATE`,`USERS`,`AMOUNT`,`STATUS`) VALUES ('"+Upi_reciver+"','"+n+"','"+date+"','"+upi_sender+"','"+amount+"','"+flag+"')";
	   statement.executeUpdate(Query);
	   if(cnt==0){
	   // out.print("Succeefully");
	           int counter = 0;
	           flag = "Succeefully";
	    try{
	        Connection conne = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
	        Connection co = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
	      
	     // String Emailuserid = "pradeepsinghrajpoot40@gmail.com";
	        String query = "UPDATE  amount SET current_amount=?WHERE Email ='"+Email+"'";
	        String query_rev = "UPDATE  amount SET current_amount=? WHERE upi ='"+Upi_reciver+"'";
	     
	         PreparedStatement state = conne.prepareStatement(query);
	         PreparedStatement state_update = co.prepareStatement(query_rev);
	        // String Total_amount_amount = Integer.toString(Total_amount);
	        // String TA=String.format("%d",Total_amount);  
	        
	        int Amount_update = Integer.parseInt(update_amount);
	        Amount_update = Amount+Amount_update;
	        String TA = String.valueOf(Total_balance);
	        String update_amount_user = String.valueOf(Amount_update);
	        state.setString(1,TA);
	        state_update.setString(1,update_amount_user);
	        counter=state.executeUpdate();
	        state_update.executeUpdate();

	        if(counter>0){
	            out.print(Total_balance);
	      
	            conne.close();
	        }else{
	            out.print("Ohooo");
	            flag="Error";
	        }
	   
	    }catch(Exception e){
	        out.print(e);
	    }
	   // close this program here
	   }else{
		   out.print("error");
		   flag="error";
		   connection.close();
		   }
   }catch(Exception e){
	   out.print(e);
   }
   cnt=1;
   }
   }else{
	   out.print("Not Sufficient money in your Account"+upiid);
     }
   }}
   }
   else{
	   out.print("wrong");
   }
   
   
   
   %>