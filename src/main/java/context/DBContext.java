package context;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    private final String URL = "jdbc:mysql://localhost:3306/wish?useSSL=false";
    private final String USER = "root";
    private final String PASS = "Danghieu_96 ";

    public Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASS);
    }

    //test Connection
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        DBContext dbContext = new DBContext();
        System.out.println("|---------------------------------------------|");
        System.out.println("|                                             |");
        System.out.println("|  " + dbContext.getConnection() + "  |");
        System.out.println("|                                             |");
        System.out.println("|---------------------------------------------|");
    }
}
