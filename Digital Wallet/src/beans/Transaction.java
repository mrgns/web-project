package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Transaction {
	int walletid;
	String name;
	String trans_date;
	String trans_type;
	double amount,total;
	
	public Transaction()
	{
		walletid=0;
		name="";
		trans_date="";
		trans_type="";
		amount=0.0;
		total=0.0;
	}
	
private ArrayList<Transaction> list;
	
	public ArrayList<Transaction> Report()
	{

		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try
		{
			list=new ArrayList<Transaction>();
			DBConnection dbc=new DBConnection();
			con=dbc.getDbconnection();
		
			pst=con.prepareStatement("select * from transaction where walletid=?;");
			pst.setInt(1, walletid);
			rs=pst.executeQuery(); 
			Transaction trans;
			while(rs.next())
			{
				trans=new Transaction();
				trans.setName(rs.getString("name"));
				trans.setTrans_date(rs.getString("trans_date"));
				trans.setTrans_type(rs.getString("trans_type"));
				trans.setAmount(rs.getDouble("amount"));
				trans.setTotal(rs.getDouble("total"));
				list.add(trans);
			}
			con.close();
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		return list;
	}
	
	

	public ArrayList<Transaction> getList() {
		return list;
	}



	public void setList(ArrayList<Transaction> list) {
		this.list = list;
	}



	public int getWalletid() {
		return walletid;
	}

	public void setWalletid(int walletid) {
		this.walletid = walletid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTrans_date() {
		return trans_date;
	}

	public void setTrans_date(String trans_date) {
		this.trans_date = trans_date;
	}

	public String getTrans_type() {
		return trans_type;
	}

	public void setTrans_type(String trans_type) {
		this.trans_type = trans_type;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}
	

}
