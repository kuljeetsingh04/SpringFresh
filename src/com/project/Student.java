package com.project;

import java.util.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Student {

	@NotNull
	@Pattern(regexp = "[^0-9]*")
	private String name;

//	@NotEmpty
	@Pattern(regexp="[a-z A-Z 0-9]*")
	@Size(min=2, max= 20)
	private String pwd;

	
	// @Pattern(regexp="[1-9][0-9]{9}") //Pattern matching for a number would
	// work if it is taken as a string and not as a Long variable.
	@Min(10000)
	@NotNull
	private long mobile;

	@NotNull
	@Pattern(regexp = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")
	private String email;

	@NotNull
	@Past
	private Date DOB;

	
	// @Size(min = 2, max = 20,
	// message="Value for hobby field must be between {min} and {max} characters")
	@Size(min = 2, max = 20)
	@IsValidHobby(listOfValidHobbies = "Cricket|Music|Hockey|Development|Gaming|Badminton")
	@NotNull
	private String hobby;

	public String getHobby() {
		return hobby;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public Date getDOB() {
		return DOB;
	}

	public void setDOB(Date dOB) {
		DOB = dOB;
	}

	private Address sAddress;

	public String getName() {
		return name;
	}

	public void setName(String name) {

		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Address getsAddress() {
		return sAddress;
	}

	public void setsAddress(Address sAddress) {
		this.sAddress = sAddress;
	}

}
