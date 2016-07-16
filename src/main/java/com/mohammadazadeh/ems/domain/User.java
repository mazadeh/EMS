package com.mohammadazadeh.ems.domain;

public class User
{
	private String username;
	private String firstname;
	private String lastname;
	private String fatherName;
	private String ssn;
	private String birthday;
	private String phone;
	private String address;
	private String email;
	
	
	public User(String username, String firstname, String lastname, String fatherName, String ssn, String birthday, String phone, String address, String email)
	{
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.fatherName = fatherName;
		this.ssn = ssn;
		this.birthday = birthday;
		this.phone = phone;
		this.address = address;
		this.email = email;
	}
	
	public String getUsername()
	{
		return username;
	}
	
	public String getFirstname()
	{
		return firstname;
	}
	
	public String getLastname()
	{
		return lastname;
	}
	
	public String getFatherName()
	{
		return fatherName;
	}
	
	public String getSsn()
	{
		return ssn;
	}
	
	public String getBirthday()
	{
		return birthday;
	}
	
	public String getPhone()
	{
		return phone;
	}
	
	public String getAddress()
	{
		return address;
	}
	
	public String getEmail()
	{
		return email;
	}
}