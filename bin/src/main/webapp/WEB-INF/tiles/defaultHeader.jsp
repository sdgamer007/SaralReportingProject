<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		
		
		<div id="navbar" class="navbar navbar-default ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<div class="navbar-header pull-left">
				<a href="index.html" class="navbar-brand"> <small> <i
						class="fa fa-leaf"></i> Saral Haryana - Reporting Toolshfggfgfgfgf
				</small>
				</a>
			</div>

			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">

					<li class="light-blue dropdown-modal"><a
						data-toggle="dropdown" href="#" class="dropdown-toggle"> <img
							class="nav-user-photo" src="assets/images/avatars/user.jpg"
							alt="Jason's Photo" /> <span class="user-info"> <small>Welcome,</small>
								${user_name}
						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#"> <i class="ace-icon fa fa-cog"></i>
									Settings
							</a></li>
							<li><a href="#" onclick="roles();"> <i
									class="ace-icon fa fa-user"></i> Roles
							</a></li>

							<li class="divider"></li><c:url value="/logout" var="logoutUrl" />

							<li><a href="${logoutUrl}"><i class="ace-icon fa fa-power-off"></i>
									Logout
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.navbar-container -->
	</div>
	
	
	
	
	<script>
			function roles(){
				 var $select = $("#lrole");                         
			        var responseJson = '<%=session.getAttribute("hm")%>';
			var rp = JSON.parse(responseJson);
			$select.find("ul").remove();
			$.each(rp, function(key, value) {
				$("<ul>").text(value).appendTo($select);
			});
			$("#roleModal").modal();
		}
	</script>

	<div id="roleModal" class="modal fade" role="dialog"
		style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header header-border'">
					<button type="button" class="close" data-dismiss="modal">
						X</button>
					<h4 class="modal-title">Assigned Role to the user-
						${user_name}</h4>
				</div>
				<div class="modal-body">

					<div class="col-lg-12">
						<li id="lrole" class="list-group-item">

							<ul>

							</ul>

						</li>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">
						<i class="fa fa-times-circle"></i>&nbsp;Close
					</button>
				</div>
			</div>

		</div>
	</div>
		