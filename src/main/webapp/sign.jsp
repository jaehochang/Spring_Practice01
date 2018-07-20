<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>회원가입</title>

<script type="text/javascript">
	$(document).ready(function() {

		$("#back").click(function() {
			$(location).attr("href", "login.do");
		});

		$("#send").click(function() {
              if($("#email").val()){
            	  $("#email").focus();
            	  alert("이메일을 입력해주세요");
            	  return false;
              }
              
              if($("#pw").val()){
            	  $("#pw").focus();
            	  alert("비밀번호를 입력해주세요");
            	  return false;
              }
              
              if($("#nickname").val()){
            	  $("#nickname").focus();
            	  alert("닉네임을 입력해주세요");
            	  return false;
              }
			$("#inst").submit();
		})

	})
</script>
<style>
#send {
	position: relative;
	left: -2px;
}

#back {
	position: relative;
	left: 10px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">Awesome Masterpiece</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">Main</a></li>
				<li><a href="board.jsp">Board</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Access<span class="caret"></span></a>
					<ul class="dropdown-menu">

						<li class="active"><a href="login.do">Login</a></li>
						<li><a href="sign.do">SignUp</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>


	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form action="signProc.do" method="post" id="inst">
					<h3 style="text-align: center;">Sign Up</h3>

					<div class="form-group">
						<label for="exampleInputEmail">EMAIL</label> <input
							class="form-control" type="text" name="email" id="email"
							placeholder="이메일을 적어주세요">

					</div>
					<br>
					<div class="form-group">
						<label for="exampleInputpw">PW</label> <input class="form-control"
							type="text" id="pw" name="pw" placeholder="비밀번호를 적어주세요">
					</div>
					<br>
					<div class="form-group">
						<label for="exampleInputnickname">NICKNAME</label> <input
							class="form-control" type="text" id="nickname" name="nickname"
							placeholder="닉네임을 적어주세요">
					</div>




				</form>

				<br>
				<br>
				<div class="form-group">
					<input type="button" class="btn btn-warning" id="send"
						value="Register" style="width: 50%; height:10%;"><input type="button"
						id="back" class="btn btn-default" style="width: 50%;height:10%;" value="Back">

				</div>


			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>


	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>