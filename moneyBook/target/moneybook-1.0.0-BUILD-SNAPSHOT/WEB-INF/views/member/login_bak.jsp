<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Jekyll v3.8.5">
	<title>로그인</title>
	
    <!-- JQuery 3.4.1 -->
    <script src="/resources/jquery/js/jquery-3.4.1.min.js"></script>
	<script src="/resources/jquery/js/jquery.cookie.js"></script>
	<script src="/resources/jquery/js/jquery.easing.min.js"></script>
	
	<!-- Bootstrap core CSS -->
	<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap core JavaScript-->
	<script src="/resources/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<!-- fontawesome CSS -->
    <link rel="stylesheet" href="/resources/fontawesome_web/css/all.min.css">
	
	<!-- Custom -->
	<script src="/resources/_js/common.js"></script>
	
	<!-- Custom fonts for this template-->
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- Custom styles for this template-->
	<link href="/resources/_css/sb-admin-2.min.css" rel="stylesheet">
	<!-- Custom scripts for all pages-->
	<script src="/resources/_js/sb-admin-2.min.js"></script>
    
    <script>
    $(document).ready(function(){
    	var isSubmitted = false;

    	function useCouponBtnAbled(btn){
    		isSubmitted = false;
    		
    		btn.prop("disabled", false);
    		btn.removeAttr("disabled");
    	}
    	
    	$('#loginBtn').click(function(){
		    if ( !isSubmitted ) {
				
				var loginBtn = $('#loginBtn');
				
				loginBtn.prop("disabled", true);
				loginBtn.attr("disabled","disabled");
				
				isSubmitted = true;
				
				var resultData = DataAjax2('/login/ajax/loginAction.do', "loginForm", 'Y');

				if(!resultData){
					alert('실패');
					setTimeout(function(){ useCouponBtnAbled(loginBtn); }, 3000);
				}else{
					alert('성공');
					setTimeout(function(){ useCouponBtnAbled(loginBtn); }, 3000);
				}

			}
        	
        });

    });
    </script>
</head>
<body class="bg-gradient-primary">

	<div class="container">
	
	<!-- Outer Row -->
	<div class="row justify-content-center">
	
		<div class="col-xl-10 col-lg-12 col-md-9">
	
			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">
						<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">로그인</h1>
									</div>
									<form id="loginForm" class="user">
										<div class="form-group">
											<input type="text" class="form-control form-control-user" id="user_id" name="user_id" placeholder="ID">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user" id="user_password" name="user_password" placeholder="Password">
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input" id="rememberMeChk" name="rememberMeChk">
												<label class="custom-control-label" for="rememberMeChk">기억하기</label>
												<input type="hidden" id="rememberMeValue" name="rememberMeValue" value="">
											</div>
										</div>
										<a href="/" id="loginBtn" class="btn btn-primary btn-user btn-block">로그인</a>
									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="forgot-password.html">비밀번호 찾기</a>
										<span> / </span>
										<a class="small" href="register.html">가입하기</a>
									</div>
									<hr>
									<div class="text-center">
										<p class="mt-5 mb-3 text-muted text-center">&copy; 1</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
								
			</div>
								
		</div>
	
	</div>
</body>
</html>