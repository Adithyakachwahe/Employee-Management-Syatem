package com.adithya.demo.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Registration {
	@Id
	private int id;
	private String fname;
	private String lname;
	private String phno;
	private String email;
	private String dob;
	private String dept;
	private String address;
	private int sal;
	private String tech;
	
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	public String getTech() {
		return tech;
	}
	public void setTech(String tech) {
		this.tech = tech;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Registration [id=" + id + ", fname=" + fname + ", lname=" + lname + ", phno=" + phno + ", email="
				+ email + ", dob=" + dob + ", dept=" + dept + ", address=" + address + ", sal=" + sal + ", tech=" + tech
				+ "]";
	}
	
	
	
}
