<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>Dashboard - Ace Admin</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/newcss/bootstrap.min.css" />
<link rel="stylesheet"
	href="assets/css/newcss/jquery.dataTables.min.css" />
<link rel="stylesheet"
	href="assets/css/newcss/buttons.dataTables.min.css" />
<link rel="stylesheet" href="assets/css/newcss/pivot.css" />
<link rel="stylesheet"
	href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />


<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />
<link rel="stylesheet" href="assets/css/style.css" />


<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

<link href="assets/css-new/owl.carousel.css" rel="stylesheet">
<link href="assets/css-new/owl.theme.default.min.css" rel="stylesheet">

<link href="assets/css-new/magnific-popup.css" rel="stylesheet">
<link href="assets/css-new/owl.carousel.css" rel="stylesheet">
<style>
#exampleModal {
	margin-top: 15%;
}
</style>
<script src="assets/js/newjs/jquery-3.3.1.js"></script>
<script>
		$(document).ready(function () {
			
			$("#arechart").hide();
			$("#barchart").hide();
			$("#example").show();
			$("#HIGroupedBar").hide();
			$("#piechart").hide();
			$("#stackedbar").hide();
			$(".hitable1").show();
			$("#output").hide();
			CreateTableFromJSON();
			
		$(".area").click(function () {
		
		$("#arechart").show();
		$("#barchart").hide();
		$("#example").hide();
		$("#HIGroupedBar").hide();
		$("#piechart").hide();
		$("#stackedbar").hide();
		$(".hitable1").hide();
		$("#output").hide();
		});
		$(".bar").click(function () {
		
		$("#arechart").hide();
		$("#barchart").show();
		$("#example").hide();
		$("#HIGroupedBar").hide();
		$("#piechart").hide();
		$("#stackedbar").hide();
		$(".hitable1").hide();
		$("#output").hide();
		});
		$(".cross").click(function () {

		$("#arechart").hide();
		$("#barchart").hide();
		$("#example").hide();
		$("#HIGroupedBar").hide();
		$("#piechart").hide();
		$("#stackedbar").hide();
		$(".hitable1").hide();
		$("#output").show();
		});
		$(".groupbar").click(function () {
		
		$("#arechart").hide();
		$("#barchart").hide();
		$("#example").hide();
		$("#HIGroupedBar").show();
		$("#piechart").hide();
		$("#stackedbar").hide();
		$(".hitable1").hide();
		$("#output").hide();
		});
		$(".pie").click(function () {
		
		$("#arechart").hide();
		$("#barchart").hide();
		$("#example").hide();
		$("#HIGroupedBar").hide();
		$("#piechart").show();
		$("#stackedbar").hide();
		$(".hitable1").hide();
		$("#output").hide();
		});
		$(".hitable").click(function () {
		
		$("#arechart").hide();
		$("#barchart").hide();
		$("#example").show();
		$("#HIGroupedBar").hide();
		$("#piechart").hide();
		$("#stackedbar").hide();
		$(".hitable1").show();
		$("#output").hide();
		});
		$(".stackbar").click(function () {
	
		$("#arechart").hide();
		$("#barchart").hide();
		$("#example").hide();
		$("#HIGroupedBar").hide();
		$("#piechart").hide();
		$("#stackedbar").show();
		$(".hitable1").hide();
		$("#output").hide();
		});
		$('#exampleModal').modal({backdrop: 'static', keyboard: false}) 
		setInterval(function () {document.getElementById("click1").click();}, 3500);
		});
		</script>

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>




		<div class="main-content" style="margin-left: 190px;">
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
						<!-- <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn"> -->
						<!-- <i class="ace-icon fa fa-cog bigger-130"></i> -->
						<!-- </div> -->

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
						<!-- <h1> -->
						<!-- Dashboard -->
						<!-- <small> -->
						<!-- <i class="ace-icon fa fa-angle-double-right"></i> -->
						<!-- overview &amp; stats -->
						<!-- </small> -->
						<!-- </h1> -->
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-lg-12 col-md-12 col-xs-12">

							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="carousel slide" data-ride="carousel"
									data-type="multi" data-interval="false" id="myCarousel">
									<div class="carousel-inner">
										<div class="item active">
											<div class="col-md-2 col-sm-6 col-xs-4 cus-carimg">
												<a href="#"><img
													src="assets/images/slider/AreaChart.png"
													class="area img-responsive" alt="Area Chart"
													data-toggle="modal" data-target="#exampleModal"></a>
											</div>
										</div>

										<div class="item">
											<div class="col-md-2 col-sm-6 col-xs-4 cus-carimg">
												<a href="#"><img src="assets/images/slider/BarChart.png"
													class="bar img-responsive" alt="Bar Chart"
													data-toggle="modal" data-target="#exampleModal"></a>
											</div>
										</div>

										<div class="item">
											<div class="col-md-2 col-sm-6 col-xs-4 cus-carimg">
												<a href="#"><img
													src="assets/images/slider/HICrossTable.png"
													class="cross img-responsive" alt="HICrosstable Chart"
													data-toggle="modal" data-target="#exampleModal"></a>
											</div>
										</div>

										<div class="item">
											<div class="col-md-2 col-sm-6 col-xs-4 cus-carimg">
												<a href="#"><img
													src="assets/images/slider/HIGroupedBar.png"
													class="groupbar img-responsive" alt="HIGroupedBar"
													data-toggle="modal" data-target="#exampleModal"></a>
											</div>
										</div>

										<div class="item">
											<div class="col-md-2 col-sm-6 col-xs-4 cus-carimg">
												<a href="#"><img src="assets/images/slider/HITable.png"
													class="hitable img-responsive" alt="HItable"
													data-toggle="modal" data-target="#exampleModal"
													onclick="CreateTableFromJSON()"></a>
											</div>
										</div>

										<div class="item">
											<div class="col-md-2 col-sm-6 col-xs-4 cus-carimg">
												<a href="#"><img src="assets/images/slider/PieChart.png"
													class="pie img-responsive" alt="PieChart"
													data-toggle="modal" data-target="#exampleModal"></a>
											</div>
										</div>
										<div class="item">
											<div class="col-md-2 col-sm-6 col-xs-4 cus-carimg">
												<a href="#"><img
													src="assets/images/slider/StackedBar.png"
													class="stackbar img-responsive" alt="StackedBar"
													data-toggle="modal" data-target="#exampleModal"></a>
											</div>
										</div>
									</div>
									<a class="left carousel-control" href="#myCarousel"
										data-slide="prev"><i class="fa fa-angle-left fa-2x"
										aria-hidden="true"></i></a> <a class="right carousel-control"
										href="#myCarousel" data-slide="next"><i
										class="fa fa-angle-right fa-2x" aria-hidden="true"></i></a>
								</div>
								<!-- Modal for area chart -->
								<div class="modal fade" id="exampleModal" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalLabel"
									aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">

											<h5 class="modal-title" id="exampleModalLabel"></h5>
											<button id="click1" type="button" class="close"
												data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true"></span>
											</button>

											<div class="modal-body">
												<p class="progress-text" style="color: red;">Please wait
													your request has been proccessed ......</p>
												<div class="progress">
													<div class="progress-bar"
														style="width: 100%; background: #97c513;">
														<div class="progress-value">100%</div>
													</div>
												</div>
											</div>
											<div class="modal-footer"></div>
										</div>
									</div>
								</div>
							</div>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->



								<div class="right-content">
									<h5 class="content-heading">Department Chart Data</h5>
									<div class="cuschart">
										<div id="arechart" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
										<div id="barchart" style="min-width: 310px; max-width: 800px; height: 400px; margin: 0 auto"></div>
										<div id="output" style="margin: 10px;"></div>
										<div id="HIGroupedBar" style="min-width: 300px; height: 400px; margin: 0 auto"></div>
										<div class="hitable1 table-responsive" style="min-width: 310px; max-width: 1100px;">

											<table id="example"
												class="table table-striped table-bordered"
												style="width: 100%">

											</table>

											<div class="panel-footer">
												Showing ${number+1} to ${size} of ${totalElements}
												<ul class="pagination pull-right" style="margin: -7px;">
													<c:choose>
														<c:when test="${current == 1}">
															<li class="disabled"><a href="">First</a></li>
															<li class="disabled"><a href="">Prev</a></li>
														</c:when>
														<c:otherwise>
															<li><a href="javascript:void(0);"
																onclick="list('1')">First</a></li>
															<li><a href="javascript:void(0);"
																onclick="list('${current - 1}')">Prev</a></li>
														</c:otherwise>
													</c:choose>
													<c:forEach begin="${begin}" end="${end}" var="i">
														<c:choose>
															<c:when test="${i == current}">
																<li class="active"><a href=""
																	onclick="list('${i}')">${i}</a></li>
															</c:when>
															<c:otherwise>
																<li><a href="javascript:void(0);"
																	onclick="list('${i}')">${i}</a></li>
															</c:otherwise>
														</c:choose>
													</c:forEach>
													<c:choose>
														<c:when test="${current == totalPages}">
															<li class="disabled"><a href="">Next</a></li>
															<li class="disabled"><a href="">Last</a></li>
														</c:when>
														<c:otherwise>
															<li><a href="javascript:void(0);"
																onclick="list('${current + 1}')">Next</a></li>
															<li><a href="javascript:void(0);"
																onclick="list('${totalPages}')">Last</a></li>
														</c:otherwise>
													</c:choose>
												</ul>
											</div>
											
											<div>
												<label>Export Data To :</label>
												<a href="/reportExport"	class="btn btn-default">Excel</a> 
												&nbsp; &nbsp; &nbsp; 
												<a href="/reportExportLocal" class="btn btn-default">CSV</a>
												&nbsp; &nbsp; &nbsp; 
												<a href="/reportExportPDF" class="btn btn-default">PDF</a>
												&nbsp; &nbsp; &nbsp; 
												<a href="/reportExportCSV" class="btn btn-default">CSV Testing</a>

											</div>
										</div>
										<div id="piechart"
											style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
										<div id="stackedbar"
											style="min-width: 310px; height: 400px; margin: 0 auto"></div>

									</div>
								</div>
								<!--Three closig divs has been moved to upper div from here-->

				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>

	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<!-- <script src="assets/js/jquery-3.1.1.js"></script> -->

	<!-- <![endif]-->

	<!--[if IE]>

