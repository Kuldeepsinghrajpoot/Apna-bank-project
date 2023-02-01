import java.sql.*;
import java.io.*;
class Insert{
	public static void main(String[] args) throws Exception{
		//Regiseter driver here.
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter id name and age Insert here");
		String i = br.readLine();
		String n = br.readLine();
		String g = br.readLine();
			
		int p=0;
		while(p<1){
		  try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/java","root","");
			Statement st = con.createStatement(); 
			String string ="INSERT INTO javaconnection VALUES('"+i+"', '"+n+"','"+g+"')";
			 st.executeUpdate(string);
			 if(p==1){
				con.close();
			}
            

		}catch( Exception e){
				System.out.println(e);
			}
			
			p++;
			
	    } 
	}
}

 