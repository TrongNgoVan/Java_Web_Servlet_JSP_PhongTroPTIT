
package context;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class DBContext {

     public Connection getConnection()throws Exception {
        String url = "jdbc:sqlserver://DESKTOP-GTFOQ96\\SQLEXPRESS:1433;databaseName=phongtro;user=sa;password=1234;encrypt=false";

        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url);
    }   
 
   
    public static void main(String[] args){
        try{
            System.out.println(new DBContext().getConnection());
        }catch(Exception e){
           
    }
    } 
}
    

 