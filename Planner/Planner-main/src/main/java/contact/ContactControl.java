package contact;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class ContactControl {
	
	//connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//insert data function
		public static boolean insertData(String firstName, String lastName, String eMail, String phoneNumber, String comment) {
		    boolean isSuccess = false;
		   // Connection con = null;
		   // Statement stmt = null;
		    
		    try {
		    	//dbconnection call
		        con = DBConnection.getConnection();
		        stmt = con.createStatement();
		        
		        // SQL query with direct value insertion
		        String sql = "insert into contact values(0,'"+firstName+"','"+lastName+"','"+eMail+"','"+phoneNumber+"','"+comment+"')";
		        
		        int rs = stmt.executeUpdate(sql);
		        
		        
		        if(rs>0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
			
		}
		//getIdFunction
		public static List<ContactModel> getById(String cId){
			
			int convertedID = Integer.parseInt(cId);
			
			ArrayList <ContactModel> contact = new ArrayList<>();
			
			try {
				//DB connecting call
				con = DBConnection.getConnection();
				stmt = con.createStatement();
				
				//query
				String sql = "select * from contact where id '"+convertedID+"'";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					
					int contactId = rs.getInt(1);
	                String firstName = rs.getString(2);
	                String lastName = rs.getString(3);
	                String eMail = rs.getString(4);
	                String phoneNumber = rs.getString(5);
	                String comment = rs.getString(6);

	                ContactModel contact1 = new ContactModel(contactId, firstName, lastName,eMail, phoneNumber, comment);
	                contact.add(contact1);
				}

			}catch(Exception e) {
				e.printStackTrace();
			}
			return contact;
		}
		
		//get all data
		public static List<ContactModel> getAllContact(){
			
			ArrayList <ContactModel> contact = new ArrayList<>();
			
			try {
				//DB connecting call
				con = DBConnection.getConnection();
				stmt = con.createStatement();
				
				//query
				String sql = "select * from contact";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int contactId = rs.getInt(1);
	                String firstName = rs.getString(2);
	                String lastName = rs.getString(3);
	                String eMail = rs.getString(4);
	                String phoneNumber = rs.getString(5);
	                String comment = rs.getString(6);

	                ContactModel contact1 = new ContactModel(contactId, firstName, lastName, eMail, phoneNumber, comment);
	                contact.add(contact1);				
				}

			}catch(Exception e) {
				e.printStackTrace();
			}
			return contact;
		}
		
		//update data
		public static boolean updateData(String contactId,String firstName, String lastName, String eMail, String phoneNumber, String comment) {
			try {
				//DB connection
				con = DBConnection.getConnection();
				stmt = con.createStatement();	
				
				//sql query
				String sql = "update contact set firstName='"+firstName+"', lastName='"+lastName+"',eMail='"+eMail+"',phoneNumber='"+phoneNumber+"',comment='"+comment+"' where contactId='"+contactId+"'";
					
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0 ) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
							
				
				}catch(Exception e) {
					e.printStackTrace();
				}
			return isSuccess;
		}
		
		//delete data
		public static boolean deleteData(String contactId) {
			int contID = Integer.parseInt(contactId);
			try {
				//DB connection
				con = DBConnection.getConnection();
				stmt = con.createStatement();
				
				//sql query
				String sql = "delete from contact where contactId='"+contactId+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0 ) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
		}

}
