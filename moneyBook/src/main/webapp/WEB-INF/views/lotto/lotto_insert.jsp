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

<!-- Page level custom scripts -->
<script src="/resources/_js/datatables-demo.js"></script>

</head>
<script>
$(document).ready(function(){
	 var reqList = '${reqList }';
});

</script>
<body>
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">Tables</h1>
	<p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>회차</th>
							<th>당첨번호 1</th>
							<th>당첨번호 2</th>
							<th>당첨번호 3</th>
							<th>당첨번호 4</th>
							<th>당첨번호 5</th>
							<th>당첨번호 6</th>
							<th>보너스</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>회차</th>
							<th>당첨번호 1</th>
							<th>당첨번호 2</th>
							<th>당첨번호 3</th>
							<th>당첨번호 4</th>
							<th>당첨번호 5</th>
							<th>당첨번호 6</th>
							<th>보너스</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="lottoNumList" items="${lottoNumList }" varStatus="status" >
							<tr>
								<td>${lottoNumList.drwNo }</td>
								<td>${lottoNumList.drwtNo1 }</td>
								<td>${lottoNumList.drwtNo2 }</td>
								<td>${lottoNumList.drwtNo3 }</td>
								<td>${lottoNumList.drwtNo4 }</td>
								<td>${lottoNumList.drwtNo5 }</td>
								<td>${lottoNumList.drwtNo6 }</td>
								<td>${lottoNumList.bnusNo }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid -->
</body>
</html>