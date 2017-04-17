package com.andy.entity;

public class Department {
	int dept_level;
	String dept_name;
	String dept_up;
	String dept_id;
	public Department(){}
	public Department(int deptLevel, String deptName, String deptUp,
			String deptId) {
		super();
		dept_level = deptLevel;
		dept_name = deptName;
		dept_up = deptUp;
		dept_id = deptId;
	}
	public Department(String dept_name,String dept_up){
		this.dept_name = dept_name;
		this.dept_up = dept_up;
	}
	public int getDept_level() {
		return dept_level;
	}
	public void setDept_level(int deptLevel) {
		dept_level = deptLevel;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String deptName) {
		dept_name = deptName;
	}
	public String getDept_up() {
		return dept_up;
	}
	public void setDept_up(String deptUp) {
		dept_up = deptUp;
	}
	public String getDept_id() {
		return dept_id;
	}
	public void setDept_id(String deptId) {
		dept_id = deptId;
	}
	
}
