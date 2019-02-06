package com.saral.reporting.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.saral.reporting.model.ReportDomainMaster;


public interface ReportDomainRepository extends JpaRepository<ReportDomainMaster,Long>  {

	ReportDomainMaster findByReportDomainId(Long reportDomainId);

	void deleteByReportDomainId(Long reportDomainId);
	List<ReportDomainMaster> findByDomainUserId(Long domainUserId);
	void deleteByDomainUserIdAndDomainFilterId(Long domainUserId, Long domainFilterId);
}
