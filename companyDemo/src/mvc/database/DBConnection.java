package mvc.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		Connection conn= null;
		
		String url = "jdbc:mysql://34.64.223.143:3306/companyDemo";
		String user = "remote";
		String password = "1pq02ow9";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url,user,password);
		
		return conn;
		
	}
}
