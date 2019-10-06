<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script type="text/javascript">
//<![CDATA[
$(document).ready(function(){
	//var strArr = [ 'H', 'i', ' ', 'W', 'o', 'r', 'l', 'd' ];
	var strArr = [ "{", "p", "a", "g", "e", ":", "1", ",", "l", "i", "s", "t", ":", "1", "0", "}" ];

	//여기부터 시작
	var resultStr = '';
	var idx = -1;
	$.each(strArr, function(index, item){
		if(idx == index){
			item = '\"' + item;
			idx = -1;
		}else if(':' == item){
			idx = index + 1;
		}else if(',' == item || index == strArr.length - 1){
			item = '\"' + item;
		}
		resultStr += item;
	});
	//여기까지
	
	console.log('resultStr: ' + resultStr);
	
});
 //]]>
</script>

</head>
<body>
ttt
<form class="cmxform" id="commentForm" method="get" action="">
	<input type="text" id="test" value="" readonly>
</form>


</body>
</html>