<![endif]-->
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>


	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
	<script src="assets/js/newjs/bootstrap.min.js"></script>
	<script src="assets/js/newjs/jquery.dataTables.min.js"></script>
	<script src="assets/js/newjs/dataTables.buttons.min.js"></script>
	<script src="assets/js/newjs/buttons.flash.min.js"></script>
	<script src="assets/js/newjs/jszip.min.js"></script>
	<script src="assets/js/newjs/pdfmake.min.js"></script>
	<script src="assets/js/newjs/vfs_fonts.js"></script>
	<script src="assets/js/newjs/buttons.html5.min.js"></script>
	<script src="assets/js/newjs/buttons.print.min.js"></script>
	<script src="assets/js/newjs/pivot.js"></script>


	<script src="assets/js/jquery-ui.custom.min.js"></script>
	<script src="assets/js/chartjs/highcharts.js"></script>
	<script src="assets/js/chartjs/export-data.js"></script>
	<script src="assets/js/chartjs/exporting.js"></script>




	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
			jQuery(function($) {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: ace.vars['old_ie'] ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html',
									 {
										tagValuesAttribute:'data-values',
										type: 'bar',
										barColor: barColor ,
										chartRangeMin:$(this).data('min') || 0
									 });
				});
			
			
			  //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			  //but sometimes it brings up errors with normal resize event handlers
			  $.resize.throttleWindow = false;
			
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
			  var data = [
				{ label: "social networks",  data: 38.7, color: "#68BC31"},
				{ label: "search engines",  data: 24.5, color: "#2091CF"},
				{ label: "ad campaigns",  data: 8.2, color: "#AF4E96"},
				{ label: "direct traffic",  data: 18.6, color: "#DA5430"},
				{ label: "other",  data: 10, color: "#FEE074"}
			  ]
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
					}
				 })
			 }
			 drawPieChart(placeholder, data);
			
			 /**
			 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			 so that's not needed actually.
			 */
			 placeholder.data('chart', data);
			 placeholder.data('draw', drawPieChart);
			
			
			  //pie chart tooltip example
			  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
				/////////////////////////////////////
				$(document).one('ajaxloadstart.page', function(e) {
					$tooltip.remove();
				});
			
			
			
			
				var d1 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d1.push([i, Math.sin(i)]);
				}
			
				var d2 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d2.push([i, Math.cos(i)]);
				}
			
				var d3 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.2) {
					d3.push([i, Math.tan(i)]);
				}
				
			
				var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'220px'});
				$.plot("#sales-charts", [
					{ label: "Domains", data: d1 },
					{ label: "Hosting", data: d2 },
					{ label: "Services", data: d3 }
				], {
					hoverable: true,
					shadowSize: 0,
					series: {
						lines: { show: true },
						points: { show: true }
					},
					xaxis: {
						tickLength: 0
					},
					yaxis: {
						ticks: 10,
						min: -2,
						max: 2,
						tickDecimals: 3
					},
					grid: {
						backgroundColor: { colors: [ "#fff", "#fff" ] },
						borderWidth: 1,
						borderColor:'#555'
					}
				});
			
			
				$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
			
				$('.dialogs,.comments').ace_scroll({
					size: 300
			    });
				
				
				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if(ace.vars['touch'] && ace.vars['android']) {
				  $('#tasks').on('touchstart', function(e){
					var li = $(e.target).closest('#tasks li');
					if(li.length == 0)return;
					var label = li.find('label.inline').get(0);
					if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
				  });
				}
			
				$('#tasks').sortable({
					opacity:0.8,
					revert:true,
					forceHelperSize:true,
					placeholder: 'draggable-placeholder',
					forcePlaceholderSize:true,
					tolerance:'pointer',
					stop: function( event, ui ) {
						//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
						$(ui.item).css('z-index', 'auto');
					}
					}
				);
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
					if(this.checked) $(this).closest('li').addClass('selected');
					else $(this).closest('li').removeClass('selected');
				});
			
			
				//show the dropdowns on top or bottom depending on window height and menu position
				$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
					var offset = $(this).offset();
			
					var $w = $(window)
					if (offset.top > $w.scrollTop() + $w.innerHeight() - 100) 
						$(this).addClass('dropup');
					else $(this).removeClass('dropup');
				});
			
			})
			//carousel script
