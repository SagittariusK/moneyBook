<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Custom styles for this template-->
<link href="/resources/_css/sb-admin-2.min.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template-->
<link rel="stylesheet" href="/resources/fontawesome_web/css/all.min.css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Bootstrap core JavaScript-->
<script src="/resources/jquery/js/jquery-3.4.1.min.js"></script>
<script src="/resources/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/jquery/js/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/resources/_js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="/resources/datatables/jquery.dataTables.js"></script>
<script src="/resources/datatables/dataTables.bootstrap4.min.js"></script>

</head>
<script>
$(document).ready(function(){
	var reqList = '${reqList }';
	$('#dataTable_filter').addClass("d-none");
});

</script>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">KIMS FAMILY <sup>1</sup></div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">
			
			<!-- ************ -->
			<!-- MoneyBook 존 -->
			<!-- ************ -->
			<!-- 그룹 이름 Heading -->
			<div class="sidebar-heading">
				MoneyBook
			</div>

			<!-- Nav Item - Dashboard -->
			<li class="nav-item">
				<a class="nav-link" href="#">
					<i class="fas fa-fw fa-tachometer-alt"></i>
					<span>MoneyBook</span></a>
			</li>
			<!-- ************ -->
			<!-- MoneyBook 끝 -->
			<!-- ************ -->
			
			
			
			<!-- 줄긋기 Divider -->
			<hr class="sidebar-divider">
			
			
			
			<!-- ******** -->
			<!-- Lotto 존 -->
			<!-- ******** -->
			<!-- 그룹 이름 Heading -->
			<div class="sidebar-heading">
				Lotto
			</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item">
				<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLotto" aria-expanded="true" aria-controls="collapseLotto">
					<i class="fas fa-fw fa-cog"></i>
					<span>조회</span>
				</a>
				<div id="collapseLotto" class="collapse" aria-labelledby="headingLotto" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">종류:</h6>
						<a class="collapse-item" href="/lotto/lotto_select.do">회차조회</a>
						<a class="collapse-item" href="/lotto/lotto_statistics.do">번호별 통계</a>
					</div>
				</div>
			</li>
			<!-- ******** -->
			<!-- Lotto 끝 -->
			<!-- ******** -->

			<!-- Nav Item - Utilities Collapse Menu -->
<!-- 			<li class="nav-item"> -->
<!-- 				<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities"> -->
<!-- 					<i class="fas fa-fw fa-wrench"></i> -->
<!-- 					<span>Utilities</span> -->
<!-- 				</a> -->
<!-- 				<div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar"> -->
<!-- 					<div class="bg-white py-2 collapse-inner rounded"> -->
<!-- 						<h6 class="collapse-header">Custom Utilities:</h6> -->
<!-- 						<a class="collapse-item" href="utilities-color.html">Colors</a> -->
<!-- 						<a class="collapse-item" href="utilities-border.html">Borders</a> -->
<!-- 						<a class="collapse-item" href="utilities-animation.html">Animations</a> -->
<!-- 						<a class="collapse-item" href="utilities-other.html">Other</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</li> -->

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
<!-- 			<div class="sidebar-heading"> -->
<!-- 				Addons -->
<!-- 			</div> -->

			<!-- Nav Item - Pages Collapse Menu -->
<!-- 			<li class="nav-item"> -->
<!-- 				<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages"> -->
<!-- 					<i class="fas fa-fw fa-folder"></i> -->
<!-- 					<span>Pages</span> -->
<!-- 				</a> -->
<!-- 				<div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar"> -->
<!-- 					<div class="bg-white py-2 collapse-inner rounded"> -->
<!-- 						<h6 class="collapse-header">Login Screens:</h6> -->
<!-- 						<a class="collapse-item" href="login.html">Login</a> -->
<!-- 						<a class="collapse-item" href="register.html">Register</a> -->
<!-- 						<a class="collapse-item" href="forgot-password.html">Forgot Password</a> -->
<!-- 						<div class="collapse-divider"></div> -->
<!-- 						<h6 class="collapse-header">Other Pages:</h6> -->
<!-- 						<a class="collapse-item" href="404.html">404 Page</a> -->
<!-- 						<a class="collapse-item" href="blank.html">Blank Page</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</li> -->

			<!-- Nav Item - Charts -->
<!-- 			<li class="nav-item"> -->
<!-- 				<a class="nav-link" href="charts.html"> -->
<!-- 					<i class="fas fa-fw fa-chart-area"></i> -->
<!-- 					<span>Charts</span></a> -->
<!-- 			</li> -->

			<!-- Nav Item - Tables -->
<!-- 			<li class="nav-item active"> -->
<!-- 				<a class="nav-link" href="tables.html"> -->
<!-- 					<i class="fas fa-fw fa-table"></i> -->
<!-- 					<span>Tables</span></a> -->
<!-- 			</li> -->

			<!-- Divider -->
<!-- 			<hr class="sidebar-divider d-none d-md-block"> -->

			<!-- Sidebar Toggler (Sidebar) -->
<!-- 			<div class="text-center d-none d-md-inline"> -->
<!-- 				<button class="rounded-circle border-0" id="sidebarToggle"></button> -->
<!-- 			</div> -->

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow">
							<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
								<img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
							</a>
							<!-- Dropdown - User Information -->
							<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#">
									<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
									Profile
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
									<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div>
						</li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
