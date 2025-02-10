package conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conn 
{
public static final String driver="com.mysql.jdbc.Driver";
public static Connection con;
public static final String url="jdbc:mysql://localhost:3306/e-learning";
public static final String username="root";
public static final String password="root";

public static Connection getCon()
{
	try
	{
		Class.forName(driver);
		 con =DriverManager.getConnection(url,username,password);
		 System.out.println("connection is created");
	}
	catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		return null;
	}
	return con;
}
}
