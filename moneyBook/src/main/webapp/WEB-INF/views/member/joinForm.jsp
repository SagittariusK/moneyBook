<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Jekyll v3.8.5">
	<title>회원가입</title>
	
	<link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/checkout/">
	
	<!-- fontawesome -->
    <link rel="stylesheet" href="/resources/fontawesome_web/css/all.min.css">
	
	<!-- Bootstrap core -->
	<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/bootstrap/js/bootstrap.bundle.min.js" rel="stylesheet">
	
	<!-- Custom styles for this template -->
    <link href="/resources/_css/form-validation.css" rel="stylesheet">
    <script src="/resources/_js/form-validation.js"></script>
    
    <!-- JQuery 3.4.1 -->
    <script src="/resources/jquery/js/jquery-3.4.1.min.js"></script>
    
    <!-- JQuery.Cookie 1.4.1 -->
	<script src="/resources/jquery/js/jquery.cookie.js"></script>
	
	<!-- Custom -->
	<script src="/resources/_js/common.js"></script>
	<script src="/resources/_js/member/joinForm.js"></script>
	
	<style>
	.bd-placeholder-img {
		font-size: 1.125rem;
		text-anchor: middle;
		-webkit-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}
	
	@media (min-width: 768px) {
		.bd-placeholder-img-lg {
			font-size: 3.5rem;
		}
	}
	</style>
	
