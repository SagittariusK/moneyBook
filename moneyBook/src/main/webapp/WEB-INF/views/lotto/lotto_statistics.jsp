<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="./include/lotto_top.jsp" %>
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
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>당첨번호</th>
							<th>횟수</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>당첨번호</th>
							<th>횟수</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="statisticsList" items="${statisticsList }" varStatus="status" >
							<tr>
								<td id="detailmvoe_${statisticsList.LNUM }">${statisticsList.LNUM }</td>
								<td>${statisticsList.CNT }</td>
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

	var reqList = '${reqList }';
	$('#dataTable_filter').addClass('d-none');

	$('td[id^=detailmvoe_').css('cursor', 'pointer');

	$('td[id^=detailmvoe_').click(function(){
		var number = $(this).attr('id').substring(11);
		window.open('/lotto/popup/lotto_statisticsDetail.do?number=' + number);
	});
	
});

</script>
<%@ include file="./include/lotto_footer.jsp" %>