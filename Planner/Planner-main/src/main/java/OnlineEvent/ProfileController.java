package OnlineEvent;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


public class ProfileController {
	//connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert data function
	public static boolean insertdata (String username, String email, String contactnumber, LocalDate bday, String password, String repassword) {
		
		boolean isSuccess = false;
		try {
			//db connection call
			con = DbConnection.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "insert into profile values(0,'"+username+"','"+email+"','"+contactnumber+"','"+bday+"','"+password+"','"+repassword+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	

	//GET BY EMAIL AND PASSWORD
	public static List<Profile> validate(String email, String password){
		
		ArrayList<Profile> cus = new ArrayList<>();
		
		try {
			//db connection call
			con = DbConnection.getConnection();
			stmt = con.createStatement();
			
			//QUARY
			String sql = "select * from profile where email ='"+email+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String username = rs.getString(2);
				String emailU = rs.getString(3);
				String contactnumber = rs.getString(4);
				LocalDate bday = rs.getDate(5).toLocalDate();
				String passwordU = rs.getString(6);
				String repassword = rs.getString(7);
				
				Profile c = new Profile(id, username, emailU, contactnumber, bday, passwordU, repassword);
				cus.add(c);
			}
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	//UPDATE USER DATA
	public static boolean updateUser(int id, String username, String email, String contactnumber, LocalDate bday, String password, String repassword){

	    try {
	        con = DbConnection.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "update profile set username = '"+username+"', email = '"+email+"', countactnumber = '"+contactnumber+"', bday = '"+bday+"', password = '"+password+"', repassword = '"+repassword+"' where id = "+id;
	        int rs = stmt.executeUpdate(sql);
	        
	        if(rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return isSuccess;
	}

	
	
	//UPDATE USER LIST
	public static List<Profile> getUpdateDetails (int Id){
		int convertedID =Id;
		ArrayList <Profile> profile = new ArrayList<>();
			
		try {
			//DB CONNECTION
			con = DbConnection.getConnection();
			stmt = con.createStatement();
				
			//QUERY
			String sql = "select * from profile where id = '"+convertedID+"'";
				
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int id = rs.getInt(1);
				String username = rs.getString(2);
				String email = rs.getString(3);
				String contactnumber = rs.getString(4);
				LocalDate bday = rs.getDate(5).toLocalDate();
				String password = rs.getString(6);
				String repassword = rs.getString(7);
					
				Profile pk = new Profile (id, username, email, contactnumber, bday, password, repassword);
				profile.add(pk);
			}
				
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return profile;
			
	}
	
	
	//DELETE USER ACCOUNT
	public static boolean deleteUser(int id) {
	
		try {
			//DB CONNECTION
			con = DbConnection.getConnection();
			stmt = con.createStatement();
				
			//QUERY
			String sql = "delete from profile where id = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
	        
	        if(rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

}


