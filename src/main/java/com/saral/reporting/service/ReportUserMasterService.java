package com.saral.reporting.service;

import java.util.List;

import com.saral.reporting.model.ReportUserMaster;

public interface ReportUserMasterService {
	List<ReportUserMaster> findAll();
	
	 public List<ReportUserMaster> getAllReportUserMaster();
	 
	 public ReportUserMaster getReportUserMasterById(long id);
	 
	 public void saveOrUpdate(ReportUserMaster reportRoleMaster);
	 
	 public void deleteReportUserMaster(long id);

	 ReportUserMaster save(ReportUserMaster reportUserMaster);

}
