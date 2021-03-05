package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MobileRecharge3 {
	String id,mob,company;
	double amt;
	String status="";
	public MobileRecharge3()
	{
		id="";
		mob="";
		company="";
		amt=0.0;
	}
	
	public String payment()
	{
		Connection con;
		PreparedStatement pst;
		ResultSet rs,result;
		try
		{
			DBConnection dbc=new DBConnection();
			con=dbc.getDbconnection();
			pst=con.prepareStatement("select * from accounts where accnm=?;");
			pst.setString(1, company);
			rs=pst.executeQuery();
			while(rs.next())
			{
			String accno=rs.getString("accno");
			pst=con.prepareStatement("update wallet set balance=balance-? where walletid=?");
			pst.setDouble(1, amt);
			pst.setString(2, id);
			int res=pst.executeUpdate();
			
			if(amt>1000)
			{
				int cashback=50;
				pst=con.prepareStatement("update wallet set balance=balance+? where walletid=?");
				pst.setDouble(1, cashback);
				pst.setString(2, id);
				int cat=pst.executeUpdate();
			
			}
			
			pst=con.prepareStatement("select * from wallet where walletid=?");
			pst.setString(1, id);
			result=pst.executeQuery();
			if(result.next())
			{
				double amount=Double.parseDouble(result.getString("balance"));
				pst=con.prepareStatement("insert into transaction values(?,?,now(),'Withdrawal',?,?)");
				pst.setString(1, id);
				pst.setString(2, result.getString("name"));
				pst.setDouble(3, amt);
				pst.setDouble(4, amount);
				int trans=pst.executeUpdate();
			}
			
			if(res>0)
			{
				res=0;
				pst=con.prepareStatement("update accounts set balance=balance+? where accno=?");
				pst.setDouble(1, amt);
				pst.setString(2, accno);
				res=pst.executeUpdate();
				
				if(res>0)
					status="Success";
				else
					status="failed";
			}
			else
				status="failed";
			}
		}
		catch(Exception e)
		{
			status=e.getMessage();
		}
		return status;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMob() {
		return mob;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public double getAmt() {
		return amt;
	}

	public void setAmt(double amt) {
		this.amt = amt;
	}

	
}
