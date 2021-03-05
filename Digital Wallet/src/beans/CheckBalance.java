package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import beans.DBConnection;

public class CheckBalance {
	Accounts ac=new Accounts();
	Wallet wall=new Wallet();
	
	public void wallet()
	{
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try
		{
			DBConnection dbc=new DBConnection();
			con=dbc.getDbconnection();
		
			pst=con.prepareStatement("select * from wallet where walletid=?;");
			pst.setInt(1, wall.getId());
			rs=pst.executeQuery();  
			if(rs.next())
			{
				wall.setBalance(rs.getDouble("balance"));
				wall.setAccnm(rs.getNString("usernm"));
			}
			else
			{
				wall.setBalance(0.0);
			}
			}
		catch(Exception ex)
		{
		System.out.println(ex);
	}
	}
	
	public void bank()
	{
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try
		{
			DBConnection dbc=new DBConnection();
			con=dbc.getDbconnection();
		
			pst=con.prepareStatement("select * from accounts where accnm=?;");
			pst.setString(1, ac.getAccnm());
			rs=pst.executeQuery();  
			if(rs.next())
			{
				ac.setBalance(rs.getDouble("balance"));
				
			}
			else
			{
				ac.setBalance(0.0);
			}
			}
		catch(Exception ex)
		{
		System.out.println(ex);
	}
	}
}
