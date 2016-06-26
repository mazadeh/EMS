
import java.sql.*;

public class Assignment_Delete {

    public static void main (String[]args){
        try {
            String url = "address";                  //url bayad avaz she
            Connection conn = DriverManager.getConnection(url,"","");
            Statement statement = conn.createStatement();
            statement.execute("DELETE FROM Assignment WHERE ID >= 1");
            conn.close();
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        }
    }
}



