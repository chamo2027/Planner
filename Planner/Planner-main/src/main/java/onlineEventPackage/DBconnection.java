//package onlineEventPackage;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//
//public class DBconnection {
//	
//	private static String url = "jdbc:mysql://localhost:3306/onlineevent";
//	private static String user = "root";
//	private static String pass = "chamo@2026";
//	private static Connection con;
//
//	public static Connection getConnection() {
//		
//		try {
//			Class.forName("com.mysql.jdbc.Driver");
//			con = DriverManager.getConnection(url,user,pass);
//			
//		}
//		catch(Exception e) {
//			System.out.println("Database Not Connect !");
//		}
//		return con;
//	}
//}


package onlineEventPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {

    private static final String URL = "jdbc:mysql://localhost:3306/onlineevent";
    private static final String USER = "root";
    private static final String PASS = "Marasinghe@24";
    
    private static Connection con = null;

    // Private constructor to prevent instantiation
    private DBconnection() { }

    // Public method to provide access to the single instance
    public static Connection getConnection() {
        try {
            if (con == null || con.isClosed()) {
                Class.forName("com.mysql.jdbc.Driver"); 
                con = DriverManager.getConnection(URL, USER, PASS);
            }
        } catch (Exception e) {
            System.out.println("Database Connection Failed: " + e.getMessage());
        }
        return con;
    }
}
