<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		$("#sendel").click(function() {
			$("#delmen").submit();
		});

		$("#back").click(function() {
			$(location).attr("href", "main.do");
		});

	})
</script>

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

						<li class="active"><a href="login.jsp">Login</a></li>
						<li><a href="sign.jsp">SignUp</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>


	<div class="container">
		<div id="wrapper">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<div class="jumbotron" style="padding-top: 20px;">
				<form action="deleteProc.do" method="post" id="delmem">
					<h3 style="text-align: center;"> 회원 탈퇴 </h3>
				
					<label>Email</label>
					<div id="div-id">
						<input type="text" name="email" placeholder="이메일일 적어주세요">
					</div>
					<br> <label>Password</label>
					<div id="div-pw">
						<input type="text" name="pw" placeholder="패스워드를 적어주세요">
					</div>
					<br>
					<button id="sendel" class="btn btn-warning" >삭제</button> &nbsp; 
					<button id="back" type="button"  class="btn btn-warning" >뒤로</button>
				</form>
				</div>
			</div>	
			<div class="col-lg-4"></div>
		</div>
	</div>
</body>
</html>