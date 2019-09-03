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
					<div class="mb-3">
						<label for="user_id">아이디</label>
						<input type="text" class="form-control" id="user_id" name="user_id" placeholder="ex) your identity">
						<input type="hidden" id="user_id_frag" value="F">
					</div>
					
					<div id="id_confirm" class="d-none">
						<hr class="mb-4">
						<div class="mb-3">
							<span id="realTimeIDcheck" class="d-none"></span>
						</div>
						<hr class="mb-4">
					</div>
					
					<div class="mb-3">
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
					
					<div class="mb-3">
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
					
					<div class="mb-3">
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
					
					<div class="mb-3">
						<label for="user_bdate">생년월일</label>
						<input type="text" class="form-control" id="user_bdate" name="user_bdate" placeholder="ex) 19880101" required>
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
								<input type="radio" class="custom-control-input" id="user_gender_m" name="user_gender" checked required>
								<label class="custom-control-label" for="user_gender_m">남자</label>
							</div>
						</div>
						<div class="col-md-3 mb-3">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" id="user_gender_f" name="user_gender" required>
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
					
					<div class="row">
						<div class="col-md-4 mb-3">
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
						<div class="col-md-8 mb-3">
							<label for="user_tel2"><span class="invisible">뒷 전화번호</span></label>
							<input type="text" class="form-control" id="user_tel2" placeholder="ex) 1234-5678">
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
					
					<div class="row">
						<div class="col-md-4 mb-3">
							<input type="hidden" id="user_phone" name="user_phone" value="">
							<label for="user_phone1">핸드폰 번호</label>
							<select class="custom-select d-block w-100" id="user_phone1" name="user_phone1" required>
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
						<div class="col-md-8 mb-3">
							<label for="user_phone2"><span class="invisible">뒷 번호</span></label>
							<input type="text" class="form-control" id="user_phone2" name="user_phone2" placeholder="ex) 1234-5678" required>
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
					
					<div class="row">
						<div class="col-md-4 mb-3">
							<input type="hidden" id="user_email" name="user_email" value="">
							<label for="user_email1">이메일ID</label>
							<input type="text" class="form-control" id="user_email1" placeholder="ex) email id" required>
						</div>
						<div class="col-md-4 mb-3">
							<label for="user_email2"><span class="invisible">주소 입력</span></label>
							<input type="text" class="form-control" id="user_email2" placeholder="ex) email site" required>
						</div>
						<div class="col-md-4 mb-3">
							<label for="user_email_select"><span class="invisible">주소 선택</span></label>
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
					
					<div class="mb-3">
						<label for="address">주소</label>
						<input type="text" class="form-control" id="user_addr1" name="user_addr1" readonly required>
						<input type="text" class="form-control" id="user_addr2" name="user_addr2" readonly required>
						<input type="text" class="form-control" id="user_addr_detail" name="user_addr_detail" placeholder="ex) 상세주소" required>
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
					<input type="button" class="btn btn-primary btn-lg btn-block" value="회원가입">
				</form>
			</div>
		</div>

		<footer class="my-5 pt-5 text-muted text-center text-small">
			<p class="mb-1">© 2017-2019 Company Name</p>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="#">Privacy</a></li>
				<li class="list-inline-item"><a href="#">Terms</a></li>
				<li class="list-inline-item"><a href="#">Support</a></li>
			</ul>
		</footer>
	</div>
</body>
</html>