function DataAjax2(url, form_id, errorFlag) {
	var resultData;
	
	var data = $("#" + form_id).serialize();
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		dataType : "json",
		data : data,
		cache: false,
		success : function(result) {
			resultData = result;
		},
		error : function(request, status, error) {
			if('Y' == errorFlag){
				alert("code = "+ request.status);
				alert("message = " + request.responseText);
				alert("error = " + error);
			}
		}
	});
	
	return resultData;
	
	
}