$('.carousel[data-type="multi"] .item').each(function(){
  var next = $(this).next();
  if (!next.length) {
    next = $(this).siblings(':first');
  }
  next.children(':first-child').clone().appendTo($(this));
  
  for (var i=0;i<4;i++) {
    next=next.next();
    if (!next.length) {
    	next = $(this).siblings(':first');
  	}
    
    next.children(':first-child').clone().appendTo($(this));
  }
});

$('#areasplineimg').click(function(){
$('#chartimg').hide();
$('#splineimg').show();
});

//Area Chart Script

Highcharts.chart('arechart', {
    chart: {
        type: 'areaspline'
    },
    title: {
        text: 'Average fruit consumption during one week'
    },
    legend: {
        layout: 'vertical',
        align: 'left',
        verticalAlign: 'top',
        x: 150,
        y: 100,
        floating: true,
        borderWidth: 1,
        backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'
    },
    xAxis: {
        categories: [
            'Monday',
            'Tuesday',
            'Wednesday',
            'Thursday',
            'Friday',
            'Saturday',
            'Sunday'
        ],
        plotBands: [{ // visualize the weekend
            from: 4.5,
            to: 6.5,
            color: 'rgba(68, 170, 213, .2)'
        }]
    },
    yAxis: {
        title: {
            text: 'Fruit units'
        }
    },
    tooltip: {
        shared: true,
        valueSuffix: ' units'
    },
    credits: {
        enabled: false
    },
    plotOptions: {
        areaspline: {
            fillOpacity: 0.5
        }
    },
    series: [{
        name: 'John',
        data: [3, 4, 3, 5, 4, 10, 12]
    }, {
        name: 'Jane',
        data: [1, 3, 4, 3, 3, 5, 4]
    }]
});

