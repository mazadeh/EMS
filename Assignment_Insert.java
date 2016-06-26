import java.sql.*;
public class Assignment_Insert {

    public static void main (String[]args){
        try {
            String url = "address";                  //url bayad avaz she
            Connection conn = DriverManager.getConnection(url,"","");
            Statement st = conn.createStatement();
            st.executeUpdate("INSERT INTO Assignment(AssignmentNumber, CourseName, Deadline, Content, Attachment) " +
                    "VALUES (assignmentnumber , 'coursename', 'deadline', 'content', attachment)");
            conn.close();
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        }
    }
}

