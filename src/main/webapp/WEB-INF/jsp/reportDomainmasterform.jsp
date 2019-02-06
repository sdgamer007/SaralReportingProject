<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>





	<!-- <div class="main-container ace-save-state" id="main-container"> -->

		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
						</li>
						<li class="active">Dashboard</li>
					</ul>
					<!-- /.breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<!-- /.nav-search -->
				</div>

				<div class="page-content">
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
							id="ace-settings-btn">
							<i class="ace-icon fa fa-cog bigger-130"></i>
						</div>

						<div class="ace-settings-box clearfix" id="ace-settings-box">
							<div class="pull-left width-50">
								<div class="ace-settings-item">
									<div class="pull-left">
										<select id="skin-colorpicker" class="hide">
											<option data-skin="no-skin" value="#438EB9">#438EB9</option>
											<option data-skin="skin-1" value="#222A2D">#222A2D</option>
											<option data-skin="skin-2" value="#C6487E">#C6487E</option>
											<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
										</select>
									</div>
									<span>&nbsp; Choose Skin</span>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-navbar" autocomplete="off" /> <label
										class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-sidebar" autocomplete="off" /> <label
										class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-breadcrumbs" autocomplete="off" /> <label
										class="lbl" for="ace-settings-breadcrumbs"> Fixed
										Breadcrumbs</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-rtl" autocomplete="off" /> <label
										class="lbl" for="ace-settings-rtl"> Right To Left
										(rtl)</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-add-container" autocomplete="off" /> <label
										class="lbl" for="ace-settings-add-container"> Inside <b>.container</b>
									</label>
								</div>
							</div>
							<!-- /.pull-left -->

							<div class="pull-left width-50">
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-hover" autocomplete="off" /> <label
										class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-compact" autocomplete="off" /> <label
										class="lbl" for="ace-settings-compact"> Compact
										Sidebar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-highlight" autocomplete="off" /> <label
										class="lbl" for="ace-settings-highlight"> Alt. Active
										Item</label>
								</div>
							</div>
							<!-- /.pull-left -->
						</div>
						<!-- /.ace-settings-box -->
					</div>
					<!-- /.ace-settings-container -->

					<div class="page-header">
						<h1>
							Dashboard
							<!-- <small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									overview &amp; stats
								</small> -->
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<div class="alert alert-block alert-success">
								<button type="button" class="close" data-dismiss="alert">
									<i class="ace-icon fa fa-times"></i>
								</button>

								<i class="ace-icon fa fa-check green"></i> Welcome to <strong
									class="green"> Saral Haryana <small>(v1.0)</small>
								</strong>, Report Designer.
							</div>

							<div class="hr hr32 hr-dotted"></div>
							<div id="hdndivval">
								<input type="hidden" name="deptid"
									value=${department_id
									} id="deptid" />
							</div>
							<div class="container">
							<c:if test="${DomainUpdate=='Add'}">
								<spring:url value="/saveReportDomainMaster" var="saveURL" />
								</c:if>
									<c:if test="${DomainUpdate=='Update'}">
								<spring:url value="/updateReportDomainMaster" var="saveURL" />
								</c:if>
								<h2>Report Domain Master</h2>
								<form:form modelAttribute="reportDomainMaster" method="post"
									action="${saveURL}" cssClass="form">
										
										
									<div class="form-group">
										<div>
											<label><b>User Name</b></label>
											<form:select path="domainUserId" id="Userdetail"
												class="form-control">
												<form:option value="" label="--- Select User ---" />
												<form:options items="${userList}" itemValue="userDataId"
													itemLabel="signNO" />
											</form:select>
										</div>
										<div>

											<label><b>Role Name</b></label>
											<form:select path="domainRoleId" id="UserRoledetail"
												class="form-control">
												<form:option value="" label="--- Select Role ---" />
												<form:options items="${roleList}" itemValue="reportRoleId"
													itemLabel="reportRoleName" />
											</form:select>
										</div>
										<div>
											<label><b>Filter Name</b></label>
											<form:select path="domainFilterId" id="UserRoledetail"
												class="form-control">
												<form:option value="" label="--- Select Role ---" />
												<form:options items="${filterList}"
													itemValue="reportFilterId" itemLabel="reportFilterName"
													/>
											</form:select>

										</div>
										<div>
											<br /> <label><b>Organizations</b></label><br />
											<c:if test="${DomainUpdate=='Update'}">
											<c:forEach var="organization" items="${organizationList}" >
											<input type="checkbox"
															value="${organization.orgCode}"
															name="domainValueId"
											<c:forEach var="DomainList" items="${reportDomainUserList}">
														 <c:if test = "${organization.orgCode==DomainList.domainValueId}">
														checked
														 </c:if> 
																										 
												</c:forEach>
												 /> 
												 <c:out value="${organization.orgName}" />
												 
												 <br/>
												 
											</c:forEach>
										
											</c:if>
												<c:if test="${DomainUpdate=='Add'}">
												<c:forEach var="organization" items="${organizationList}">
												<form:checkbox path="domainValueId"
													value="${organization.orgCode}"
													label="${organization.orgName}" />
												<c:out value="${organization.orgName}" />
												</c:forEach>
												</c:if>
												
										</div>
										<div>
											<br /> <label><b>Districts</b></label> <br />
											<c:if test="${DomainUpdate=='Update'}">
											<c:forEach var="district" items="${districtList}">
												
											<input type="checkbox"
													value="${district.districtCode}"
													name="domainValueId" 
													 
													<c:forEach var="DomainList" items="${reportDomainUserList}">
														 <c:if test = "${district.districtCode==DomainList.domainValueId}">
														checked
														 </c:if> 
														
												</c:forEach>
													/>
												
												<c:out value="${district.districtNameEnglish}" />
											<br/>
												</c:forEach>
											</c:if>
											
											<c:if test="${DomainUpdate=='Add'}">
											<c:forEach var="district" items="${districtList}">
												
												<form:checkbox path="domainValueId"
													value="${district.districtCode}"
													label="${district.districtNameEnglish}" 
													 
													/>
												
												<c:out value="${organization.orgName}" /><br/>
												<form:hidden path="reportDomainId" />
											</c:forEach>
											</c:if>
											
											
												<br />
											
											<br /> <label><b>Service</b></label><br />

										</div>
										<div>
											<c:if test="${DomainUpdate=='Update'}">
											<c:forEach var="service" items="${serviceList}"  varStatus="domainValueId">
												<form:hidden path="reportDomainId" />
											<input type="checkbox" 
													value="${service.serviceCode}"
													name="domainValueId"  
												<c:forEach var="DomainList" items="${reportDomainUserList}">
														 <c:if test = "${service.serviceCode==DomainList.domainValueId}">
														checked
														 </c:if> 
														<c:out value="${DomainList.domainValueId}" /> 
												</c:forEach>	
													/>
												<c:out value="${service.serviceName}" />
											
												<br />
											</c:forEach>
											</c:if>
											
											
											
											<c:if test="${DomainUpdate=='Add'}">
											<c:forEach var="service" items="${serviceList}">
												<form:hidden path="reportDomainId" />
												<form:checkbox path="domainValueId"
													value="${service.serviceCode}"
													label="${service.serviceName}"  />
												<c:out value="${service.serviceName}" />
												<br />
											</c:forEach>
											</c:if>
											<br />
										</div>
									</div>
										<c:if test="${DomainUpdate=='Add'}">
										<button type="submit" class="btn btn-primary">Save</button>
										</c:if>
										<c:if test="${DomainUpdate=='Update'}">
									<button type="submit" class="btn btn-primary">Update</button>
									</c:if>
									
								</form:form>

							</div>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<!-- My having crud -->


		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	<!-- </div> -->
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script src="assets/js/jquery-2.1.4.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
	<script src="assets/js/jquery-ui.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/jquery.easypiechart.min.js"></script>
	<script src="assets/js/jquery.sparkline.index.min.js"></script>
	<!-- 	<!-- <script src="assets/js/jquery.flot.min.js"></script> 
		<script src="assets/js/jquery.flot.pie.min.js"></script>
		<script src="assets/js/jquery.flot.resize.min.js"></script> -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	
	<script type="text/javascript">
	/*  Select State from the ReportUserMasterController*/
	$(document).ready(function(){
	    			$.ajax({
	    				type : "get",
	    				url : "/UserReport",
	    				dataType : 'json',
	    				/* contentType : 'application/json; charset=utf-8', */
	    				data : {
	    					action : "fetchUser"
	    				},
	    				contentType : 'application/json',
	    				success : function(responseJson) {
	    					console.log(responseJson);
	    					var $select = $("#selectedUser");                         
	    				        $select.find("option").remove();
	    				        $("<option>").val(0).text("Please Select User").appendTo($select);		
	    				        $.each(responseJson, function(key, value) {              
	    				            $("<option>").val(key).text(value).appendTo($select); 
	    				        });
	    				}
	    			})
	 			});
	/*  Select Role from the ReportRoleMasterController*/
	$(document).ready(function(){
		$.ajax({
			type : "get",
			url : "/RoleReport",
			dataType : 'json',
			/* contentType : 'application/json; charset=utf-8', */
			data : {
				action : "fetchRole"
			},
			contentType : 'application/json',
			success : function(responseJson) {
				console.log(responseJson);
				var $select = $("#selectedRole");                         
			        $select.find("option").remove();
			        $("<option>").val(0).text("Please Select Role").appendTo($select);		
			        $.each(responseJson, function(key, value) {              
			            $("<option>").val(key).text(value).appendTo($select); 
			        });
			}
		})
		});

	/*  Select Filter from the ReportFilterMasterController*/
	$(document).ready(function(){
		$.ajax({
			type : "get",
			url : "/FilterReport",
			dataType : 'json',
			/* contentType : 'application/json; charset=utf-8', */
			data : {
				action : "fetchfilter"
			},
			contentType : 'application/json',
			success : function(responseJson) {
				console.log(responseJson);
				var $select = $("#selectedFilter");                         
			        $select.find("option").remove();
			        $("<option>").val(0).text("Please Select Filter").appendTo($select);		
			        $.each(responseJson, function(key, value) {              
			            $("<option>").val(key).text(value).appendTo($select); 
			        });
			}
		})
		});
	
	/*  Select Filter from the ReportORganizationMasterController*/
	$(document).ready(function(){
		$.ajax({
			type : "get",
			url : "/FilterOrganization",
			dataType : 'json',
			/* contentType : 'application/json; charset=utf-8', */
			data : {
				action : "fetchOrganization"
			},
			contentType : 'application/json',
			success : function(responseJson) {
				console.log(responseJson);
				var $select = $("#selectedOrganization");                         
			        $select.find("option").remove();
			        $("<option>").val(0).text("Please Select Organization").appendTo($select);		
			        $.each(responseJson, function(key, value) {              
			            $("<option>").val(key).text(value).appendTo($select); 
			        });
			}
		})
		});
	/*  Select District from the ReportDomainController*/
	$(document).ready(function(){
		$.ajax({
			type : "get",
			url : "/FilterDistirct",
			dataType : 'json',
			/* contentType : 'application/json; charset=utf-8', */
			data : {
				action : "fetchDistirct"
			},
			contentType : 'application/json',
			success : function(responseJson) {
				console.log(responseJson);
				var $select = $("#selecteddistrict");                         
			        $select.find("option").remove();
			        $("<option>").val(0).text("Please Select Organization").appendTo($select);		
			        $.each(responseJson, function(key, value) {              
			            $("<option>").val(key).text(value).appendTo($select); 
			        });
			}
		})
		});
	/*  Select Schemes from the ReportDomainController*/
	$(document).ready(function(){
		$.ajax({
			type : "get",
			url : "/FilterSchemes",
			dataType : 'json',
			/* contentType : 'application/json; charset=utf-8', */
			data : {
				action : "fetchScheme"
			},
			contentType : 'application/json',
			success : function(responseJson) {
				console.log(responseJson);
				var $select = $("#selectedScheme");                         
			        $select.find("option").remove();
			        $("<option>").val(0).text("Please Select Organization").appendTo($select);		
			        $.each(responseJson, function(key, value) {              
			            $("<option>").val(key).text(value).appendTo($select); 
			        });
			}
		})
		});
	
	
	
	
		</script>





