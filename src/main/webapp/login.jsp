<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC>
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
<title>Login</title>
<style>
/* CSS Document */

/* ---------- GENERAL ---------- */
body {
	background: #e9e9e9;
	color: #9a9a9a;
	font: 100%/1.5em "Droid Sans", sans-serif;
	margin: 0;
}

a {
	text-decoration: none;
}

fieldset {
	border: 0;
	margin: 0;
	padding: 0;
}

h4, h5 {
	line-height: 1.5em;
	margin: 0;
}

hr {
	background: #e9e9e9;
	border: 0;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	height: 1px;
	margin: 0;
	min-height: 1px;
}

img {
	border: 0;
	display: block;
	height: auto;
	max-width: 100%;
}

input {
	border: 0;
	color: inherit;
	font-family: inherit;
	font-size: 100%;
	line-height: normal;
	margin: 0;
}

p {
	margin: 0;
}

.clearfix {
	*zoom: 1;
} /* For IE 6/7 */
.clearfix:before, .clearfix:after {
	content: "";
	display: table;
}

.clearfix:after {
	clear: both;
}

/* ---------- LIVE-CHAT ---------- */
#live-chat {
	bottom: 0;
	font-size: 12px;
	right: 24px;
	position: fixed;
	width: 300px;
}

#live-chat header {
	background: #293239;
	border-radius: 5px 5px 0 0;
	color: #fff;
	cursor: pointer;
	padding: 16px 24px;
}

#live-chat h4:before {
	background: #1a8a34;
	border-radius: 50%;
	content: "";
	display: inline-block;
	height: 8px;
	margin: 0 8px 0 0;
	width: 8px;
}

#live-chat h4 {
	font-size: 12px;
}

#live-chat h5 {
	font-size: 10px;
}

#live-chat form {
	padding: 24px;
}

#live-chat input[type="text"] {
	border: 1px solid #ccc;
	border-radius: 3px;
	padding: 8px;
	outline: none;
	width: 234px;
}

.chat-message-counter {
	background: #e62727;
	border: 1px solid #fff;
	border-radius: 50%;
	display: none;
	font-size: 12px;
	font-weight: bold;
	height: 28px;
	left: 0;
	line-height: 28px;
	margin: -15px 0 0 -15px;
	position: absolute;
	text-align: center;
	top: 0;
	width: 28px;
}

.chat-close {
	background: #1b2126;
	border-radius: 50%;
	color: #fff;
	display: block;
	float: right;
	font-size: 10px;
	height: 16px;
	line-height: 16px;
	margin: 2px 0 0 0;
	text-align: center;
	width: 16px;
}

.chat {
	background: #fff;
}

.chat-history {
	height: 252px;
	padding: 8px 24px;
	overflow-y: scroll;
}

.chat-message {
	margin: 16px 0;
}

.chat-message img {
	border-radius: 50%;
	float: left;
}

.chat-message-content {
	margin-left: 56px;
}

.chat-time {
	float: right;
	font-size: 10px;
}

.chat-feedback {
	font-style: italic;
	margin: 0 0 0 80px;
}
</style>

<script>
	$(document).ready(function() {
		$('#live-chat header').on('click', function() {

			$('.chat').slideToggle(300, 'swing');
			$('.chat-message-counter').fadeToggle(300, 'swing');

		});

		$('.chat-close').on('click', function(e) {

			e.preventDefault();
			$('#live-chat').fadeOut(300);

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
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="loginProc.do">
					<h3 style="text-align: center;">LOGIN</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="ID"
							name="email" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="PW"
							name="pw" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control"
						value="Login">

				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>



	<div id="live-chat">

		<header class="clearfix">

			<a href="#" class="chat-close">x</a>

			<h4>John Doe</h4>

			<span class="chat-message-counter">3</span>

		</header>

		<div class="chat">

			<div class="chat-history">

				<div class="chat-message clearfix">

					<img src="http://lorempixum.com/32/32/people" alt="" width="32"
						height="32">

					<div class="chat-message-content clearfix">

						<span class="chat-time">13:35</span>

						<h5>John Doe</h5>

						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Error, explicabo quasi ratione odio dolorum harum.</p>

					</div>
					<!-- end chat-message-content -->

				</div>
				<!-- end chat-message -->

				<hr>

				<div class="chat-message clearfix">

					<img
						src="http://gravatar.com/avatar/2c0ad52fc5943b78d6abe069cc08f320?s=32"
						alt="" width="32" height="32">

					<div class="chat-message-content clearfix">

						<span class="chat-time">13:37</span>

						<h5>Marco Biedermann</h5>

						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Blanditiis, nulla accusamus magni vel debitis numquam qui tempora
							rem voluptatem delectus!</p>

					</div>
					<!-- end chat-message-content -->

				</div>
				<!-- end chat-message -->

				<hr>

				<div class="chat-message clearfix">

					<img src="http://lorempixum.com/32/32/people" alt="" width="32"
						height="32">

					<div class="chat-message-content clearfix">

						<span class="chat-time">13:38</span>

						<h5>John Doe</h5>

						<p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>

					</div>
					<!-- end chat-message-content -->

				</div>
				<!-- end chat-message -->

				<hr>

			</div>
			<!-- end chat-history -->

			<p class="chat-feedback">Your partner is typing¡¦</p>

			<form action="#" method="post">

				<fieldset>

					<input type="text" placeholder="Type your message¡¦" autofocus>
					<input type="hidden">

				</fieldset>

			</form>

		</div>
		<!-- end chat -->

	</div>
	<!-- end live-chat -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>




	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>