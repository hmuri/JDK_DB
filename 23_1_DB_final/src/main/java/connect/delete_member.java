package connect;

import connect.DBUtil;
import connect.delete_member;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class delete_member {
  Connection conn = null;
  
  PreparedStatement pstmt = null;
  
  String sql = null;
  
  public void deleteClub(String club_name) {
    try {
      this.conn = DBUtil.getConnection();
      String removeC = "delete from Club where club_name = ?";
      this.pstmt = this.conn.prepareStatement(removeC);
      this.pstmt.setNString(1, club_name);
      this.pstmt.executeUpdate();
      this.pstmt.clearParameters();
      System.out.println("");
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      DBUtil.dbClose(this.pstmt, this.conn);
    } 
  }
}
