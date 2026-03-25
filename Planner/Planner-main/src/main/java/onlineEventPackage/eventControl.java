package onlineEventPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class eventControl {
	
	//connect database
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	//insert data function
	
	public static boolean insertdata (String name , String telephone_number , String type , String date , String location , String services , String description) {
		
		boolean isSuccess = false;
		try {
			//db connection call
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "insert into customize_table values (0, '"+name+"', '"+telephone_number+"', '"+type+"', '"+date+"', '"+location+"', '"+services+"', '"+description+"') ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	 // New method to get the last inserted record
	
	public static List<eventModel> getLastInsertedEvent() {
        ArrayList<eventModel> events = new ArrayList<>();
        
        try {
            //DB connection
            con = DBconnection.getConnection();
            stmt = con.createStatement();
            
            //Query to get the last inserted record (assuming ID is auto-increment)
            String sql = "SELECT * FROM customize_table ORDER BY id DESC LIMIT 1";
            
            rs = stmt.executeQuery(sql);
            
            if(rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String telephone_number = rs.getString(3);
                String type = rs.getString(4);
                String date = rs.getString(5);
                String location = rs.getString(6);
                String services = rs.getString(7);
                String description = rs.getString(8);
                
                eventModel em = new eventModel(id, name, telephone_number, type, date, location, services, description);
                events.add(em);
            }
            
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if(rs != null) rs.close();
                if(stmt != null) stmt.close();
                if(con != null) con.close();
            } catch(Exception e) {
                e.printStackTrace();
            }
        }
        
        return events;
    }
	
	
	//GetById
	
	public static List <eventModel> getById (String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <eventModel> event = new ArrayList<>();
		
		try {
			//DB connection
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//Query
			String sql = "select * from customize_table where id ='"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String telephone_number = rs.getString(3);
				String type = rs.getString(4);
				String date = rs.getString(5);
				String location = rs.getString(6);
				String services = rs.getString(7);
				String description = rs.getString(8);
				
				eventModel em = new eventModel(id,name, telephone_number, type, date, location, services,  description);
				event.add(em);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return event;
	}
	

	
	//update data
	
	public static boolean updatedata(String id, String name, String telephone_number, String type, String date, String location, String services, String description) {
	    boolean isSuccess = false;

	    try {
	        con = DBconnection.getConnection();
	        String sql = "UPDATE customize_table SET `name` = ?, `telephone_number` = ?, `type` = ?, `date` = ?, `location` = ?, `services` = ?, `description` = ? WHERE `id` = ?";
	        PreparedStatement pstmt = con.prepareStatement(sql);
	        pstmt.setString(1, name);
	        pstmt.setString(2, telephone_number);
	        pstmt.setString(3, type);
	        pstmt.setString(4, date);
	        pstmt.setString(5, location);
	        pstmt.setString(6, services);
	        pstmt.setString(7, description);
	        pstmt.setInt(8, Integer.parseInt(id));

	        int rs = pstmt.executeUpdate();

	        if (rs > 0) {
	            isSuccess = true;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}
	
	
	
	
		
	//delete
	
	public static boolean deletedata (String id) {
		
		 int convID = Integer.parseInt(id);
		
		try {
			
			//DB connection
			
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from customize_table where id= '"+convID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
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
		
	


	
	
	
	
	
	
	
	