//Bar Chart Script

Highcharts.chart('barchart', {
    chart: {
        type: 'bar'
    },
    title: {
        text: 'Historic World Population by Region'
    },
    subtitle: {
        text: 'Source: <a href="https://en.wikipedia.org/wiki/World_population">Wikipedia.org</a>'
    },
    xAxis: {
        categories: ['Africa', 'America', 'Asia', 'Europe', 'Oceania'],
        title: {
            text: null
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Population (millions)',
            align: 'high'
        },
        labels: {
            overflow: 'justify'
        }
    },
    tooltip: {
        valueSuffix: ' millions'
    },
    plotOptions: {
        bar: {
            dataLabels: {
                enabled: true
            }
        }
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'top',
        x: -40,
        y: 80,
        floating: true,
        borderWidth: 1,
        backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
        shadow: true
    },
    credits: {
        enabled: false
    },
    series: [{
        name: 'Year 1800',
        data: [107, 31, 635, 203, 2]
    }, {
        name: 'Year 1900',
        data: [133, 156, 947, 408, 6]
    }, {
        name: 'Year 2500',
        data: [814, 841, 3714, 727, 31]
    }, {
        name: 'Year 2016',
        data: [1216, 1001, 4436, 738, 40]
    }]
});

//Dynamic Data Tables
/* $(document).ready(function() {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} ); */
//Grouped Bar 

