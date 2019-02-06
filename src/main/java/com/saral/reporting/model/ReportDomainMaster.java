package com.saral.reporting.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity

@Table(name = "reportDomainMaster")
public class ReportDomainMaster {
	@Id
	@GeneratedValue(generator = "report_Domain_generator")
	@SequenceGenerator(name = "report_Domain_generator", sequenceName = "report_Domain_generator_sequence", initialValue = 1)
	@Column(name = "reportDomainId")
	private Long reportDomainId;

	@Column(name = "DomainUserId")
	private Long domainUserId;

	@Column(name = "DomainRoleId")
	private Long domainRoleId;

	@Column(name = "DomainFilterId")
	private Long domainFilterId;

	@Column(name = "DomainValueId")
	private String domainValueId;

	@ManyToOne(fetch = FetchType.LAZY, targetEntity = ReportUserMaster.class)
	@JoinColumn(name = "DomainUserId", referencedColumnName = "UserDataId", insertable = false, updatable = false)
	private ReportUserMaster reportUserMaster;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "DomainRoleId", referencedColumnName = "ReportRoleId", insertable = false, updatable = false)
	private ReportRoleMaster reportRoleMaster;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "DomainFilterId", referencedColumnName = "reportFilterId", insertable = false, updatable = false)
	private ReportFilterMaster reportFilterMaster;

	public Long getReportDomainId() {
		return reportDomainId;
	}

	public void setReportDomainId(Long reportDomainId) {
		this.reportDomainId = reportDomainId;
	}

	public Long getDomainUserId() {
		return domainUserId;
	}

	public void setDomainUserId(Long domainUserId) {
		this.domainUserId = domainUserId;
	}

	public Long getDomainRoleId() {
		return domainRoleId;
	}

	public void setDomainRoleId(Long domainRoleId) {
		this.domainRoleId = domainRoleId;
	}

	public Long getDomainFilterId() {
		return domainFilterId;
	}

	public void setDomainFilterId(Long domainFilterId) {
		this.domainFilterId = domainFilterId;
	}

	public String getDomainValueId() {
		return domainValueId;
	}

	public void setDomainValueId(String domainValueId) {
		this.domainValueId = domainValueId;
	}

	public ReportUserMaster getReportUserMaster() {
		return reportUserMaster;
	}

	public void setReportUserMaster(ReportUserMaster reportUserMaster) {
		this.reportUserMaster = reportUserMaster;
	}

	public ReportRoleMaster getReportRoleMaster() {
		return reportRoleMaster;
	}

	public void setReportRoleMaster(ReportRoleMaster reportRoleMaster) {
		this.reportRoleMaster = reportRoleMaster;
	}

	public ReportFilterMaster getReportFilterMaster() {
		return reportFilterMaster;
	}

	public void setReportFilterMaster(ReportFilterMaster reportFilterMaster) {
		this.reportFilterMaster = reportFilterMaster;
	}

	@Override
	public String toString() {
		return "ReportDomainMaster [reportDomainId=" + reportDomainId + ", domainUserId=" + domainUserId
				+ ", domainRoleId=" + domainRoleId + ", domainFilterId=" + domainFilterId + ", domainValueId="
				+ domainValueId + ", reportUserMaster=" + reportUserMaster + ", reportRoleMaster=" + reportRoleMaster
				+ ", reportFilterMaster=" + reportFilterMaster + "]";
	}
	
	
	

}
