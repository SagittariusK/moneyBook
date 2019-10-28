<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">Tables</h1>
	<p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">DataTables</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive" style="overflow:hidden;">
				<table class="table table-bordered" id="statistics_dataTable" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>당첨번호</th>
							<th>당첨날짜</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>당첨번호</th>
							<th>당첨날짜</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="statisticsList" items="${statisticsList }">
							<tr id="tr_${statisticsList.LNUM }" class="d-none">
								<c:forEach var="lottoNumList" items="${lottoNumList }">
									<c:if test="${statisticsList.drwtNo1 eq lottoNumList.drwtNo1 }">
										<td>${lottoNumList.DRWTNO1 }</td>
										<td>${lottoNumList.reg_date }</td>
									</c:if>
									<c:if test="${statisticsList.drwtNo2 eq lottoNumList.drwtNo2 }">
										<td>${lottoNumList.DRWTNO2 }</td>
										<td>${lottoNumList.reg_date }</td>
									</c:if>
									<c:if test="${statisticsList.drwtNo3 eq lottoNumList.drwtNo3 }">
										<td>${lottoNumList.DRWTNO3 }</td>
										<td>${lottoNumList.reg_date }</td>
									</c:if>
									<c:if test="${statisticsList.drwtNo4 eq lottoNumList.drwtNo4 }">
										<td>${lottoNumList.DRWTNO4 }</td>
										<td>${lottoNumList.reg_date }</td>
									</c:if>
									<c:if test="${statisticsList.drwtNo5 eq lottoNumList.drwtNo5 }">
										<td>${lottoNumList.DRWTNO5 }</td>
										<td>${lottoNumList.reg_date }</td>
									</c:if>
									<c:if test="${statisticsList.drwtNo6 eq lottoNumList.drwtNo6 }">
										<td>${lottoNumList.DRWTNO6 }</td>
										<td>${lottoNumList.reg_date }</td>
									</c:if>
									<c:if test="${statisticsList.LNUM eq lottoNumList.bnusNo }">
										<td>${lottoNumList.bnusNo }</td>
										<td>${lottoNumList.reg_date }</td>
									</c:if>
								</c:forEach>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid -->
<script>
$(document).ready(function(){
	var table = $('#dataTable').DataTable({
		"lengthMenu": [ 10, 25, 50 ],
		"columnDefs": [
			{ "width": "20%", "targets": 0 },
			{ "width": "20%", "targets": 1 }
		  ]
	});

	$('#dataTable_filter').addClass('d-none');

	$('tr[id^=tr_]').addClass('d-none');
	var number = '${map.number }';
	$('#tr_' + number).removeClass('d-none');

	alert(number);
	self.close();
});

</script>
