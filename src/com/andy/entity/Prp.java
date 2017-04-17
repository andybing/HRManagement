package com.andy.entity;

public class Prp {
	private String prpId;
	private String prpShort;
	private String prpName;
	private String other;
	public Prp(){}
	public Prp(String prpShort,String prpName,String prpId){
		this.prpShort = prpShort;
		this.prpName = prpName;
		this.prpId = prpId; 
	}
	public Prp(String prpShort,String prpName,String other,String prpId){
		this.prpName = prpName;
		this.prpShort = prpShort;
		this.other = other;
		this.prpId = prpId;
	}
	public Prp(String prpShort,String prpName){
		this.prpShort = prpShort;
		this.prpName = prpName;
	}
	public String getPrpShort() {
		return prpShort;
	}
	public void setPrpShort(String prpShort) {
		this.prpShort = prpShort;
	}
	public String getPrpName() {
		return prpName;
	}
	public void setPrpName(String prpName) {
		this.prpName = prpName;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getPrpId() {
		return prpId;
	}
	public void setPrpId(String prpid) {
		this.prpId = prpid;
	}
	
}
