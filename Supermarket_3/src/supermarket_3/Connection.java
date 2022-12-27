package supermarket_3;

import java.sql.DriverManager;
import java.sql.SQLException;

public class Connection {
    java.sql.Connection con;
    public java.sql.Connection getConnection(){
        try{
            con = DriverManager.getConnection("jdbc:mysql://localhost/db_supermarket","root", "");
        } catch(SQLException se){
            System.out.println("No Connection open");
        } catch(Exception ex){
            System.out.println("Cound not open connection");
        }
        
        return con;
    }
}

