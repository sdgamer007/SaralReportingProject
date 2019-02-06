package com.saral.reporting.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity

@Table(name = "reportM_User_Data")
public class ReportUserMaster {@Id
	@GeneratedValue(generator = "user_Data_generator")
	@SequenceGenerator(name = "user_Data_generator", sequenceName = "user_Data_generator", initialValue = 1)
	@Column(name = "UserDataId")
	private Long userDataId;

	@Column(name = "Sign_No")
	private String signNO;
	
	@Column(name = "Password")
	private String password;
	
	@Column(name = "Role_Id")
	private int roleId;
	
	@Column(name = "Designation")
	private String designation;
	
	@Column(name = "User_Detail")
	private String userDetail;
	
	@Column(name = "Mobilenumber")
	private Long mobilenumber;
	
	@Column(name = "Email")
	private String email;
	
	@Column(name = "Last_modfied_By")
	private String lastModfiedBy;
	
	@Column(name = "Last_Modified_Date")
	private Date lastModifiedDate;
	
	@Column(name = "State_Id")
	private int stateId;
	
	@Column(name = "Change_Password_Date")
	private Date changePasswordDate;
	
	
	@Column(name = "SMS_Send_Flag")
	private boolean smsSendFlag;
	
	@Column(name = "User_Flag")
	private boolean userFlag;
	
	@Column(name = "Last_Activated_Date")
	private Date lastActivatedDate;
	
	@Column(name = "Email_Send_Flag")
	private boolean emailSendFlag;
	
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany (mappedBy="reportUserMaster", targetEntity = ReportDomainMaster.class, cascade = {CascadeType.ALL})
	private List<ReportDomainMaster> reportDomainMaster;
	

	public Long getUserDataId() {
		return userDataId;
	}

	public void setUserDataId(Long userDataId) {
		this.userDataId = userDataId;
	}

	public String getSignNO() {
		return signNO;
	}

	public void setSignNO(String signNO) {
		this.signNO = signNO;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getUserDetail() {
		return userDetail;
	}

	public void setUserDetail(String userDetail) {
		this.userDetail = userDetail;
	}

	public Long getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(Long mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLastModfiedBy() {
		return lastModfiedBy;
	}

	public void setLastModfiedBy(String lastModfiedBy) {
		this.lastModfiedBy = lastModfiedBy;
	}

	public Date getLastModifiedDate() {
		return lastModifiedDate;
	}

	public void setLastModifiedDate(Date lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}

	public int getStateId() {
		return stateId;
	}

	public void setStateId(int stateId) {
		this.stateId = stateId;
	}

	public Date getChangePasswordDate() {
		return changePasswordDate;
	}

	public void setChangePasswordDate(Date changePasswordDate) {
		this.changePasswordDate = changePasswordDate;
	}

	public boolean isSmsSendFlag() {
		return smsSendFlag;
	}

	public void setSmsSendFlag(boolean smsSendFlag) {
		this.smsSendFlag = smsSendFlag;
	}

	public boolean isUserFlag() {
		return userFlag;
	}

	public void setUserFlag(boolean userFlag) {
		this.userFlag = userFlag;
	}

	public Date getLastActivatedDate() {
		return lastActivatedDate;
	}

	public void setLastActivatedDate(Date lastActivatedDate) {
		this.lastActivatedDate = lastActivatedDate;
	}

	public boolean isEmailSendFlag() {
		return emailSendFlag;
	}

	public void setEmailSendFlag(boolean emailSendFlag) {
		this.emailSendFlag = emailSendFlag;
	}

	@Override
	public String toString() {
		return "ReportUserMaster [userDataId=" + userDataId + ", signNO=" + signNO + ", password=" + password
				+ ", roleId=" + roleId + ", designation=" + designation + ", userDetail=" + userDetail
				+ ", mobilenumber=" + mobilenumber + ", email=" + email + ", lastModfiedBy=" + lastModfiedBy
				+ ", lastModifiedDate=" + lastModifiedDate + ", stateId=" + stateId + ", changePasswordDate="
				+ changePasswordDate + ", smsSendFlag=" + smsSendFlag + ", userFlag=" + userFlag
				+ ", lastActivatedDate=" + lastActivatedDate + ", emailSendFlag=" + emailSendFlag + "]";
	}

	public List<ReportDomainMaster> getReportDomainMaster() {
		return reportDomainMaster;
	}

	public void setReportDomainMaster(List<ReportDomainMaster> reportDomainMaster) {
		this.reportDomainMaster = reportDomainMaster;
	}

	
	
}
