package connect;

import connect.add_member;
import connect.delete_member;
import connect.select;
import connect.update;

public class mainJDBC {
  public static void main(String[] args) {}
  
  void getType(String type1, String type2) {
    if (type1 == "insert") {
      add_member a1 = new add_member();
      String s_id = null;
      String s_name = null, dept_name = null, club_name = null;
      a1.addStudent(s_id, s_name, dept_name, club_name);
    } else if (type1 == "delete") {
      delete_member d1 = new delete_member();
      String club_name = null;
      d1.deleteClub(club_name);
    } else if (type1 == "update") {
      update u1 = new update();
      String loc = null, day = null, club_name = null;
      u1.changeAct(loc, day, club_name);
    } else if (type1 == "select") {
      select s1 = new select();
      if (type2 == "president") {
        String club_name = null;
        s1.clubInfo(club_name);
      } else if (type2 == "professor") {
        String p_name = null;
        s1.profInfo(p_name);
      } else if (type2 == "budget") {
        s1.areaBudget();
      } else {
        System.out.println("select" );
      } 
    } else {
      System.out.println("delete, insert, select, update" );
    } 
  }
}
