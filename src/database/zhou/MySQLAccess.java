package zhou;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

public class MySQLAccess {
  private Connection conn = null;
  private Statement  stat = null;
  private PreparedStatement pStat = null;
  private ResultSet resSet = null;

  public void readDataBase() throws Exception {
    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost/feedback?" + "user=sqluser&password=sqluserpw");
      stat = conn.createStatement();
      resSet = stat.executeQuery("select * from feedback.comments");
      writeResultSet(resSet);
    }
    catch(Exception e) {
      throw e;
    } finally {
      close();
    }
  }

  public void writeResultSet(ResultSet resSet) throws SQLException {
    while (resSet.next()) {
      String user = resSet.getString("myuser");
      String website = resSet.getString("webpage");
      String summary = resSet.getString("summary");
      Date date = resSet.getDate("datum");
      String comment = resSet.getString("comments");
      System.out.println("User: " + user);
      System.out.println("Website: " + website);
      System.out.println("Summery: " + summary);
      System.out.println("Date: " + date);
      System.out.println("Comment: " + comment);
    }
  }

  private void close() {
    try {
      if (resSet != null) {
        resSet.close(); 
      }
      if (stat != null) {
        stat.close(); 
      }
      if (conn != null) {
        conn.close(); 
      }

    } catch(Exception e) {

    }

  }
}
