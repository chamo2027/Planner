package review;

import java.sql.Connection;

import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.Statement;



public class reviewControl {

	//connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//insert data function
	public static boolean insertData(String name, String email, String event, String rating, String comment) {
	    boolean isSuccess = false;
	   // Connection con = null;
	   // Statement stmt = null;
	    
	    try {
	    	//dbconnection call
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        // SQL query with direct value insertion
	        String sql = "insert into review values(0,'"+name+"','"+email+"','"+event+"','"+rating+"','"+comment+"')";
	        
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
	public static List<reviewModel> getById(String r_id){
		
		int convertedID = Integer.parseInt(r_id);
		
		ArrayList <reviewModel> review = new ArrayList<>();
		
		try {
			//DB connecting call
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//query
			String sql = "select * from review where id '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String event = rs.getString(4);
                String rating = rs.getString(5);
                String comment = rs.getString(6);

                reviewModel fd = new reviewModel(id, name, email,event, rating, comment);
                review.add(fd);
			}

		}catch(Exception e) {
			e.printStackTrace();
		}
		return review;
	}
	
	//get all data
	public static List<reviewModel> getAllReview(){
		
		ArrayList <reviewModel> reviews = new ArrayList<>();
		
		try {
			//DB connecting call
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//query
			String sql = "select * from review";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String event = rs.getString(4);
                String rating = rs.getString(5);
                String comment = rs.getString(6);

                reviewModel fd = new reviewModel(id, name, email, event, rating, comment);
                reviews.add(fd);				
			}

		}catch(Exception e) {
			e.printStackTrace();
		}
		return reviews;
	}
	
	//update data
	public static boolean updateData(String id,String name, String email, String event, String rating, String comment) {
		try {
			//DB connection
			con = DBConnection.getConnection();
			stmt = con.createStatement();	
			
			//sql query
			String sql = "update review set name='"+name+"', email='"+email+"',event='"+event+"',rating='"+rating+"',comment='"+comment+"' "
						+"where id='"+id+"'";
				
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
	public static boolean deleteData(String id) {
		int convID = Integer.parseInt(id);
		try {
			//DB connection
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "delete from review where id='"+convID+"'";
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
