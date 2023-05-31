package connect;

import connect.DBUtil;
import connect.add_member;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class add_member {
  PreparedStatement pstmt = null;
  
  Connection conn = null;
  
  public void addStudent( String s_id, String s_name, String dept_name, String club_name) {
    try {
      this.conn = DBUtil.getConnection();
      String newMem1 = "INSERT INTO student values(?,?,?)";
      this.pstmt = this.conn.prepareStatement(newMem1);
      this.pstmt.setInt(1, Integer.parseInt(s_id));
      this.pstmt.setNString(2, s_name);
      this.pstmt.setNString(3, dept_name);
      this.pstmt.executeUpdate();
      this.pstmt.clearParameters();
      System.out.println("student" );
    } catch (SQLException e) {
      e.printStackTrace();
    } 
    try {
      String newMem2 = "INSERT INTO participates values(?,?)";
      this.pstmt = this.conn.prepareStatement(newMem2);
      this.pstmt.setInt(1, Integer.parseInt(s_id));
      this.pstmt.setNString(2, club_name);
      this.pstmt.executeUpdate();
      this.pstmt.clearParameters();
      System.out.println("participates" );
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      DBUtil.dbClose(this.pstmt, this.conn);
    } 
  }
}
