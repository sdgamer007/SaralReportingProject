package com.saral.reporting.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saral.reporting.model.ReportUserMaster;
import com.saral.reporting.repo.ReportUserMasterRepository;
import com.saral.reporting.service.ReportUserMasterService;

@Service
public class ReportUsermasterServiceImpl implements ReportUserMasterService{
	@Autowired
	ReportUserMasterRepository reportUserMasterRepository; 
	@Override
	public List<ReportUserMaster> findAll() {
		List<ReportUserMaster> list = reportUserMasterRepository.findAll();
		return list;
	}
	@Override
	public List<ReportUserMaster> getAllReportUserMaster() {
		return (List<ReportUserMaster>) reportUserMasterRepository.findAll();
	}
	@Override
	public ReportUserMaster getReportUserMasterById(long id) {
		return (ReportUserMaster) reportUserMasterRepository.findByuserDataId(id);
	}
	@Override
	public void saveOrUpdate(ReportUserMaster reportUserMaster) {
		reportUserMasterRepository.save(reportUserMaster);		
	}
	@Override
	public void deleteReportUserMaster(long id) {
		reportUserMasterRepository.deleteByuserDataId(id);
		
	}
	@Override
	public ReportUserMaster save(ReportUserMaster reportUserMaster) {
		return reportUserMasterRepository.save(reportUserMaster);
	}

	

}
