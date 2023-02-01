import java.sql.*;

class co {
	public static void main(String[] args) throws Exception {

		Class.forName("com.mysql.cj.jdbc.Driver"); // Driver name

		
		String url = "jdbc:mysql://localhost/java"; // table details
		String username = "root"; // MySQL credentials
		String password = "";
		String query = "select *from javaconnection"; // query to be run

		// url,username and password these are parameter of driverconnetion
		
		Connection con = DriverManager.getConnection(url, username, password);
		System.out.println("Connection Established successfully");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query); // Execute query
		rs.next();
		String name = rs.getString("name"); // Retrieve name from db

		System.out.println(name); // Print result on console
		st.close(); // close statement
		con.close(); // close connection
		System.out.println("Connection Closed....");
	}
}
