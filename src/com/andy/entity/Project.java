package com.andy.entity;

import java.sql.Date;

public class Project {
	private String p_id;
	private String p_start;
	private String p_end;
	private String p_name;
	
	public Project() {}
	public Project(String pId, String pStart, String pEnd, String pName) {
		p_id = pId;
		p_start = pStart;
		p_end = pEnd;
		p_name = pName;
	}
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String pId) {
		p_id = pId;
	}
	public String getP_start() {
		return p_start;
	}
	public void setP_start(String pStart) {
		p_start = pStart;
	}
	public String getP_end() {
		return p_end;
	}
	public void setP_end(String pEnd) {
		p_end = pEnd;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String pName) {
		p_name = pName;
	}
	
}
