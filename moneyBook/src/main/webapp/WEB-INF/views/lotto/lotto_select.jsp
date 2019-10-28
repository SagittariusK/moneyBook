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
							<th>회차</th>
							<th>추첨날짜</th>
							<th>당첨번호 1</th>
							<th>당첨번호 2</th>
							<th>당첨번호 3</th>
							<th>당첨번호 4</th>
							<th>당첨번호 5</th>
							<th>당첨번호 6</th>
							<th>보너스</th>
							<th>1등당첨자</th>
							<th>총판매금액</th>
							<th>1등 총금액</th>
							<th>1등 인당금액</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>회차</th>
							<th>추첨날짜</th>
							<th>당첨번호 1</th>
							<th>당첨번호 2</th>
							<th>당첨번호 3</th>
							<th>당첨번호 4</th>
							<th>당첨번호 5</th>
							<th>당첨번호 6</th>
							<th>보너스</th>
							<th>1등당첨자</th>
							<th>총판매금액</th>
							<th>1등 총금액</th>
							<th>1등 인당금액</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="lottoNumList" items="${lottoNumList }" varStatus="status" >
							<tr>
								<td>${lottoNumList.drwNo }</td>
								<td>${lottoNumList.drwNoDate }</td>
								<td>${lottoNumList.drwtNo1 }</td>
								<td>${lottoNumList.drwtNo2 }</td>
								<td>${lottoNumList.drwtNo3 }</td>
								<td>${lottoNumList.drwtNo4 }</td>
								<td>${lottoNumList.drwtNo5 }</td>
								<td>${lottoNumList.drwtNo6 }</td>
								<td>${lottoNumList.bnusNo }</td>
								<td>${lottoNumList.firstPrzwnerCo }</td>
								<td>${lottoNumList.totSellamnt }</td>
								<td>${lottoNumList.firstAccumamnt }</td>
								<td>${lottoNumList.firstWinamnt }</td>
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
	var table = $('#dataTable').DataTable();
	table.column('0:visible').order('desc').draw();
	
	$('#dataTable_filter').addClass("d-none");
});

</script>
<%@ include file="./include/lotto_footer.jsp" %>