$(document).ready(function() {

	//이메일 select 선택
	$('#user_email_select').change(function(){
		var value = $(this).val();
		if('' == value){
			$('#user_email2').prop('readonly', false);
		}else{
			$('#user_email2').prop('readonly', true);
		}
		$('#user_email2').val(value);
		validation_email();
	});
	
	//실시간 ID유효성 검사
	$('#user_id').keyup(function(){
		validation_id();
	});
	function validation_id(){
		var id_regExp = /^[a-z]+[a-z0-9]{4,19}$/g;
		
		var user_id = $('#user_id').val();
		
		user_id = user_id.toLowerCase(); 
		$('#user_id').val(user_id);
		if('' == user_id){
			realTimeCheck('id', null, null);
			return false;
		}else if(user_id.length < 5 || user_id.length > 20 || !id_regExp.test(user_id)){
			realTimeCheck('id', 'F', '아이디는 영문자로 시작하는 5~20자 영문자 또는 숫자이어야 합니다.');
			return false;
		}
		
		var action = '/member/ajax/realTimeIDCheck.do';

		var resultData = DataAjax2(action, 'joinForm', '');

		if(!resultData){
			alert('실패하였습니다.\n관리자에게 문의하세요.');
		}else{
			var resultFlag = resultData.resultFlag;
			if(0 == resultFlag){
				realTimeCheck('id', 'S', '사용가능한 아이디 입니다.');
			}else{
				realTimeCheck('id', 'F', '이미 사용중인 아이디 입니다.');
			}
		}
	}
	
	//실시간 Password유효성 검사
	$('#user_password, #user_password_confirm').keyup(function(){
		validation_password();
	});
	function validation_password(){
		var pwd_regExp = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{1,50}).{8,50}$/;
		
		var user_password = $('#user_password').val();
		var user_password_confirm = $('#user_password_confirm').val();
		
		if('' == user_password || '' == user_password_confirm){
			realTimeCheck('password', null, null);
			return false;
		}
		
		if(user_password.length < 8){
			realTimeCheck('password', 'F', '비밀번호는 8자리 이상으로 해주시기 바랍니다.');
		}else if(user_password != user_password_confirm){
			realTimeCheck('password', 'F', '비밀번호가 일치하지 않습니다.');
		}else if(!pwd_regExp.test(user_password)){
			realTimeCheck('password', 'F', '비밀번호는 영문, 숫자, 특수문자가 모두 포함되도록 해주시기 바랍니다.');
		}else{
			realTimeCheck('password', 'S', '사용가능한 비밀번호입니다.');
		}
	}
	
	//실시간 이름 유효성 검사
	$('#user_name').keyup(function(){
		validation_name();
	});
	function validation_name(){
		var user_name = $('#user_name').val();
		
		if('' == user_name){
			realTimeCheck('name', null, null);
			return false;
		}
		
		//입력 값 바이트 수 계산
		var stringByteLength = ValueByteCount('user_name', 49, 'Y');
		if(49 < stringByteLength){
			realTimeCheck('name', 'F', '이름은 한글 25글자, 영문 및 숫자는 50글자 이하로 적어주세요.');
		}else{
			realTimeCheck('name', 'S', '사용가능한 이름입니다.');
		}
	}
	
	//실시간 닉네임 유효성 검사
	$('#user_nickname').keyup(function(){
		validation_nickname();
	});
	function validation_nickname(){
		var user_nickname = $('#user_nickname').val();
		
		if('' == user_nickname){
			realTimeCheck('nickname', null, null);
			return false;
		}
		
		//입력 값 바이트 수 계산
		var stringByteLength = ValueByteCount('user_nickname', 49, 'Y');
		if(49 < stringByteLength){
			realTimeCheck('nickname', 'F', '닉네임은 한글 25글자, 영문 및 숫자는 50글자 이하로 적어주세요.');
			return false;
		}else{
			realTimeCheck('nickname', 'S', '사용가능한 닉네임입니다.');
		}
	}
	
	//실시간 생년월일 유효성 검사
	$('#user_bdate1, #user_bdate2, #user_bdate3').keyup(function(){
		validation_bdate();
	});
	function validation_bdate(){
		var bdate_year_regExp =/(\d{4})/;
		var bdate_month_regExp =/(\d{2})/;
		var bdate_day_regExp =/(\d{2})/;
		
		var user_bdate1 = $('#user_bdate1').val();
		var user_bdate2 = $('#user_bdate2').val();
		var user_bdate3 = $('#user_bdate3').val();
		
		if(10 > user_bdate2 && 1 == user_bdate2.length){
			user_bdate2 = '0' + user_bdate2;
		}
		
		if(10 > user_bdate3 && 1 == user_bdate3.length){
			user_bdate3 = '0' + user_bdate3;
		}
		
		var lastDay = ( new Date( user_bdate1, user_bdate2, 0) ).getDate();
		var Now = new Date();
		var current_year = Now.getFullYear();
		var current_month = Now.getMonth()+1;
		var current_day = Now.getDate();
		
		if(10 > current_month){
			current_month = '0' + current_month;
		}
		
		if(10 > current_day){
			current_day = '0' + current_day;
		}
		
		var current_date = current_year + '' + current_month + '' + current_day;
		var user_bdate = user_bdate1 + user_bdate2 + user_bdate3;
		
		if('' == user_bdate1 || '' == user_bdate2 || '' == user_bdate3){
			realTimeCheck('bdate', null, null);
			return false;
		}else if(!bdate_year_regExp.test(user_bdate1) || !bdate_month_regExp.test(user_bdate2) || !bdate_day_regExp.test(user_bdate3)){
			realTimeCheck('bdate', 'F', '생년월일은 숫자만 년도 4자리, 월 2자리, 일 2자리를 입력하셔야 합니다.');
			return false;
		}else if(12 < user_bdate2 || 1 > user_bdate2){
			realTimeCheck('bdate', 'F', '1월에서 12월까지만 가능합니다.');
			return false;
		}else if(current_date < user_bdate){
			realTimeCheck('bdate', 'F', '생년월일은 오늘보다 클 수 없습니다.');
			return false;
		}else{
			if(lastDay < user_bdate3 || 1 > user_bdate3){
				realTimeCheck('bdate', 'F', '해당 년월에는 입력하신 일자가 없습니다.');
				return false;
			}
			realTimeCheck('bdate', 'S', '올바른 생년월일을 입력하셨습니다.');
		}
	}
	
	/*
	//전화번호 select 선택
	$('#user_tel1').change(function(){
		validation_tel();
	});
	
	//실시간 전화번호 유효성 검사
	$('#user_tel2').keyup(function(){
		validation_tel();
	});
	function validation_tel(){
		var tel_regExp =/(\d{7,8})/;
		
		var user_tel1 = $('#user_tel1').val();
		var user_tel2 = $('#user_tel2').val();
		
		if('' == user_tel2){
			realTimeCheck('tel', null, null);
			return false;
		}
		
		for(var i = 0; i < user_tel2.length; i++){
			var results = user_tel2.match(/-/g);
			if(results != null) {
			    if(1 < results.length){
			    	var last_index = user_tel2.lastIndexOf('-');
			    	user_tel2 = user_tel2.replaceReAt(last_index, '');
			    	$('#user_tel2').val(user_tel2);
			    }
			}
		}
		
		user_tel2 = $('#user_tel2').val();
		var index = user_tel2.indexOf('-');
		//console.log('index: ' + index);
		var tmp_backnumber = '';
		if(-1 != index && 3 != index && 4 != index){
			realTimeCheck('tel', 'F', '전화번호 형식을 확인해주세요.');
			return false;
		}else if(3 == index || 4 == index){
			tmp_backnumber = user_tel2.substr(index+1);
			if(4 != tmp_backnumber.length){
				realTimeCheck('tel', 'F', '전화번호 형식을 확인해주세요.');
				return false;
			}
		}
		
		user_tel2 = user_tel2.replaceAll('-', '');
		
		if(7 > user_tel2.length || 8 < user_tel2.length || !tel_regExp.test(user_tel2)){
			realTimeCheck('tel', 'F', '전화번호는 \'-\'을 제외한 숫자 8자리를 입력해주세요.');
			return false;
		}else{
			if('' == user_tel1){
				realTimeCheck('tel', 'F', '전화번호 앞 3~4자리를 선택해주세요.');
				return false;
			}else{
				realTimeCheck('tel', 'S', '올바른 전화번호를 입력하셨습니다.');
			}
		}
	}
	*/
	
	//핸드폰 번호 select 선택
	$('#user_phone1').change(function(){
		validation_phone();
	});
	//실시간 핸드폰 번호 유효성 검사
	$('#user_phone1, #user_phone2').keyup(function(){
		validation_phone();
	});
	function validation_phone(){
		var phone_regExp =/(\d{3,4})/;
		
		var user_phone1 = $('#user_phone1').val();
		var user_phone2 = $('#user_phone2').val();
		var user_phone3 = $('#user_phone3').val();
		
		if('' == user_phone1 || '' == user_phone2 || '' == user_phone3){
			realTimeCheck('phone', null, null);
			return false;
		}
		
		for(var i = 0; i < user_phone2.length; i++){
			var results = user_phone2.match(/-/g);
			if(results != null) {
			    if(1 < results.length){
			    	var last_index = user_phone2.lastIndexOf('-');
			    	user_phone2 = user_phone2.replaceReAt(last_index, '');
			    	$('#user_phone2').val(user_phone2);
			    }
			}
		}
		for(var i = 0; i < user_phone3.length; i++){
			var results = user_phone3.match(/-/g);
			if(results != null) {
				if(1 < results.length){
					var last_index = user_phone3.lastIndexOf('-');
					user_phone3 = user_phone3.replaceReAt(last_index, '');
					$('#user_phone3').val(user_phone3);
				}
			}
		}
		
		if(3 > user_phone2.length || 4 < user_phone2.length || !phone_regExp.test(user_phone2) || 3 > user_phone3.length || 4 < user_phone3.length || !phone_regExp.test(user_phone3)){
			realTimeCheck('phone', 'F', '핸드폰 번호는 \'-\'을 제외한 숫자만 입력해주세요.');
			return false;
		}else{
			if('' == user_phone1){
				realTimeCheck('phone', 'F', '핸드폰 번호 앞 3자리를 선택해주세요.');
				return false;
			}else if('' == user_phone2){
				realTimeCheck('phone', 'F', '핸드폰 번호 가운데자리를 입력해주세요.');
				return false;
			}else if('' == user_phone3){
				realTimeCheck('phone', 'F', '핸드폰 번호 뒷자리를 입력해주세요.');
				return false;
			}else{
				realTimeCheck('phone', 'S', '올바른 핸드폰 번호를 입력하셨습니다.');
			}
		}
	}
	
	//실시간 이메일 유효성 검사
	$('#user_email1, #user_email2').keyup(function(){
		validation_email();
	});
	function validation_email(){
		var email_regExp = /([a-z0-9-]+\.)+[a-z0-9]{2,4}$/;
		var user_email1 = $('#user_email1').val();
		var user_email2 = $('#user_email2').val();
		
		if('' == user_email1 || '' == user_email2){
			realTimeCheck('email', null, null);
			return false;
		}
		
		var user_email = user_email1 + '@' + user_email2;

		if('' == user_email1 || '' == user_email2 || !email_regExp.test(user_email2)){
			realTimeCheck('email', 'F', '이메일을 확인해주세요.');
			return false;
		}else if(50 < user_email.length){
			realTimeCheck('email', 'F', '이메일의 길이가 너무 깁니다..');
			return false;
		}else{
			realTimeCheck('email', 'S', '사용가능한 이메일 입니다.');
		}
	}
	
	$('#user_zipcode, #user_addr_detail').keyup(function(){
		validation_addr();
	});
	function validation_addr(){
		var user_zipcode = $('#user_zipcode').val();
		var user_addr_detail = $('#user_addr_detail').val();
		
		if('' == user_zipcode || '' == user_addr_detail){
			realTimeCheck('addr', null, null);
			return false;
		}

		var stringByteLength = ValueByteCount('user_addr_detail', 300, 'Y');
		if(300 < stringByteLength){
			realTimeCheck('addr', 'F', '상세주소의 길이가 너무 깁니다.');
			return false;
		}else{
			realTimeCheck('addr', 'S', '');
		}
	}
	
	//전체 유효성 검사
	function validation() {
		
		var validation_flag = '';
		
		//아이디 및 비밀번호 유효성 재 검사
		validation_id();
		validation_password();
		validation_name();
		validation_nickname();
		validation_bdate();
		validation_phone();
		validation_email();
		validation_addr();
		
		var user_id_frag = $('#user_id_frag').val();
		var user_password_frag = $('#user_password_frag').val();
		var user_name_frag = $('#user_name_frag').val();
		var user_nickname_frag = $('#user_nickname_frag').val();
		var user_bdate_frag = $('#user_bdate_frag').val();
		var user_phone_frag = $('#user_phone_frag').val();
		var user_email_frag = $('#user_email_frag').val();
		var user_addr_frag = $('#user_addr_frag').val();
		
		if('F' == user_id_frag || '' == user_id_frag){
			alert('아이디를 확인해주세요.');
			scrollMove('user_id_div');
			validation_flag = 'false';
		}else if('F' == user_password_frag || '' == user_password_frag){
			alert('비밀번호를 확인해주세요.');
			scrollMove('user_password_div');
			validation_flag = 'false';
		}else if('F' == user_name_frag || '' == user_name_frag){
			alert('이름을 확인해주세요.');
			scrollMove('user_name_div');
			validation_flag = 'false';
		}else if('F' == user_nickname_frag || '' == user_nickname_frag){
			alert('닉네임을 확인해주세요.');
			scrollMove('user_nickname_div');
			validation_flag = 'false';
		}else if('F' == user_bdate_frag || '' == user_bdate_frag){
			alert('생년월일을 확인해주세요.');
			scrollMove('user_bdate_div');
			validation_flag = 'false';
		}else if('F' == user_phone_frag || '' == user_phone_frag){
			alert('핸드폰 번호를 확인해주세요.');
			scrollMove('user_phone_div');
			validation_flag = 'false';
		}else if('F' == user_email_frag || '' == user_email_frag){
			alert('이메일을 확인해주세요.');
			scrollMove('user_email_div');
			validation_flag = 'false';
		}else if('F' == user_addr_frag || '' == user_addr_frag){
			alert('이메일을 확인해주세요.');
			scrollMove('user_addr_div');
			validation_flag = 'false';
		}else{
			var user_bdate1 = $('#user_bdate1').val();
			var user_bdate2 = $('#user_bdate2').val();
			var user_bdate3 = $('#user_bdate3').val();
			
			if(10 > user_bdate2){
				user_bdate2 = '0' + user_bdate2;
			}
			
			if(10 > user_bdate3){
				user_bdate3 = '0' + user_bdate3;
			}
			
			var user_bdate = user_bdate1 + '-' + user_bdate2 + '-' + user_bdate3;
			$('#user_bdate').val(user_bdate);
			
			var user_tel1 = $('#user_tel1').val();
			var user_tel2 = $('#user_tel2').val();
			var user_tel3 = $('#user_tel3').val();
			var user_tel = user_tel1 + '-' + user_tel2 + '-' + user_tel3;
			$('#user_tel').val(user_tel);
			
			var user_phone1 = $('#user_phone1').val();
			var user_phone2 = $('#user_phone2').val();
			var user_phone3 = $('#user_phone3').val();
			var user_phone = user_phone1 + '-' + user_phone2 + '-' + user_phone3;
			$('#user_phone').val(user_phone);
			
			var user_email1 = $('#user_email1').val();
			var user_email2 = $('#user_email2').val();
			var user_email = user_email1 + '@' + user_email2;
			$('#user_email').val(user_email);

			validation_flag = 'true';
		}
		
		return validation_flag;
	}
	
	var isSubmitted = false;
	
	function useCouponBtnAbled(btn){
		isSubmitted = false;
		
		btn.prop("disabled", false);
		btn.removeAttr("disabled");
	}
	
	$('#joinBtn').click(function(){
		var validation_flag = validation();
		
		console.log('validation_flag ==> ' + validation_flag);
		
		if ( !isSubmitted && 'true' == validation_flag ) {
			
			var joinBtn = $('#joinBtn');
			
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
});