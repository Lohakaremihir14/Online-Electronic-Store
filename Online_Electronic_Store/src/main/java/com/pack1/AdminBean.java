package com.pack1;

import java.io.Serializable;

public class AdminBean implements Serializable
{
	private String aUserName,aPassword,aFname,aLname,aAddress,aMailId,aPhoneNo;

	public String getaUserName() {
		return aUserName;
	}

	public void setaUserName(String aUserName) {
		this.aUserName = aUserName;
	}

	public String getaPassword() {
		return aPassword;
	}

	public void setaPassword(String aPassword) {
		this.aPassword = aPassword;
	}

	public String getaFname() {
		return aFname;
	}

	public void setaFname(String aFname) {
		this.aFname = aFname;
	}

	public String getaLname() {
		return aLname;
	}

	public void setaLname(String aLname) {
		this.aLname = aLname;
	}

	public String getaAddress() {
		return aAddress;
	}

	public void setaAddress(String aAddress) {
		this.aAddress = aAddress;
	}

	public String getaMailId() {
		return aMailId;
	}

	public void setaMailId(String aMailId) {
		this.aMailId = aMailId;
	}

	public String getaPhoneNo() {
		return aPhoneNo;
	}

	public void setaPhoneNo(String aPhoneNo) {
		this.aPhoneNo = aPhoneNo;
	}
	
	public AdminBean() {}
}
