package com.saral.reporting.controller;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.saral.reporting.model.ReportDomainMaster;
import com.saral.reporting.service.ReportDomainService;
import com.saral.reporting.service.ReportFilterMasterService;
import com.saral.reporting.service.ReportRoleMasterService;
import com.saral.reporting.service.ReportUserMasterService;
import com.saral.reporting.service.ServiceMasterService;

@Controller
public class ReportDomainController {

	@Autowired
	private ReportDomainService reportDomainService;

	@Autowired
	private ReportUserMasterService reportUserMasterService;
	
	@Autowired
	private ReportRoleMasterService reportRoleMasterService;
	
	@Autowired
	private ReportFilterMasterService reportFilterMasterService;
	
	
	@Autowired
	private ServiceMasterService serviceMasterService;

	@RequestMapping(value = "/DomainMasterlist", method = { RequestMethod.GET})
	public ModelAndView list1() {
		System.out.println("Ashish");
		ModelAndView model = new ModelAndView();
		List<ReportDomainMaster> DomainMasterList = reportDomainService.getAllReportDomainMaster();
		model.addObject("DomainMasterlist", DomainMasterList);
		model.setViewName("reportDomainMasterlist");
		return model;
	}

	@RequestMapping(value = "/addReportDomainMaster", method = {RequestMethod.GET})
	public String addFilterMaster(ModelMap model) {
		
		ReportDomainMaster reportDomainMaster = new ReportDomainMaster();
		model.addAttribute("reportDomainMaster", reportDomainMaster);
		long slc = 6;
		 boolean isActive=true;
			model.addAttribute("DomainUpdate","Add");
		model.addAttribute("userList", reportUserMasterService.getAllReportUserMaster());
		model.addAttribute("roleList", reportRoleMasterService.getAllReportRoleMaster());
		model.addAttribute("filterList", reportFilterMasterService.getAllReportFilterMaster());
		model.addAttribute("organizationList", reportDomainService.getAllReportOrganizations(slc));
		model.addAttribute("districtList", reportDomainService.getAllReportDistrict(slc,isActive));
		model.addAttribute("serviceList", serviceMasterService.getAllServiceMaster());
	
		
		return "reportDomainmasterform";
	}

	@RequestMapping(value = "/updateReportDomainMaster", method = RequestMethod.GET)
	public String editDomaindata(ModelMap model, @RequestParam("id") long id) {

		ReportDomainMaster reportDomainMaster = reportDomainService.getReportDomainId(id);
		System.out.println("Ashish Sharma"+  reportDomainMaster + "id" +id);
		model.addAttribute("reportDomainMaster", reportDomainMaster);
		
		long slc = 6;
		 boolean isActive=true;
		long domainUserId=reportDomainMaster.getDomainUserId();
		model.addAttribute("DomainUpdate","Update");
    	model.addAttribute("reportDomainUserList",reportDomainService.getDomainUserId(domainUserId));
		model.addAttribute("userList", reportUserMasterService.getAllReportUserMaster());
		model.addAttribute("roleList", reportRoleMasterService.getAllReportRoleMaster());
		model.addAttribute("filterList", reportFilterMasterService.getAllReportFilterMaster());
		model.addAttribute("organizationList", reportDomainService.getAllReportOrganizations(slc));
		model.addAttribute("districtList", reportDomainService.getAllReportDistrict(slc,isActive));
		model.addAttribute("serviceList", serviceMasterService.getAllServiceMaster());
		//model.setViewName("reportDomainmasterform");
	
		return "reportDomainmasterform";
	}

	@RequestMapping(value = "/saveReportDomainMaster", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("reportDomainMaster") ReportDomainMaster reportDomainMaster) {
		 
		
		List<String> items = Arrays.asList(reportDomainMaster.getDomainValueId().split("\\s*,\\s*"));
		
		
		Iterator<String> iterator = items.iterator();
		while (iterator.hasNext()) {
			ReportDomainMaster	reportDomainMaster1  = new ReportDomainMaster();
			reportDomainMaster1.setDomainUserId(reportDomainMaster.getDomainUserId());
			reportDomainMaster1.setDomainRoleId(reportDomainMaster.getDomainRoleId());
			reportDomainMaster1.setDomainFilterId(reportDomainMaster.getDomainFilterId());
			  Object element = iterator.next();
			  reportDomainMaster1.setDomainValueId(element.toString());
	reportDomainService.save(reportDomainMaster1);
		}

		return new ModelAndView("redirect:/DomainMasterlist");
	}
	@Transactional
	@RequestMapping(value = "/updateReportDomainMaster", method = RequestMethod.POST)
	public ModelAndView Update(@ModelAttribute("reportDomainMaster") ReportDomainMaster reportDomainMaster) {
		 
		////Delete all id's first
		System.out.println("Ashish Sharma"+  reportDomainMaster + "id " +reportDomainMaster.getDomainUserId() +"id2 " +reportDomainMaster.getDomainRoleId());
		reportDomainService.deleteReportDomainMasterDetail(reportDomainMaster.getDomainUserId(),reportDomainMaster.getDomainRoleId());
		System.out.println("Ashish Sharma completed" );
	////Insert New Id's in the first
		System.out.println(reportDomainMaster.getDomainValueId());
		List<String> items = Arrays.asList(reportDomainMaster.getDomainValueId().split("\\s*,\\s*"));
		
		
		Iterator<String> iterator = items.iterator();
		while (iterator.hasNext()) {
			ReportDomainMaster	reportDomainMaster1  = new ReportDomainMaster();
			  Object element = iterator.next();
			  reportDomainMaster1.setDomainValueId(element.toString());
		
				reportDomainMaster1.setDomainRoleId(reportDomainMaster.getDomainRoleId());
			reportDomainMaster1.setDomainUserId(reportDomainMaster.getDomainUserId());
		
			reportDomainMaster1.setDomainFilterId(reportDomainMaster.getDomainFilterId());
		
	reportDomainService.save(reportDomainMaster1);
		}

		return new ModelAndView("redirect:/DomainMasterlist");
	}
	
	
	
	
	@RequestMapping(value = "/deleteReportDomainMaster", method = RequestMethod.GET)
	public ModelAndView delete(@RequestParam("id") long id) {
		reportDomainService.deleteReportDomainMaster(id);

		return new ModelAndView("redirect:/DomainMasterlist");
	}

