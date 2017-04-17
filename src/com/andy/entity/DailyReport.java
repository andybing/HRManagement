package com.andy.entity;

public class DailyReport {

	private String startDate;//起始日期
	private String applicant;//登录人
	private String task; //任务
	private int workTime;//工作量
	private int addTime;//加班时间
	private String pro; //项目
	private String PRP;//PRP阶段
	private int drID;//ID号
	private String deptid;//部门编号
	
	public int getDrID() {
		return drID;
	}
	public void setDrID(int drID) {
		this.drID = drID;
	}
	public String getDeptid() {
		return deptid;
	}
	public void setDeptid(String deptid) {
		this.deptid = deptid;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getApplicant() {
		return applicant;
	}
	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}
	public String getTask() {
		return task;
	}
	public void setTask(String task) {
		this.task = task;
	}
	public int getWorkTime() {
		return workTime;
	}
	public void setWorkTime(int workTime) {
		this.workTime = workTime;
	}
	public int getAddTime() {
		return addTime;
	}
	public void setAddTime(int addTime) {
		this.addTime = addTime;
	}
	public String getPro() {
		return pro;
	}
	public void setPro(String pro) {
		this.pro = pro;
	}
	public String getPRP() {
		return PRP;
	}
	public void setPRP(String pRP) {
		PRP = pRP;
	}
	public int getdrID() {
		return drID;
	}
	public void setdrID(int driD) {
		drID = driD;
	}

}
