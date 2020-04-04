package dbcon;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {

	public static Connection getConnection() {
		Connection con= null;
		try {
			Class.forName(DatabaseDetails.DRIVER);
			con= DriverManager.getConnection(DatabaseDetails.CONSTR,DatabaseDetails.USERID,DatabaseDetails.PASS);
		}
		catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return con;
		
	}
}
