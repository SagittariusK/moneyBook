<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="icon" href="../../../../favicon.ico">

    <title>로그인</title>
    
    <!-- fontawesome CSS -->
    <link rel="stylesheet" href="/resources/fontawesome_free_5_10_1_web/css/all.min.css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="/resources/bootstrap4_3_1/css/bootstrap.min.css">
    <script src="/resources/bootstrap4_3_1/js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <!-- <link rel="stylesheet" href="/resources/hk/login/login.css?ver=1"> -->
    
    <!-- JQuery 3.3.1 -->
    <script src="/resources/jquery3_4_1/js/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div class="bg">
		
    </div>
    <form class="form-signin">
		<div>
			<i class="fas fa-dollar-sign fa-5x"></i>
			<h1 class="h3 col-sm-8 col-md-8 col-lg-8 font-weight-normal" style="color: #fff;">로그인 해주세요</h1>
			
			<label for="inputId" class="sr-only">Id address</label>
			<input type="email" id="inputId" class="form-control" placeholder="Id address" required autofocus>
			<label for="inputPassword" class="sr-only">Password</label>
			<input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
			<div class="checkbox mb-3">
				<label style="color: #fff;">
					<input type="checkbox" value="remember-me" > 기억하기
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
			<p class="mt-5 mb-3 text-muted">&copy; 김서연가족</p>
		</div>
    </form>
</body>
</html>
