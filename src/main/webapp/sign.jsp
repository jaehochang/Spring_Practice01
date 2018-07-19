<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script type="text/javascript">
  $(document).ready(function() {
		
		$("#back").click(function() {
			$(location).attr("href","login.do");
		});
		
		$("#send").click(function() {
			$("#inst").submit();
		})
		
	})
  </script>
  <style>
  	div{
		box-sizing: border-box;
		border: 1px dotted black; 
	}
	
	#wrapper{
	width:400px;
	margin: 0px auto;
	}
	#conven{
	 width: 100%;
	 box-sizing: border-box;
	}
	
  </style>
</head>
<body>
	<div id="wrapper">
		<div id="conven">
		 	<form action="signProc.do" method="post" id="inst">
			Email : <input type="text" name="email" placeholder="email"> <br>
			Password : <input type="text" name="pw" placeholder="password"> <br>
			nickname <input type="text" name="nickname" placeholder="nickanme"> <br>
			<button id="send" type="button">등록</button>
			<button id="back" type="button">뒤로</button>
		 	</form>
		</div>
	</div>
</body>
</html>