</head>
<body class="bg-light">
	<div class="container" style="max-width: 500px">
		<div class="py-5 text-center">
			<i class="fas fa-dollar-sign fa-5x"></i>
			<h2>회원가입</h2>
			<p class="lead d-md-block" style="display:none;">회원가입을 위하여 정보를 정확히 입력해주세요.</p>
		</div>

		<div class="row">
			<div class="col-md-12 order-md-1">
				<form id="joinForm" class="needs-validation">
					<div id="user_id_div" class="mb-3">
						<label for="user_id">아이디</label>
						<input type="text" class="form-control" id="user_id" name="user_id" placeholder="ex) 로그인에 사용할 아이디">
						<input type="hidden" id="user_id_frag" value="F">
					</div>
					
					<div id="id_confirm" class="d-none">
						<hr class="mb-4">
						<div class="mb-3">
							<span id="realTimeIDcheck" class="d-none"></span>
						</div>
						<hr class="mb-4">
					</div>
					
					<div id="user_password_div" class="mb-3">
						<label for="user_password">비밀번호</label>
						<input type="password" class="form-control" id="user_password" name="user_password" required>
						<input type="hidden" id="user_password_frag" value="F">
					</div>
					
					<div class="mb-3">
						<label for="user_password_confirm">비밀번호 확인</label>
						<input type="password" class="form-control" id="user_password_confirm" name="user_password_confirm" required>
					</div>
					
					<div id="password_confirm" class="d-none">
						<hr class="mb-4">
						<div class="mb-3">
							<span id="realTimePASSWORDcheck" class="d-none"></span>
						</div>
						<hr class="mb-4">
					</div>
					
					<div id="user_name_div" class="mb-3">
						<label for="user_name">이름</label>
						<input type="text" class="form-control" id="user_name" name="user_name" placeholder="ex) 홍길동" required>
						<input type="hidden" id="user_name_frag" value="F">
					</div>
					
					<div id="name_confirm" class="d-none">
						<hr class="mb-4">
						<div class="mb-3">
							<span id="realTimeNAMEcheck" class="d-none"></span>
						</div>
						<hr class="mb-4">
					</div>
					
					<div id="user_nickname_div" class="mb-3">
						<label for="user_nickname">닉네임</label>
						<input type="text" class="form-control" id="user_nickname" name="user_nickname" placeholder="ex) 닉네임" required>
						<input type="hidden" id="user_nickname_frag" value="F">
					</div>
					
					<div id="nickname_confirm" class="d-none">
						<hr class="mb-4">
						<div class="mb-3">
							<span id="realTimeNICKNAMEcheck" class="d-none"></span>
						</div>
						<hr class="mb-4">
					</div>
					
					<div class="row">
						<div class="col-md-4 mb-3">
							<input type="hidden" id="user_bdate" name="user_bdate" value="">
							<label for="user_bdate">생년월일</label>
							<input type="text" class="form-control" id="user_bdate1" placeholder="ex) 년도" required>
						</div>
						<div class="col-md-4 mb-3">
							<label for="user_bdate2" class="d-none d-md-block"><span class="invisible">월</span></label>
							<input type="text" class="form-control" id="user_bdate2" placeholder="ex) 월" required>
						</div>
						<div class="col-md-4 mb-3">
							<label for="user_bdate3" class="d-none d-md-block"><span class="invisible">일</span></label>
							<input type="text" class="form-control" id="user_bdate3" placeholder="ex) 일" required>
						</div>
						<input type="hidden" id="user_bdate_frag" value="F">
					</div>
					
					<div id="bdate_confirm" class="d-none">
						<hr class="mb-4">
						<div class="mb-3">
							<span id="realTimeBDATEcheck" class="d-none"></span>
						</div>
						<hr class="mb-4">
					</div>
					
					<div class="row">
						<div class="col-md-3 mb-3">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" id="user_gender_m" name="user_gender" value="M" checked required>
								<label class="custom-control-label" for="user_gender_m">남자</label>
							</div>
						</div>
						<div class="col-md-3 mb-3">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" id="user_gender_f" name="user_gender" value="F" required>
								<label class="custom-control-label" for="user_gender_f">여자</label>
							</div>
						</div>
						<input type="hidden" id="user_gender_frag" value="F">
					</div>
					
					<div id="gender_confirm" class="d-none">
						<hr class="mb-4">
						<div class="mb-3">
							<span id="realTimeGENDERcheck" class="d-none"></span>
						</div>
						<hr class="mb-4">
					</div>
					
					<div class="row mb-3">
						<div class="col-md-4">
							<input type="hidden" id="user_tel" name="user_tel" value="">
							<label for="user_phone1">전화번호</label>
							<select class="custom-select d-block w-100" id="user_tel1">
								<option value="" selected>선택...</option>
								<option value="02">02</option>
								<option value="031">031</option>
								<option value="032">032</option>
								<option value="033">033</option>
								<option value="041">041</option>
								<option value="042">042</option>
								<option value="043">043</option>
								<option value="044">044</option>
								<option value="051">051</option>
								<option value="052">052</option>
								<option value="053">053</option>
								<option value="054">054</option>
								<option value="055">055</option>
								<option value="061">061</option>
								<option value="062">062</option>
								<option value="063">063</option>
								<option value="064">064</option>
								<option value="070">070</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="019">019</option>
								<option value="064">064</option>
								<option value="070">070</option>
							</select>
						</div>
						<div class="col-md-4">
							<label for="user_tel2" class="d-none d-md-block"><span class="invisible">가운데 전화번호</span></label>
							<input type="text" class="form-control" id="user_tel2" placeholder="ex) 가운데번호">
						</div>
						<div class="col-md-4">
							<label for="user_tel3" class="d-none d-md-block"><span class="invisible">뒷 전화번호</span></label>
							<input type="text" class="form-control" id="user_tel3" placeholder="ex) 뒷번호">
						</div>
						<input type="hidden" id="user_tel_frag" value="F">
					</div>
					
					<div id="tel_confirm" class="d-none">
						<hr class="mb-4">
						<div class="mb-3">
							<span id="realTimeTELcheck" class="d-none"></span>
						</div>
						<hr class="mb-4">
					</div>
					
					<div id="user_phone_div" class="row mb-3">
						<div class="col-md-4">
							<input type="hidden" id="user_phone" name="user_phone" value="">
							<label for="user_phone1">핸드폰 번호</label>
							<select class="custom-select d-block w-100" id="user_phone1" required>
								<option value="" selected>선택...</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="019">019</option>
								<option value="064">064</option>
								<option value="070">070</option>
							</select>
						</div>
						<div class="col-md-4">
							<label for="user_phone2" class="d-none d-md-block"><span class="invisible">가운데 번호</span></label>
							<input type="text" class="form-control" id="user_phone2" placeholder="ex) 가운데번호" required>
						</div>
						<div class="col-md-4">
							<label for="user_phone3" class="d-none d-md-block"><span class="invisible">뒷 번호</span></label>
							<input type="text" class="form-control" id="user_phone3" placeholder="ex) 뒷번호" required>
						</div>
						<input type="hidden" id="user_phone_frag" value="F">
					</div>
					
					<div id="phone_confirm" class="d-none">
						<hr class="mb-4">
						<div class="mb-3">
							<span id="realTimePHONEcheck" class="d-none"></span>
						</div>
						<hr class="mb-4">
					</div>
					
					<div id="user_email_div" class="row mb-3">
						<div class="col-md-4">
							<input type="hidden" id="user_email" name="user_email" value="">
							<label for="user_email1">이메일</label>
							<input type="text" class="form-control" id="user_email1" placeholder="ex) 이메일 ID" required>
						</div>
						<div class="col-md-4">
							<label for="user_email2" class="d-none d-md-block"><span class="invisible">이메일 주소 입력</span></label>
							<input type="text" class="form-control" id="user_email2" placeholder="ex) 나머지 주소" required>
						</div>
						<div class="col-md-4">
							<label for="user_email_select" class="d-none d-md-block"><span class="invisible">이메일 주소 선택</span></label>
							<select class="custom-select d-block w-100" id="user_email_select" required>
								<option value="" selected>선택...</option>
								<option value="gmail.com">@gmail.com</option>
								<option value="naver.com">@naver.com</option>
								<option value="hanmail.net">@hanmail.net</option>
								<option value="outlook.com">@outlook.com</option>
								<option value="nate.com">@nate.com</option>
								<option value="">직접입력</option>
							</select>
						</div>
						<input type="hidden" id="user_email_frag" value="F">
					</div>
					
					<div id="email_confirm" class="d-none">
						<hr class="mb-4">
						<div class="mb-3">
							<span id="realTimeEMAILcheck" class="d-none"></span>
						</div>
						<hr class="mb-4">
					</div>
					
					<div id="user_addr_div" class="row">
						<div class="col-md-6">
							<label for="user_addr1">주소</label>
							<input type="text" class="form-control" id="user_addr1" name="user_addr1" readonly required>
						</div>
						<div class="col-md-3">
							<label for="user_zipcode" class="d-none d-md-block"><span class="invisible">우편번호</span></label>
							<input type="text" class="form-control text-center" id="user_zipcode" name="user_zipcode" readonly required>
						</div>
						<div class="col-md-3">
							<label for="addressSearch" class="d-none d-md-block"><span class="invisible">주소검색</span></label>
							<input type="button" id="addressSearch" class="btn btn-success btn-sm btn-block" value="주소검색">
						</div>
					</div>
					<div class="mb-3">
						<input type="text" class="form-control" id="user_addr2" name="user_addr2" readonly required>
						<input type="text" class="form-control" id="user_addr_etc" name="user_addr2_etc" readonly required>
						<input type="text" class="form-control" id="user_addr_detail" name="user_addr_detail" placeholder="ex) 상세주소" required>
						<div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
						<input type="hidden" id="user_addr_jibun" name="user_addr_jibun" value="">
						<input type="hidden" id="user_addr_eng" name="user_addr_eng" value="">
						<input type="hidden" id="user_addr_jibun_eng" name="user_addr_jibun_eng" value="">
						<input type="hidden" id="user_addr_frag" value="F">
					</div>
					
					<div id="addr_confirm" class="d-none">
						<hr class="mb-4">
						<div class="mb-3">
							<span id="realTimeADDRcheck" class="d-none"></span>
						</div>
						<hr class="mb-4">
					</div>
					
					<hr class="mb-4">
					<input type="button" id="joinBtn" class="btn btn-primary btn-lg btn-block" value="회원가입">
				</form>
			</div>
		</div>

		<footer class="my-5 pt-5 text-muted text-center text-small">
			<p class="mb-1">&copy; 김서연가족</p>
			<!-- 
			<ul class="list-inline">
				<li class="list-inline-item"><a href="#">Privacy</a></li>
				<li class="list-inline-item"><a href="#">Terms</a></li>
				<li class="list-inline-item"><a href="#">Support</a></li>
			</ul>
			 -->
		</footer>
	</div>
