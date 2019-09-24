<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

  <title>PUSH</title>

  <!-- Custom fonts for this template-->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="/resources/css/sb-admin.css" rel="stylesheet">
  
  <!-- Begin emoji-picker Stylesheets -->
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="/resources/css/emoji/emoji.css" rel="stylesheet">
<!--   	<link rel="shortcut icon" href="/resources/images/emoji/img/favicon.png"> -->
    <!-- End emoji-picker Stylesheets -->

</head>

<body class="bg-dark">
	
	<div class="container">
	  <div class="card card-register mx-auto mt-5">
	    <div class="card-header">PUSH</div>
	    <div class="card-body">
	      <form id="pushForm" action="/pushAll.do">
	        <div class="form-group">
	          <div class="form-row">
	            <div class="col-md-6">
	              <div class="form-label-group">
	                <input type="button" id="firstName2" class="btn btn-primary btn-block" placeholder="First name" required="required" autofocus="autofocus" value="전체발송" >
	              </div>
	            </div>
	            <div class="col-md-6">
	              <div class="form-label-group">
	                <input type="button" id="firstName" class="btn btn-primary btn-block" placeholder="First name" required="required" autofocus="autofocus" value="선택발송" disabled>
	              </div>
	            </div>
	          </div>
	        </div>
	        
	        <!-- 단일발송 -->
	        <div class="form-group">
						<div class="form-label-group">
							<!-- 	            <textarea id="inputMSG" class="form-control" required="required"></textarea> -->
							<p class="lead emoji-picker-container">
								<input type="hidden" id="push_content" name="push_content" value="">
								<textarea class="form-control textarea-control" id="pushMSG" name="pushMSG" rows="3" placeholder="Push Message" data-emojiable="true" data-emoji-input="unicode" required="required"></textarea>
							</p>
						</div>
					</div>
	        <!-- 단일발송 -->
	        
	        <!-- 선택발송 -->
<!-- 	        <div class="form-group"> -->
<!-- 	          <div class="form-row"> -->
<!-- 	            <div class="col-md-6"> -->
<!-- 	              <div class="form-label-group"> -->
<!-- 	                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required"> -->
<!-- 	                <label for="inputPassword">Password</label> -->
<!-- 	              </div> -->
<!-- 	            </div> -->
<!-- 	            <div class="col-md-6"> -->
<!-- 	              <div class="form-label-group"> -->
<!-- 	                <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm password" required="required"> -->
<!-- 	                <label for="confirmPassword">Confirm password</label> -->
<!-- 	              </div> -->
<!-- 	            </div> -->
<!-- 	          </div> -->
<!-- 	        </div> -->
	        <!-- 선택발송 -->
	        
	        <!-- <a class="btn btn-primary btn-block" href="javascript:pushSend();">push</a> -->
	        <a class="btn btn-primary btn-block" href="javascript:pushSend();">push</a>
	        <button type="submit">push2</button>
	      </form>
	      <div class="text-center">
<!-- 	        <a class="d-block small mt-3" href="login.html">Login Page</a> -->
<!-- 	        <a class="d-block small" href="forgot-password.html">Forgot Password?</a> -->
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- Bootstrap core JavaScript-->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<!-- Core plugin JavaScript-->
	<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	
	<!-- Begin emoji-picker JavaScript -->
    <script src="/resources/js/emoji/config.js"></script>
    <script src="/resources/js/emoji/util.js"></script>
    <script src="/resources/js/emoji/jquery.emojiarea.js"></script>
    <script src="/resources/js/emoji/emoji-picker.js"></script>
	<script>
      $(function() {
        // Initializes and creates emoji set from sprite sheet
        window.emojiPicker = new EmojiPicker({
          emojiable_selector: '[data-emojiable=true]',
          assetsPath: '/resources/images/emoji/img/',
          popupButtonClasses: 'fa fa-smile-o'
        });
        // Finds all elements with `emojiable_selector` and converts them to rich emoji input fields
        // You may want to delay this step if you have dynamically created input fields that appear later in the loading process
        // It can be called as many times as necessary; previously converted input fields will not be converted again
        window.emojiPicker.discover();
        
      });
    </script>
    <!-- End emoji-picker JavaScript -->
    <script>
	
    var cotents = '${cotents }';
    
    $('#pushMSG').text(cotents);
    
    charToUnicode = function(str) {
		  if (!str) return false; // Escaping if not exist
		  var unicode = '';
		  for (var i = 0, l = str.length; i < l; i++) {
		    unicode += '\\' + str[i].charCodeAt(0).toString(16);
		  };
		  return unicode;
		}
    
    	function pushSend(){
    		//begin 작업
    		var msg = $('#pushMSG').val();
    		alert(msg);
    		if(msg){
    			var encodingMsg = charToUnicode(msg); 
				alert(encodingMsg);
				$('#push_content').val(encodingMsg);
 	    		//$('#pushForm').submit();
				
				
    		}else{
    			alert('Please write your message.');
    		}
    	}
    	
    </script>
</body>

</html>
