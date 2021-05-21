package entitybeans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SkillsJobs")
public class SkillsJobs 
{
	@Id
	@Column(name="Seno")
	private int Seno=0;
	
	@Column(name="Title")
	private String Title="";
	
	@Column(name="Company")
	private String Company="";
	
	@Column(name="Location")
	private String Location="";
	
	@Column(name="Type")
	private String Type="";
	
	@Column(name="Level")
	private String Level="";
	
	@Column(name="YearsExp")
	private String YearsExp="";
	
	@Column(name="Country")
	private String Country="";
	
	@Column(name="Skills")
	private String Skills="";

	public int getSeno() {
		return Seno;
	}

	public void setSeno(int seno) {
		Seno = seno;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getCompany() {
		return Company;
	}

	public void setCompany(String company) {
		Company = company;
	}

	public String getLocation() {
		return Location;
	}

	public void setLocation(String location) {
		Location = location;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	public String getLevel() {
		return Level;
	}

	public void setLevel(String level) {
		Level = level;
	}

	public String getYearsExp() {
		return YearsExp;
	}

	public void setYearsExp(String yearsExp) {
		YearsExp = yearsExp;
	}

	public String getCountry() {
		return Country;
	}

	public void setCountry(String country) {
		Country = country;
	}

	public String getSkills() {
		return Skills;
	}

	public void setSkills(String skills) {
		Skills = skills;
	}
	
	
}