</body>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=257cbfbc4bd15e375afe749c09ed8cf4&libraries=services"></script>
<script>
	$(document).ready(function() {
		user_zipcode_controll();
		$( window ).resize(function() {
			user_zipcode_controll();
		});

		function user_zipcode_controll(){
			var windowWidth = $( window ).width();
			if(768 <= windowWidth){
				$('#user_zipcode').addClass('text-center');
			}else{
				$('#user_zipcode').removeClass('text-center');
			}
		}
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
		    center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
		    level: 5 // 지도의 확대 레벨
		};
		
		//지도를 미리 생성
		var map = new daum.maps.Map(mapContainer, mapOption);
		//주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();
		//마커를 미리 생성
		var marker = new daum.maps.Marker({
		    position: new daum.maps.LatLng(37.537187, 127.005476),
		    map: map
		});

		$('#addressSearch').click(function(){
			new daum.Postcode({
	            oncomplete: function(data) {
	            	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수

	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                //document.getElementById('user_zipcode').value = data.zonecode;
	                $('#user_zipcode').val(data.zonecode);
	                $('#user_addr1').val(data.sido + ' ' + data.sigungu);
	                $('#user_addr2').val(data.query);
	                $('#user_addr_jibun').val(data.jibunAddress);
	                $('#user_addr_eng').val(data.roadAddressEnglish);
	                $('#user_addr_jibun_eng').val(data.jibunAddressEnglish);
	                
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    //document.getElementById("user_addr_etc").value = extraRoadAddr;
	                    $('#user_addr_etc').val(extraRoadAddr);
	                } else {
	                    //document.getElementById("user_addr_etc").value = '';
	                    $('#user_addr_etc').val('');
	                }

					/*
	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';

	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	                */

	                var addr = data.address; // 최종 주소 변수
	                
	                // 주소로 상세 정보를 검색
	                geocoder.addressSearch(data.address, function(results, status) {
	                    // 정상적으로 검색이 완료됐으면
	                    if (status === daum.maps.services.Status.OK) {

	                        var result = results[0]; //첫번째 결과의 값을 활용

	                        // 해당 주소에 대한 좌표를 받아서
	                        var coords = new daum.maps.LatLng(result.y, result.x);
	                        // 지도를 보여준다.
	                        mapContainer.style.display = "block";
	                        map.relayout();
	                        // 지도 중심을 변경한다.
	                        map.setCenter(coords);
	                        // 마커를 결과값으로 받은 위치로 옮긴다.
	                        marker.setPosition(coords)
	                    }
	                });
	            }
	        }).open();
		});
		
	});
</script>
</html>