	/*// To fetch State Column Name
	@RequestMapping(value = "/userReport", method = { RequestMethod.GET }, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public ResponseEntity<?> showUser(ModelMap model, @RequestParam String action, HttpServletRequest request)
			throws ServletException, IOException {
		if (action.equals("fetchUser")) {
			List<ReportUserMaster> list = reportUserMasterService.getAllReportUserMaster();
			Map<Long, String> mapColList = new HashMap<Long, String>();
			for (ReportUserMaster i : list)
				mapColList.put(i.getUserDataId(), i.getSignNO());

			model.put("UserList", mapColList);
			String jsonCol = new Gson().toJson(mapColList);
			return ResponseEntity.ok(jsonCol);
		}
		return (ResponseEntity<?>) ResponseEntity.ok();
	}

	// To fetch Role Column Name
	@RequestMapping(value = "/RoleReport", method = { RequestMethod.GET }, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public ResponseEntity<?> showRole(ModelMap model, @RequestParam String action, HttpServletRequest request)
			throws ServletException, IOException {
		if (action.equals("fetchRole")) {
		List<ReportRoleMaster> list = reportRoleMasterService.getAllReportRoleMaster();
			Map<Long, String> mapColList = new HashMap<Long, String>();
			for (ReportRoleMaster i : list)
				mapColList.put(i.getReportRoleId(), i.getReportRoleName());

			model.put("RoleList", mapColList);
			String jsonCol = new Gson().toJson(mapColList);
			return ResponseEntity.ok(jsonCol);
		}
		return (ResponseEntity<?>) ResponseEntity.ok();
	}

	
	// To fetch Filter Column Name
		@RequestMapping(value = "/FilterReport", method = { RequestMethod.GET }, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public ResponseEntity<?> showFilter(ModelMap model, @RequestParam String action, HttpServletRequest request)
				throws ServletException, IOException {
			if (action.equals("fetchFilter")) {
				
			List<ReportFilterMaster> list = reportFilterMasterService.getAllReportFilterMaster();
				Map<Long, String> mapColList = new HashMap<Long, String>();
				for (ReportFilterMaster i : list)
					mapColList.put(i.getReportFilterId(), i.getReportFilterName());

				model.put("filterList", mapColList);
				String jsonCol = new Gson().toJson(mapColList);
				return ResponseEntity.ok(jsonCol);
			}
			return (ResponseEntity<?>) ResponseEntity.ok();
		}
		
		
		// To fetch Department Column Name
		@RequestMapping(value = "/DistrictReport", method = { RequestMethod.GET }, produces = "application/json;charset=UTF-8")
		@ModelAttribute("DepartmentList")
		@ResponseBody
		   public ResponseEntity<?> getWebFrameworkList(ModelMap model, @RequestParam String action, HttpServletRequest request)
					throws ServletException, IOException {{
			if (action.equals("fetchDepartment")) {
				long slc = 6;
				List<ReportOrganizations> list = reportDomainService.getAllReportOrganizations(slc);
					Map<Long, String> mapColList = new HashMap<Long, String>();
					for (ReportOrganizations i : list)
						mapColList.put(i.getOrgCode(), i.getOrgName());

					model.put("DepartmentList", mapColList);
					String jsonCol = new Gson().toJson(mapColList);
					return ResponseEntity.ok(jsonCol);
				}
				return (ResponseEntity<?>) ResponseEntity.ok();
		      
		   }
		}
		
		// To fetch District Column Name
				@ModelAttribute("DistirctList")
				   public ResponseEntity<?> getDistrictList(ModelMap model, @RequestParam String action, HttpServletRequest request)
							throws ServletException, IOException {{
					if (action.equals("fetchDistict")) {
						long slc = 6;
						 boolean isActive=true;
						List<ReportDistrict> list = reportDomainService.getAllReportDistrict(slc,isActive);
							Map<Long, String> mapColList = new HashMap<Long, String>();
							for (ReportDistrict i : list)
								mapColList.put(i.getDistrictCode(), i.getDistrictNameEnglish());

							model.put("DistirctList", mapColList);
							String jsonCol = new Gson().toJson(mapColList);
							return ResponseEntity.ok(jsonCol);
						}
						return (ResponseEntity<?>) ResponseEntity.ok();
				      
				   }
				}*/
}

