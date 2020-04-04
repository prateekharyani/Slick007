package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbcon.DatabaseConnection;
import dto.Admin;
public class AdminDAO {
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	public boolean checkUser(Admin object) {
		boolean b= false;
		try {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("SELECT * FROM Admin WHERE "
                    + "id = ? and password = ?");
            
            pst.setString(1, object.getId());
            pst.setString(2, object.getPassword());
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
                b = true;
            
            con.close();

			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}
	
	public boolean changePassword(Admin object,String newPassword) {
		boolean b= false;
		try {
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}
	public boolean forgotPassword(Admin object) {
		boolean b= false;
		try {
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}

}
