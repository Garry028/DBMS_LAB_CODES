import  java.sql.*;
public class Assignment_9_DBMS {
    public static void main(String[] args) {

        System.out.println("Sql connection testing");

        try {
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/sql_invoicing","root","password");
            System.out.println("Connection Established");
            Statement st= con.createStatement();
            ResultSet rs=st.executeQuery("select * from clients where city='waco'");
            System.out.println("Client_id \t name \t address \t city \t state \t phone");
            System.out.println("______________________________________________________");
            while (rs.next()){
                System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"  "+rs.getString(4)+"  "+
                        rs.getString(5)+"  "+rs.getString(6));
            }
            con.close();
        }
        catch(Exception e){
            System.out.println("Connection Failed");
        }
    }
}
