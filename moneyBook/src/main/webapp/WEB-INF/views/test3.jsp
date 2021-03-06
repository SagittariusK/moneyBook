<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js">
</script>

<script type="text/javascript">
//<![CDATA[
$(function() {
  $("#commentForm").validate();
});
 //]]>
</script>

</head>
<body>

<form class="cmxform" id="commentForm" method="get" action="">
	<fieldset>
		<legend>이름, 이메일, 의견을 입력해주세요.</legend>
		<p>
			<label for="cname">이름 (필수, 2 자 이상)</label>
			<input id="cname" name="name" minlength="2" type="text" required>
		</p>
		<p>
			<label for="cemail">이메일 (필수)</label>
			<input id="cemail" type="email" name="email" required>
		</p>
		<p>
			<label for="curl">URL (선택)</label>
			<input id="curl" type="url" name="url">
		</p>
		<p>
			<label for="ccomment">의견 (필수)</label>
			<textarea id="ccomment" name="comment" required></textarea>
		</p>
		<p>
			<input class="submit" type="submit" value="Submit">
		</p>
	</fieldset>
</form>


</body>
</html>
