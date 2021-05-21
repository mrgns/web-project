package mybeans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="users")
public class Users {

	@Id
	@Column(name="uid")
	private int uid;
	
	@Column(name="usnm")
	private String usernm;
	
	@Column(name="psw")
	private String pswd;
	
	@Column(name="usertype")
	private String usertype;
	
	@Column(name="userstatus")
	private String userstatus;
	
	Users()
	{
		uid=0;
		usernm="";
		pswd="";
		usertype="";
		userstatus="";
	}

	public int getId() {
		return uid;
	}

	public void setId(int uid) {
		this.uid = uid;
	}

	public String getUsernm() {
		return usernm;
	}

	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}

	public String getPswd() {
		return pswd;
	}

	public void setPswd(String pswd) {
		this.pswd = pswd;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public String getUserstatus() {
		return userstatus;
	}

	public void setUserstatus(String userstatus) {
		this.userstatus = userstatus;
	}
	
}
