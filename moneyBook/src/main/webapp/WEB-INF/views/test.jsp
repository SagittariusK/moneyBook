<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>스크립트 3 - display</title>
    <style>
		li > ul{ display:none;}
		.testSel_txt{ display:none;}
    </style>
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>
<div class="accordian">
	<ul>
		<li>
			<h1>자 타이틀입니다<span class="ico_ar">▼</span></h1>
			<ul>
				<li>여기엔 내용이 들어가겠졍</li>
			</ul>
		</li>
		<li class="active">
			<h1>자 타이틀입니다<span class="ico_ar">▼</span></h1>
			<ul>
				<li>여기엔 내용이 들어가겠졍</li>
			</ul>
		</li>
		<li>
			<h1>자 타이틀입니다<span class="ico_ar">▼</span></h1>
			<ul>
				<li>여기엔 내용이 들어가겠졍</li>
			</ul>
		</li>
		<li>
			<h1>자 타이틀입니다<span class="ico_ar">▼</span></h1>
			<ul>
				<li>여기엔 내용이 들어가겠졍</li>
			</ul>
		</li>
	</ul>
</div>

<!--활동Wrap-->
					<div class="enasTest_input">
						<div class="testSel">
							<h5>생각퐁퐁</h5>
							<!--평가요소-->
								<dl>
									<dt class="btn"><b>비언어표현력</b></dt>
									<dd>
										<div class="testSelWrap">
											<ul class="num pt6">
												<li><input type="radio" name="" id="radio1" ><label for="radio1"></label></li>
												<li><input type="radio" name="" id="radio2" ><label for="radio2"></label></li>
												<li><input type="radio" name="" id="radio3" ><label for="radio3"></label></li>
												<li><input type="radio" name="" id="radio4" ><label for="radio4"></label></li>
												<li><input type="radio" name="" id="radio5" ><label for="radio5"></label></li>
											</ul>
										</div>
										<div class="testSelWrap">
											<ul class="txt">
												<li><span>잘함</span></li>
												<li><span>잘함</span></li>
												<li><span>잘함</span></li>
												<li><span>잘함</span></li>
												<li><span>잘함</span></li>
											</ul>
										</div>
									</dd>
								</dl>
								<!--평가내용-->
								<div class="testSel_txt">
									자신의 생각을 몸이나 말로 실감나게 표현한다.
								</div>
								<!--//평가내용-->
							<!--//평가요소-->
						</div>
					</div>
					<!--//활동Wrap-->

<script>
$(function(){
	$(".btn").click(function(){
		$(".testSel_txt").slideToggle();
	});
	$(".accordian h1").click(function(){
		$(this).next().slideToggle();
	});
});
</script>

</div>
</body>
</html>