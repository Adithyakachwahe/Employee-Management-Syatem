package com.adithya.demo.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Leave {
	@Id
	private int eid;
	private String status;
	private String ename;
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	@Override
	public String toString() {
		return "Leave [eid=" + eid + ", status=" + status + ", ename=" + ename + "]";
	}
	
	
}
