<%

String mail = (String)session.getAttribute("Email_id");
if (mail!=null) {
Class.forName("com.mysql.cj.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
            
         int counter = 0;
         while(counter<1){
            try{
               Statement st = co.createStatement();
               String update_Query  = "INSERT INTO `amount`(`Email`, `current_amount`,`upi`) VALUES ('"+mail+"','"+0+"','anuj@apna')";
               st.executeUpdate(update_Query);
                  if(counter==1) {
                     out.println("Went someting worng");
                  }else{
                     out.print("Succeefully query executed");
                  }
            }catch(Exception e){
               out.println();
            } 
         counter++;
         }
}
%>
