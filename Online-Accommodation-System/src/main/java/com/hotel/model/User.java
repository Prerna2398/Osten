package com.hotel.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "USER")
public class User {

	@Id
	@Column(columnDefinition="varchar(10)")
    @GeneratedValue(generator = "generator")
    @GenericGenerator(name = "generator", 
      parameters = @Parameter(name = "prefix", value = "U"), 
      strategy = "com.hotel.IdGenerator.MyGenerator")
	private String uid;
	@NotNull
	private String fname;
	@NotNull
	@Column
	private String lname;
	@NotNull
	@Column
	private String SecurityQuestion;
	@NotNull
	@Column
	private String Answer;
	@NotNull
	@Column
	private String Gender;
	@NotNull
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column
	private String BDate;
	@NotNull
	@Pattern(regexp = ".+@.+\\..+", message = "Wrong email!")
	@Column(unique=true)
	private String email;
	@NotNull
	@Column
	@Pattern(regexp ="^(?=.*\\d).{8,13}$")
	private String password;
	@NotNull
	@Column(unique=true,length=10)
	private double phone_no;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getSecurityQuestion() {
		return SecurityQuestion;
	}

	public void setSecurityQuestion(String securityQuestion) {
		SecurityQuestion = securityQuestion;
	}

	public void setBDate(String bDate) {
		BDate = bDate;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getAnswer() {
		return Answer;
	}

	public void setAnswer(String answer) {
		Answer = answer;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public double getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(double phone_no) {
		this.phone_no = phone_no;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getBDate() {
		return BDate;
	}

}
