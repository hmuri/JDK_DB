package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {
  public static Connection getConnection() {
    Connection conn = null;
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/final?serverTimezone=UTC", "root", "cmj010326!");
    } catch (ClassNotFoundException error) {
      System.out.println("mysql driver" );
    } catch (SQLException error) {
      System.out.println("DB mySQL id pw ");
    } 
    return conn;
  }
  
  public static void dbClose(PreparedStatement pstmt, Connection conn) {
    try {
      pstmt.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } 
    try {
      conn.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } 
  }
  
  public static void dbClose(ResultSet rs, PreparedStatement pstmt, Connection conn) {
    try {
      pstmt.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } 
    try {
      rs.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } 
    try {
      conn.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } 
  }
}
