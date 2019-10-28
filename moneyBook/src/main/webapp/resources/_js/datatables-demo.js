// Call the dataTables jQuery plugin
$(document).ready(function() {
	var table = $('#dataTable').DataTable();
	table.column('0:visible').order('desc').draw();
});
