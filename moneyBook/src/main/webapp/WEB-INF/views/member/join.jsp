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
				<form class="needs-validation">
					<div class="mb-3">
						<label for="user_id">아이디</label>
						<input type="text" class="form-control" id="user_id" name="user_id" placeholder="ex) your identity">
					</div>
					
					<div class="mb-3">
						<label for="user_password">비밀번호</label>
						<input type="password" class="form-control" id="user_password" name="user_password" required>
					</div>
					
					<div class="mb-3">
						<label for="user_password_confirm">비밀번호 확인</label>
						<input type="password" class="form-control" id="user_password_confirm" name="user_password_confirm" required>
					</div>
					<div id="id_pw_confirm">
						<hr class="mb-4">
						
						<div class="mb-3">
							<span class="text-primary">사용가능한 아이디 입니다.</span>
							<span class="text-danger">사용중인 아이디 입니다.</span>
							<span class="text-danger">아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.</span>
							
							<span class="text-primary">사용가능한 비밀번호입니다.</span>
							<span class="text-danger">비밀번호는 8자리 이상으로 해주시기 바랍니다.</span>
							<span class="text-danger">비밀번호가 일치하지 않습니다.</span>
							<span class="text-danger">비밀번호는 영문, 숫자, 특수문자가 모두 포함되도록 해주시기 바랍니다.</span>
						</div>
					</div>
					<hr class="mb-4">
					
					<div class="mb-3">
						<label for="user_name">이름</label>
						<input type="text" class="form-control" id="user_name" name="user_name" placeholder="홍길동" required>
					</div>
					
					<div class="mb-3">
						<label for="user_nickname">닉네임</label>
						<input type="text" class="form-control" id="user_name" name="user_nickname" placeholder="닉네임" required>
					</div>
					
					<div class="mb-3">
						<label for="user_bdate">생년월일</label>
						<input type="text" class="form-control" id="user_bdate" name="user_bdate" placeholder="19881124" required>
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
					</div>
					
					<div class="row">
						<div class="col-md-4 mb-3">
							<label for="user_phone1">지역번호</label>
							<select class="custom-select d-block w-100" id="user_tel1" name="user_tel1">
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
							</select>
						</div>
						<div class="col-md-8 mb-3">
							<label for="user_tel2">전화번호</label>
							<input type="text" class="form-control" id="user_tel2" name="user_tel2" placeholder="1234-5678">
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-4 mb-3">
							<label for="user_phone1">앞번호</label>
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
							<label for="user_phone2">폰번호</label>
							<input type="text" class="form-control" id="user_phone2" name="user_phone2" placeholder="1234-5678" required>
						</div>
					</div>
					
					<div class="mb-3">
						<label for="user_email">이메일</label>
						<input type="email" class="form-control" id="user_email" name="user_email" placeholder="you@example.com" required>
					</div>
					
					<div class="mb-3">
						<label for="address">주소</label>
						<input type="text" class="form-control" id="user_addr1" name="user_addr1" readonly required>
						<input type="text" class="form-control" id="user_addr2" name="user_addr2" readonly required>
						<input type="text" class="form-control" id="user_addr_detail" name="user_addr_detail" placeholder="상세주소" required>
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