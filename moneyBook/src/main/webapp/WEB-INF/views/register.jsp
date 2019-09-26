<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>SB Admin - Register</title>
	
	<!-- Custom fonts for this template-->
	<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	
	<!-- Custom styles for this template-->
	<link href="/resources/css/sb-admin.css" rel="stylesheet">
  
</head>

<body class="bg-dark">

	<div class="container">
		<div class="card card-register mx-auto mt-5">
			<div class="card-header">푸쉬 계정 생성</div>
			<div class="card-body">
				<form id="joinForm" name="joinForm">
					<input type="hidden" id="idFlag" value="false">
					<input type="hidden" id="pwFlag" value="false">
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="text" id="user_id" name="id" class="form-control" placeholder="아이디" required="required" autofocus="autofocus">
									<label for="user_id">아이디</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-label-group">
									<select class="form-control" id="user_grade" name="grade">
										<option value="">사용처 선택...</option>
										<option value="1">한큐</option>
										<option value="2">마이한솔</option>
										<option value="99">전체</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="text" id="user_pw" name="pw" class="form-control" placeholder="비밀번호" required="required">
									<label for="user_pw">비밀번호</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="text" id="user_pw" class="form-control" placeholder="비밀번호" required="required">
									<label for="user_pw">비밀번호 확인</label>
								</div>
							</div>
						</div>
					</div>
					<input type="button" id="goRegister" class="btn btn-primary btn-block" value="생성하기">
				</form>
				<div class="text-center">
					<a class="d-block small mt-3" href="#">Login Page</a>
				</div>
			</div>
		</div>
	</div>

<!-- Bootstrap core JavaScript-->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

</body>
<script>
$(document).ready(function() {
	$('#user_grade').css('margin-top', '5px');

	var isSubmitted = false;
	
	function validation_id(){
		var id_regExp = /^[a-z]+[a-z0-9]{4,19}$/g;
		
		var user_id = $('#user_id').val();
		
		user_id = user_id.toLowerCase(); 
		$('#user_id').val(user_id);
		if('' == user_id){
			$('#idFlag').val('false');
			alert('사용할 아이디를 입력하세요.');
			return false;
		}else if(user_id.length < 5 || user_id.length > 20 || !id_regExp.test(user_id)){
			$('#idFlag').val('false');
			alert('아이디는 영문자로 시작하는 5~20자 영문자 또는 숫자이어야 합니다.');
			return false;
		}else{
			$('#idFlag').val('true');
		}
	}

	function validation_password(){
		var pwd_regExp = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{1,50}).{8,50}$/;
		
		var user_pw = $('#user_pw').val();
		var user_pw_confirm = $('#user_pw_confirm').val();
		
		if('' == user_pw || '' == user_pw_confirm){
			$('#idFlag').val('false');
			alert('사용할 비밀번호를 입력하세요.');
			return false;
		}
	
		if(user_pw.length < 8){
			$('#pwFlag').val('false');
			alert('비밀번호는 8자리 이상으로 해주시기 바랍니다.');
		}else if(user_pw != user_pw_confirm){
			$('#pwFlag').val('false');
			alert('비밀번호가 일치하지 않습니다.');
		}else if(!pwd_regExp.test(user_pw)){
			$('#pwFlag').val('false');
			alert('비밀번호는 영문, 숫자, 특수문자가 모두 포함되도록 해주시기 바랍니다.');
		}else{
			$('#pwFlag').val('true');
		}
	}

	$('#goRegister').click(function(){
		//아이디 및 비밀번호 유효성 재 검사
		validation_id();
		validation_password();
		
		var idFrag = $('#idFrag').val();
		var pwFrag = $('#pwFrag').val();
		
		if('false' != idFrag && 'false' == pwFrag && 'false' == isSubmitted){
			var joinForm = $('#joinForm');

			joinBtn.prop("disabled", true);
			joinBtn.attr("disabled","disabled");
			
			isSubmitted = true;
			
			var action = '/member/ajax/joinAction.do';
			
			var resultData = DataAjax2(action, 'joinForm', '');

			if(!resultData){
				alert('실패하였습니다.\n입력값을 확인하세요.');
				setTimeout(function(){ useCouponBtnAbled(joinBtn); }, 3000);
			}else{
				var resultFlag = resultData.resultFlag;
				console.log('resultFlag ==> ' + resultFlag);
				if(0 == resultFlag){
					alert('실패하였습니다.\n입력값을 확인하세요.');
				}else if(1 == resultFlag){
					alert('회원가입이 성공하였습니다.');
					location.href='/member/login.do';
				}
				setTimeout(function(){ useCouponBtnAbled(joinBtn); }, 3000);
			}
		}
	});

	function useCouponBtnAbled(btn){
		isSubmitted = false;
		
		btn.prop("disabled", false);
		btn.removeAttr("disabled");
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

});
</script>
</html>
