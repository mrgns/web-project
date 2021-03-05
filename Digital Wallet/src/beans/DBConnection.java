package beans;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private Connection dbconnection;
	public DBConnection()
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbconnection=DriverManager.getConnection("jdbc:mysql://localhost:3306/walletdb?user=root&password=Hello@dude1");
			}
		catch(Exception e)
		{
		System.out.println(e);
		}
	}
	public Connection getDbconnection() 
	{
		return dbconnection;
	}
}
