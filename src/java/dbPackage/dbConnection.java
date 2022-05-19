package dbPackage;

/*
    DONT TOUCH THIS PACKAGE, COZ YOU HAVEN'T GOT YOUR DATABASE UP AND RUNNING
    TOUCH THIS AND BECOME A FROG
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnection {

    protected static Connection initializeDatabase()
            throws SQLException, ClassNotFoundException {
        // Initialize all the information regarding
        // Database Connection
        String dbDriver = "com.mysql.jdbc.Driver";

        Class.forName(dbDriver);
        Connection con;
        con = DriverManager.getConnection("jdbc:mysql://localhost/webdevproject", "root", "");
        
        System.out.print("DB Connected");
        return con;
        
    }
}
