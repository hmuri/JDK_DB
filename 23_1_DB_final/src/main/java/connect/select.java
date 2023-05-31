package connect;
import connect.DBUtil;
import connect.select;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class select {
  PreparedStatement pstmt = null;
  
  Connection conn = null;
  
  ResultSet rs = null;
  
  public ArrayList<String> clubInfo(String club_name) {
	ArrayList<String> clubInfo = new ArrayList<>();
    try {
      this.conn = DBUtil.getConnection();
      String view1 = "SELECT cv.club_name, cv.club_president, s.dept_name FROM club_view cv JOIN participates p ON cv.club_name = p.club_name JOIN student s ON p.s_ID = s.s_ID WHERE cv.club_president = s.s_name AND cv.club_name = ?";
      this.pstmt = this.conn.prepareStatement(view1);
      this.pstmt.setNString(1, club_name);
      this.rs = this.pstmt.executeQuery();
      this.pstmt.clearParameters();
      while (this.rs.next()) {
    	  String clubName = this.rs.getString("club_name"); // Retrieve the club name from the result set
    	  String clubPresident = this.rs.getString("club_president"); // Retrieve the club president from the result set
    	  String deptName = this.rs.getString("dept_name"); // Retrieve the department name from the result set
    	  clubInfo.add(clubName);
    	  clubInfo.add(clubPresident);
    	  clubInfo.add(deptName);
      } 
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      DBUtil.dbClose(this.rs, this.pstmt, this.conn);
    }
    return clubInfo;
  }
  
  public ArrayList<String> getClubNames(){
	  ArrayList<String> clubNames = new ArrayList<>();
	  try {
		  this.conn = DBUtil.getConnection();
		  String query = "SELECT club_name FROM club";
		  this.pstmt = this.conn.prepareStatement(query);
	      this.rs = this.pstmt.executeQuery();
	      
	      while (this.rs.next()) {
	          String clubName = this.rs.getString("club_name");
	          clubNames.add(clubName);
	        }
	  }	  catch (SQLException e) {
	      e.printStackTrace();
	    } finally {
	      DBUtil.dbClose(rs, pstmt, conn);
	    }
	  return clubNames;  
  }
  
  public ArrayList<String> profInfo(String p_name){
	 ArrayList<String> profInfo = new ArrayList<>();
    try {
      this.conn = DBUtil.getConnection();
      String view2 = "SELECT p.p_name, cv.club_name, cv.area_name, cv.club_president FROM professor p JOIN guides g on p.p_ID = g.p_ID JOIN club_view cv ON g.club_name = cv.club_name WHERE p.p_name = ?";
      this.pstmt = this.conn.prepareStatement(view2);
      this.pstmt.setNString(1, p_name);
      this.rs = this.pstmt.executeQuery();
      this.pstmt.clearParameters();
      while (this.rs.next()) {
    	  String profName = this.rs.getString("p_name"); // Retrieve the club name from the result set
    	  String clubName = this.rs.getString("club_name"); // Retrieve the club president from the result set
    	  String areaName = this.rs.getString("area_name");
    	  String prsdName = this.rs.getString("club_president");// Retrieve the department name from the result set
    	  profInfo.add(profName);
    	  profInfo.add(clubName);
    	  profInfo.add(areaName);
    	  profInfo.add(prsdName);
      } 
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      DBUtil.dbClose(this.rs, this.pstmt, this.conn);
    }
    return profInfo;
  }
  
  public String areaBudget() {
	 String budget=null;
    try {
      this.conn = DBUtil.getConnection();
      String avg = "SELECT area_name, AVG(club_budget) AS avg_budget FROM club GROUP BY area_name";
      this.pstmt = this.conn.prepareStatement(avg);
      this.rs = this.pstmt.executeQuery();
      this.pstmt.clearParameters();
      while (this.rs.next()) {
        String a = this.rs.getString("area_name");
        String b = this.rs.getString("avg_budget");
        System.out.println(String.valueOf(a) + "/" + b);
        budget=b;
        
      } 
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      DBUtil.dbClose(this.rs, this.pstmt, this.conn);
    }
    return budget;
  }
}
