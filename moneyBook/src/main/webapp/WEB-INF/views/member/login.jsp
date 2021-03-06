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
	
	<!-- fontawesome CSS -->
    <link rel="stylesheet" href="/resources/fontawesome_web/css/all.min.css">
	
	<!-- Bootstrap core CSS -->
	<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom styles for this template -->
    <link href="/resources/_css/login.css" rel="stylesheet">
    
    <!-- JQuery 3.4.1 -->
    <script src="/resources/jquery/js/jquery-3.4.1.min.js"></script>
    
    <!-- JQuery.Cookie 1.4.1 -->
	<script src="/resources/jquery/js/jquery.cookie.js"></script>
	
	<!-- Custom -->
	<script src="/resources/_js/common.js"></script>

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
				
				var action = '/member/ajax/loginAction.do';
				
				var resultData = DataAjax2(action, 'loginForm', '');

				if(!resultData){
					alert('실패하였습니다.\n관리자에게 문의하세요.');
					setTimeout(function(){ useCouponBtnAbled(loginBtn); }, 3000);
				}else{
					var resultFlag = resultData.resultFlag;
					if(0 == resultFlag){
						alert('조회가 되지 않습니다.\n정보를 확인하세요.');
					}else if(2 == resultFlag){
						//동일한 계정이 2개이상 조회
						alert('계정에 문제가 있습니다.\n관리자에게 문의하세요.');
					}else{
						alert('로그인이 성공하였습니다.');
						//location.href="";
					}
					setTimeout(function(){ useCouponBtnAbled(loginBtn); }, 3000);
				}
			}
        	
        });

    });
    </script>
</head>
<body>
	<form id="loginForm" class="form-signin">
		<div class="text-center mb-4">
			<i class="fas fa-dollar-sign fa-5x"></i>
			<h1 class="h3 mb-3 font-weight-normal">로그인</h1>
			<p>로그인 하셔야 이용하실 수 있습니다.</p>
		</div>
		
		<div class="form-label-group">
			<input type="text" id="user_id" name="user_id" class="form-control" placeholder="ID" required autofocus>
			<label for="user_id">ID</label>
		</div>
		
		<div class="form-label-group">
			<input type="password" id="user_pwd" name="user_pwd" class="form-control" placeholder="Password" required>
			<label for="user_pwd">Password</label>
		</div>
		
		<div class="checkbox mb-3">
			<label>
				<input type="checkbox" id="rememberMeChk" value="remember-me"> 기억하기
				<input type="hidden" id="rememberMeValue" value="">
			</label>
		</div>
		<button type="submit" id="loginBtn" class="btn btn-lg btn-primary btn-block">로그인</button>
		<p class="mt-5 mb-3 text-muted text-center">&copy; 김서연가족</p>
	</form>

</body>
</html>