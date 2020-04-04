package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dbcon.DatabaseConnection;
import dto.Customer;
import servercon.WebServer;

public class CustomerDAO {
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	public boolean checkCustomerCredentials(Customer object) {
		boolean b= false;
		try {
            con = DatabaseConnection.getConnection();
            pst = con.prepareStatement("SELECT * FROM Customer WHERE id = ? and password = ? and verified = true and blocked = false");
            pst.setString(1, object.getId());
            pst.setString(2, object.getPassword());
            rs= pst.executeQuery();
            if(rs.isBeforeFirst()) 
            {
            	b = true;
            }
            con.close();
            return b;
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return b;
		
	}
	
	public boolean changePassword(Customer objct,String newPassword) {
		boolean b= false;
		try {
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}

    public boolean forgotPassword(String custid)
    {
        boolean b = false;
        
        try
        {
        String verification_link = WebServer.MYSERVER+"/ForgotPassword.jsp?customerID="+custid;
      	  boolean mailSent = MailDAO.sendMail(custid," Reset Password Mail From Slick "," Please click on following link to reset password yourself with Slick <a href="+verification_link+"> VERIFY</a>");
      	    if(mailSent)
              System.out.println("new password mail has been "
                  + "sent to "+custid);
          else
              System.out.println("Mail has not been "
                  + "sent to "+custid);
      	   
      	   if(mailSent)
      		   b=true;
 
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
    }
    

	
	public boolean forgotPassword(String id , String password) {
		boolean b= false;
		try {
	        con = DatabaseConnection.getConnection();
	        
	        pst = con.prepareStatement("update customer set password = ? where id = ?");
	        
	        pst.setString(1, password);
	        pst.setString(2, id);
	        
	        int count = pst.executeUpdate();
	        
	        if(count > 0)
	            b = true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}
	public boolean registerCustomer(Customer object) {
		boolean b= false;
		try {
	           con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
	            
	            
	            pst.setString(1,object.getId());
	            pst.setString(2,object.getPassword());
	            pst.setString(3,object.getFirstName());
	            pst.setString(4,object.getLastName());
	            pst.setString(5,object.getMobileNumber());
	            pst.setBoolean(6,false);
	            pst.setBoolean(7,false);
	            
	            
	            int count = pst.executeUpdate();
	            
	            if(count > 0)
	            {
	                String verification_link = WebServer.MYSERVER+"/verifyuser.jsp?customerID="+object.getId();
	                
	                boolean mailSent = MailDAO.sendMail(object.getId()," Verification Mail From Slick "," Please click on following link to verify yourself with Slick <a href="+verification_link+"> VERIFY</a>");
	                
	                if(mailSent)
	                {
	                    System.out.println("Verification mail has been "
	                        + "sent to "+object.getId());
	                    b = true;
	                }
	                else
	                    System.out.println("Verification mail has not been "
	                        + "sent to "+object.getId());
	            }
	            
	            con.close();
	 		

		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}
	
	public boolean verifyCustomer(String customerID) {
		boolean b= false;
		try {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("select * from Customer Where id = ? ");
            
            pst.setString(1, customerID);
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                pst = con.prepareStatement("Update Customer set verified = true Where id = ?");
                
                pst.setString(1, customerID);
                
                int count = pst.executeUpdate();
                
                if(count > 0)
                    b = true;
            }
            
            con.close();
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}
	
	public static Customer getAllCustomerDetailsByID(Customer object) {
	       Customer customerDetails=null;
	       
	       Connection con=null;
	       
	     try
	     {
	        con = DatabaseConnection.getConnection(); 
	        
	        String sql="select * from customer where id = '"+object.getId()+"'";
	        
	        ResultSet rs= con.prepareStatement(sql).executeQuery();
	        
	        if(rs.next())
	        {
	            
	        	customerDetails = new Customer(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getBoolean(6),rs.getBoolean(7));
	        
	        }
	     }
	     catch(Exception e)
	     {
	        e.printStackTrace();
	     }
	     finally
	     {
	     try
	     {
	        con.close();
	     }
	     catch(Exception e)
	     {
	        e.printStackTrace();
	     }
	     }
	     return customerDetails;
		
	}
	public boolean deleteCustomer(String customerID) {
		boolean b= false;
		try {
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}
	
	public ArrayList<Customer> getAllCustomersDetails(){
		ArrayList<Customer> customerList= null;
		try {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("select * from Customer where verified = true");
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                customerList = new ArrayList<>();
                
                while(rs.next())
                {
                    Customer obj = new Customer();
                    obj.setId(rs.getString(1));
                    obj.setPassword(rs.getString(2));
                    obj.setFirstName(rs.getString(3));
                    obj.setLastName(rs.getString(4));
                    obj.setMobileNumber(rs.getString(5));
                    obj.setVerified(rs.getBoolean(6));
                    obj.setBlocked(rs.getBoolean(7));
                    
                    customerList.add(obj);
                }
            }
            
            con.close();

			
		}
		catch(Exception ex) {
			
		}
		return customerList;
	}
	
	public boolean updateCustomer(Customer obj) {
		boolean b= false;
		try {
	        con = DatabaseConnection.getConnection();
	        
	        pst = con.prepareStatement("update customer set password = ? , firstName = ? , lastName = ? , mobileNumber = ? where id = ?");
	        
	        pst.setString(1, obj.getPassword());
	        pst.setString(2, obj.getFirstName());
	        pst.setString(3, obj.getLastName());
	        pst.setString(4, obj.getMobileNumber());
	        pst.setString(5, obj.getId());
	        
	        int count = pst.executeUpdate();
	        
	        if(count > 0)
	            b = true;

			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return b;	
	}
	
	public boolean blockCustomer(String customerID) {
		boolean b= false;
		try {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("Update Customer Set blocked = true where id = ?");
            
            pst.setString(1, customerID);
            
            int count = pst.executeUpdate();
            
            if(count > 0)
                b = true;

			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}

	

}
