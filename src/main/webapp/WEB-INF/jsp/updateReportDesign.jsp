<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>




	
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


							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->

					<!-- code for report list by gaurav -->
					<div id="hdndivval">
								<input type="hidden" name="deptid" value=${department_id} id="deptid" />
								<input type="hidden" name="deptid" value=${sign_no} id="sign_no" />
					</div>
					
					<%-- <div class="container">
						<h2>Report List</h2>
						<table class="table table-striped">
							<thead>
								<th scope="row" style="display:none;">#ID</th>
								<th scope="row">Report Name</th>
								<!-- <th scope="row">Category</th> -->
								<th scope="row">Update</th>
								<th scope="row">Delete</th>
							</thead>
							<tbody>
								<c:forEach items="${l2}" var="article">
									<tr>
										<td style="display:none;">${article.reportId }</td>
										<td>${article.reportName}</td>
										<td>${article.category }</td>
										<td><spring:url	value="/article/updateArticle/${listReport.reportId}" var="updateURL" /> 
										<a class="btn btn-primary" href="${updateURL}" role="button">Update</a></td>
										<td><spring:url	value="/deleteSelectedReport?reportId=${article.reportId}&sign_no=${sign_no}" var="deleteURL" /> 
										<a class="btn btn-primary"	href="${deleteURL}" role="button">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<spring:url	value="/DesignReptPage" var="newUrl" /> 
										<a class="btn btn-primary" href="${newUrl}" role="button">Desing New Report</a>
					</div> --%>
					
					<div class="container" style="margin-top: 20px;">
					<spring:url	value="/DesignReptPage" var="newUrl" /> 
										<a class="btn btn-primary" href="${newUrl}" role="button">Desing New Report</a>
						<jsp:useBean id="pagedListHolder" scope="request"
							type="org.springframework.beans.support.PagedListHolder" />
						<c:url value="/fetchReportName?sign_no=${sign_no}" var="pagedLink">
							<c:param name="p" value="~" />
						</c:url>
						<tg:paging pagedListHolder="${pagedListHolder}"
							pagedLink="${pagedLink}" />
						<table class="table table-bordered">
							<tr>
								<th width="20px">Id</th>
								<th>Name</th>
								<th>Delete</th>
								<!-- <th>View</th>
								 <th>Quantity</th>
								<th>Status</th> -->
							</tr>
							<c:forEach items="${pagedListHolder.pageList}" var="item">
								<tr>
									<td>${item.reportId}</td>
									<td>${item.reportName}</td>
									<td><spring:url	value="/deleteSelectedReport?reportId=${item.reportId}&sign_no=${sign_no}" var="deleteURL" /> 
										<a class="btn btn-primary"	href="${deleteURL}" role="button">Delete</a></td>
									<%-- <td><spring:url	value="/viewSelectedReport?reportId=${item.reportId}&sign_no=${sign_no}" var="viewURL" /> 
										<a class="btn btn-primary"	href="${viewURL}" role="button">View</a></td> --%>
									<%-- <td>${item.price}</td>
									<td>${item.quantity}</td>
									<td>${item.status }</td> --%>
								</tr>
							</c:forEach>
						</table>
						<tg:paging pagedListHolder="${pagedListHolder}"
							pagedLink="${pagedLink}" />
					</div>
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->



		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
<!-- 	</div> -->
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
	
