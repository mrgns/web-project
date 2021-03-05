package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.coyote.Response;


public class MSEDC {

	String cusnm,issue_date;
	String cusno,walletid;
	double amt;
	String accno;
	int result=0;
	String status="failed";
	public MSEDC()
	{
		cusno="";
		accno="";
		cusnm="";
		issue_date="";
		walletid="";
		amt=0.0;
	}
	
	public String payBill()
	{
		Connection con;
		PreparedStatement pst;
		ResultSet rs,res;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/walletdb?user=root&password=Hello@dude1");
		
			pst=con.prepareStatement("select * from MSEDC where cusno=?;");
			pst.setString(1, cusno);
			rs=pst.executeQuery();  
			if(rs.next())
			{
				double payment=Double.parseDouble(rs.getString("payment"));
				String date=rs.getString("issue_date");
				
				if(issue_date.equals(date) && payment == amt)
				{
					pst=con.prepareStatement("update wallet set balance=balance-? where walletid=?");
					pst.setDouble(1, amt);
					pst.setString(2, walletid);
					result=pst.executeUpdate();
					
					if(amt>1000)
					{
						int cashback=50;
						pst=con.prepareStatement("update wallet set balance=balance+? where walletid=?");
						pst.setDouble(1, cashback);
						pst.setString(2, walletid);
						int cat=pst.executeUpdate();
					
					}
					
					pst=con.prepareStatement("select * from wallet where walletid=?");
					pst.setString(1, walletid);
					res=pst.executeQuery();
					if(res.next())
					{
						double amount=Double.parseDouble(res.getString("balance"));
						pst=con.prepareStatement("insert into transaction values(?,?,now(),'Withdrawal',?,?)");
						pst.setString(1, walletid);
						pst.setString(2, res.getString("name"));
						pst.setDouble(3, amt);
						pst.setDouble(4, amount);
						int trans=pst.executeUpdate();
					
					if(trans>0)
					{
							result=0;
							pst=con.prepareStatement("update accounts set balance=balance+? where accno=?");
							pst.setDouble(1, amt);
							pst.setString(2, accno);
							int result=pst.executeUpdate();
							if(result !=0)
							{
								status="Success";
							}
							else
							{
								status="failed";
							}
					 }
				}
				else
				{
					status="Low Balance";
				}
			}
			status="Customer No Not Found...";
		}
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return status;
	}
	
	
	
	public String getAccno() {
		return accno;
	}

	public void setAccno(String accno) {
		this.accno = accno;
	}

	public String getCusnm() {
		return cusnm;
	}

	public void setCusnm(String cusnm) {
		this.cusnm = cusnm;
	}

	public String getIssue_date() {
		return issue_date;
	}

	public void setIssue_date(String issue_date) {
		this.issue_date = issue_date;
	}

	public String getCusno() {
		return cusno;
	}

	public void setCusno(String cusno) {
		this.cusno = cusno;
	}

	public String getWalletid() {
		return walletid;
	}

	public void setWalletid(String walletid) {
		this.walletid = walletid;
	}

	public double getAmt() {
		return amt;
	}

	public void setAmt(double amt) {
		this.amt = amt;
	}
	
}
