package com.saral.reporting.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import com.saral.reporting.model.ReportUserMaster;


public interface ReportUserMasterRepository extends JpaRepository<ReportUserMaster,Long>  {

	ReportUserMaster findByuserDataId(Long userDataId);

	void deleteByuserDataId(Long userDataId);
}
