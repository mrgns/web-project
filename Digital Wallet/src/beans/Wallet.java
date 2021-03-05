package beans;

public class Wallet {
	private int id;
	private String accnm;
	private double balance;
	
	public Wallet()
	{
		id=0;
		accnm="";
		balance=0.0;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccnm() {
		return accnm;
	}
	public void setAccnm(String accnm) {
		this.accnm = accnm;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}

	
}
