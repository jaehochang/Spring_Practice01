<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
	<div id="wrapper">
	<form action="deleteProc.do" method="post" id="delmem">
		<div id="div-id">
			<input type="text" name="email" placeholder="이메일일 적어주세요">
		</div>
		<div id="div-pw">
			<input type="text" name="pw" placeholder="패스워드를 적어주세요">
		</div>
		
	</form>
	</div>
</body>
</html>