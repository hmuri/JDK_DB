package connect;
import connect.DBUtil;
import connect.update;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class update {
  PreparedStatement pstmt = null;
  
  Connection conn = null;
  
  public void changeAct(String loc, String day, String club_name) {
    try {
      this.conn = DBUtil.getConnection();
      String act = "UPDATE activity SET location = ?, day = ? WHERE club_name = ?";
      this.pstmt = this.conn.prepareStatement(act);
      this.pstmt.setNString(1, loc);
      this.pstmt.setNString(2, day);
      this.pstmt.setNString(3, club_name);
      int rs = this.pstmt.executeUpdate();
      this.pstmt.clearParameters();
      if (rs > 0) {
        System.out.println("");
      } else {
        System.out.println("");
      } 
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      DBUtil.dbClose(this.pstmt, this.conn);
    } 
  }
}