Highcharts.chart('HIGroupedBar', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'World\'s largest cities per 2017'
    },
    subtitle: {
        text: 'Source: <a href="http://en.wikipedia.org/wiki/List_of_cities_proper_by_population">Wikipedia</a>'
    },
    xAxis: {
        type: 'category',
        labels: {
            rotation: -45,
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Population (millions)'
        }
    },
    legend: {
        enabled: false
    },
    tooltip: {
        pointFormat: 'Population in 2017: <b>{point.y:.1f} millions</b>'
    },
    series: [{
        name: 'Population',
        data: [
            ['Shanghai', 24.2],
            ['Beijing', 20.8],
            ['Karachi', 14.9],
            ['Shenzhen', 13.7],
            ['Guangzhou', 13.1],
            ['Istanbul', 12.7],
            ['Mumbai', 12.4],
            ['Moscow', 12.2],
            ['S�o Paulo', 12.0],
            ['Delhi', 11.7],
            ['Kinshasa', 11.5],
            ['Tianjin', 11.2],
            ['Lahore', 11.1],
            ['Jakarta', 10.6],
            ['Dongguan', 10.6],
            ['Lagos', 10.6],
            ['Bengaluru', 10.3],
            ['Seoul', 9.8],
            ['Foshan', 9.3],
            ['Tokyo', 9.3]
        ],
        dataLabels: {
            enabled: true,
            rotation: -90,
            color: '#FFFFFF',
            align: 'right',
            format: '{point.y:.1f}', // one decimal
            y: 10, // 10 pixels down from the top
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    }]
});

//PieChart


Highcharts.chart('piechart', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Browser market shares in January, 2018'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [{
            name: 'Chrome',
            y: 61.41,
            sliced: true,
            selected: true
        }, {
            name: 'Internet Explorer',
            y: 11.84
        }, {
            name: 'Firefox',
            y: 10.85
        }, {
            name: 'Edge',
            y: 4.67
        }, {
            name: 'Safari',
            y: 4.18
        }, {
            name: 'Sogou Explorer',
            y: 1.64
        }, {
            name: 'Opera',
            y: 1.6
        }, {
            name: 'QQ',
            y: 1.2
        }, {
            name: 'Other',
            y: 2.61
        }]
    }]
});

//stackedbar chart


Highcharts.chart('stackedbar', {

    chart: {
        type: 'column'
    },

    title: {
        text: 'Total fruit consumtion, grouped by gender'
    },

    xAxis: {
        categories: ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
    },

    yAxis: {
        allowDecimals: false,
        min: 0,
        title: {
            text: 'Number of fruits'
        }
    },

    tooltip: {
        formatter: function () {
            return '<b>' + this.x + '</b><br/>' +
                this.series.name + ': ' + this.y + '<br/>' +
                'Total: ' + this.point.stackTotal;
        }
    },

    plotOptions: {
        column: {
            stacking: 'normal'
        }
    },

    series: [{
        name: 'John',
        data: [5, 3, 4, 7, 2],
        stack: 'male'
    }, {
        name: 'Joe',
        data: [3, 4, 4, 2, 5],
        stack: 'male'
    }, {
        name: 'Jane',
        data: [2, 5, 6, 2, 1],
        stack: 'female'
    }, {
        name: 'Janet',
        data: [3, 0, 4, 4, 3],
        stack: 'female'
    }]
});


            $(function(){
                        $("#output").pivot(
        [
            {color: "blue", shape: "circle"},
            {color: "red", shape: "triangle"}
        ],
        {
            rows: ["color"],
            cols: ["shape"]
        }
    );
             });
		</script>
	<script>
		function CreateTableFromJSON() {

	        //Code for dynamic datatables
	        var cols = [];
	        var data = ${addresses};
	        var exampleRecord = data[0];
	        
	        //get keys in object. This will only work if your statement remains true that all objects have identical keys
	        var keys = Object.keys(exampleRecord);
	        
	        //for each key, add a column definition
	        keys.forEach(function(k) {
	          cols.push({
	            title: k,
	            data: k
	            //optionally do some type detection here for render function
	          });
	        });
	        
	        //initialize DataTables
	        var table = $('#example').DataTable({
	        	columns: cols,
		        bDestroy: true,
		        "paging": false,
		        "bInfo" : false,
		        "scrollX": true,
		        "scrollY": "500px"
		       
	        });
	        
	        //add data and draw
	        table.clear();
	        table.rows.add(data).draw();
	           
			}
		
			function list(page) {
				modifyData(page);
			}
	
			function modifyData(suffix) {
				$.ajax({
					type : "GET",
					url : '/viewSelectedReportData?page='+suffix,
					data : {
						deptid : $('#deptid').val(),
						reportId : ${reportId},
						service_id : ${service_id},
						sign_no : "\"${sign_no}\"",
						
					},
					success : function(data) {
						//console.log("This is data " +data);
						 //$("#myform").replaceWith(data);
						CreateTableFromJSON();
						window.location.href='/viewSelectedReportData?page='+suffix;
						
					}
				});
			}
		</script>
</body>

