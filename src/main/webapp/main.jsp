<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>메인</title>
</head>
<body>
	<div class="">
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
					<li class="active"><a href="main.jsp">Main</a></li>
					<!-- <li><a href="board.jsp">Board</a></li> -->
				</ul>



				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Member Management<span class="caret"></span></a>

						<ul class="dropdown-menu">
							<li><a href="mypage.do">마이페이지</a></li>
							<li><a href="modifyInfo.jsp">회원정보수정</a></li>
							<li><a href="memberleave.jsp">회원탈퇴</a></li>
							<li><a href="logout.jsp">로그아웃</a></li>
						</ul></li>
				</ul>

			</div>
		</nav>




		<br> <br>
		<div class="container" id="contents">
			<div class="jumbotron">
				<div class="container">

					<h1>환영합니다</h1>
					<p>뛰어난 팀원들의 다양한 기능을 맛보시죠</p>
					<a class="btn btn-primary btn-pull"
						href="http://www.iei.or.kr/main/main.kh" role="button">바로가기</a>
				</div>

			</div>


		</div>





	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>


</body>
</html>