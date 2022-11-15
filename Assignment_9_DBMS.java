import java.sql.*;
import java.util.*;

public class Assignment_9_DBMS {
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost: 3307/dml_commands","root", "your_password");
            System.out.println("Connection Succesfully");
            Statement sm = c.createStatement();
            int ch;
            do {
                System.out.println("Enter Chice \n 1.Insert \n 2.Select \n3.Update \n 4.Delete \n 5.Exit");
                ch=s.nextInt();
                switch (ch) {
                    case 1:
                        String sql = "INSERT INTO customer VALUES(10,'Garry',5000)";
                        sm.executeUpdate(sql);
                        System.out.println("Record is Inserted");
                        break;

                    case 2:
                        String sql1 = "select * from customer";
                        ResultSet rs = sm.executeQuery(sql1);
                        while (rs.next()) {
                            String name1 = rs.getString("name");
                            int salary = rs.getInt("salary");
                            System.out.print("name " + name1);
                            System.out.println(", salary: " + salary);
                        }
                        break;
                    case 3:
                        String sql2 = "update customer set name='Harish' where name='Garry' ";
                        sm.executeUpdate(sql2);
                        System.out.println("Record is updated");
                        break;
                    case 4:
                        String sql3 = "delete from customer where name='Harish'";
                        sm.executeUpdate(sql3);
                        System.out.println("Record is deleted");
                        break;
                }
            } while (ch < 5);
            s.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}