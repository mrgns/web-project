package mybeans;

import java.sql.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Jobs")
public class Jobs 
{
	
	@Id
	@Column(name="reference_id")
	private String reference_id;
	
	@Column(name="title")
	private String title;
	
	@Column(name="start_date")
	private String start_date;
	
	@Column(name="end_date")
	private String end_date;
	
	@Column(name="advertiser")
	private String advertiser;
	
	@Column(name="place")
	private String place;
	
	@Column(name="country")
	private String country;
	
	@Column(name="salary")
	private int salary;
	
	@Column(name="time_period")
	private String time_period;
	
	@Column(name="description")
	private String description;
	
	public Jobs() 
	{
		reference_id="";
		title ="";
		start_date="";
		end_date="";
		advertiser="";
		place="";
		country="";
		salary=0;
		time_period="";
		description="";
	}
			

	public String getReference_id() {
		return reference_id;
	}

	public void setReference_id(String reference_id) {
		this.reference_id = reference_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getAdvertiser() {
		return advertiser;
	}

	public void setAdvertiser(String advertiser) {
		this.advertiser = advertiser;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getTime_period() {
		return time_period;
	}

	public void setTime_period(String time_period) {
		this.time_period = time_period;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
