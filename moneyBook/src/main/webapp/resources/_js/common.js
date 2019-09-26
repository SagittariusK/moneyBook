//특정 태그 ID로 스크롤 이동
function scrollMove(id){
	var scmove = $('#' + id).offset().top;
	$('html, body').animate( { scrollTop : scmove }, 400 );
}

//특정 인덱스만 바꾸기
String.prototype.replaceReAt = function(index, character) {
	return this.substr(0, index) + character + this.substr(index + 1, this.length);
}

//특정 문자열 전체 바꾸기
String.prototype.replaceAll = function(org, dest) {
    return this.split(org).join(dest);
}

//회원가입 페이지용 상태줄 제어
function realTimeCheck(id, successFlag, text){
	if(null == successFlag){
		successFlag = '';
	}
	if(null == text){
		text = '';
	}
	$('#'+ id.toLowerCase() + '_confirm').removeClass('d-none');
	$('#realTime' + id.toUpperCase() + 'check').removeClass('d-none');
	$('#realTime' + id.toUpperCase() + 'check').removeClass('text-danger');
	$('#realTime' + id.toUpperCase() + 'check').removeClass('text-primary');
	if('S' == successFlag.toUpperCase()){
		$('#realTime' + id.toUpperCase() + 'check').addClass('text-primary');
		$('#realTime' + id.toUpperCase() + 'check').text(text);
		$('#user_' + id.toLowerCase() + '_frag').val('S');
	}else if('F' == successFlag.toUpperCase()){
		$('#realTime' + id.toUpperCase() + 'check').addClass('text-danger');
		$('#realTime' + id.toUpperCase() + 'check').text(text);
		$('#user_' + id.toLowerCase() + '_frag').val('F');
	}else{
		$('#'+ id.toLowerCase() + '_confirm').addClass('d-none');
		$('#realTime' + id.toUpperCase() + 'check').addClass('d-none');
		$('#realTime' + id.toUpperCase() + 'check').text('');
		$('#user_' + id.toLowerCase() + '_frag').val('F');
	}
	
}

function ValueByteCount(id, byteForStandard, substrFlag) {
	var value = $('#'+id).val();
	
	//입력 값 바이트 수 계산
	var stringByteLength = ~-encodeURI(value).split(/%..|./).length;
	if(null != substrFlag && 'Y' == substrFlag.toUpperCase()){
		for(var i = 0; i < stringByteLength; i++){
			if(byteForStandard < stringByteLength){
				value = value.substr(0, value.length-1);
				stringByteLength = ~-encodeURI(value).split(/%..|./).length;
			}else{
				break;
			}
		}
	}
	$('#' + id).val(value);
	
	return stringByteLength;
}

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
			resultData = 'ajax_error';
			if(null != errorFlag && 'Y' == errorFlag.toUpperCase()){
				alert("code = "+ request.status);
				alert("message = " + request.responseText);
				alert("error = " + error);
			}
		}
	});
	
	return resultData;
	
}