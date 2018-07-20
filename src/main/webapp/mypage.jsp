<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700">


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>mypage</title>
<style>
	table{
		margin:0px auto;
		box-sizing:border-box;	
	}
</style>
<script>
	$(document).ready(function(){
		
			$("#info-change-btn").click(function(){
				
			
				
				
			})
			
			$("#info-cancel-btn").click(function(){
				
				/* 	$("location").attr("href", "update.do"); */
				
				
			})
		
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

						<li class="active"><a href="logout.do">Logout</a></li>
						
					</ul></li>
			</ul>
		</div>
	</nav>
	<c:choose>
	
	<c:when test="${updateResult != null}">
		
		<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				
					<h2 style="text-align: center;">MyPage</h3><br>
					<table>
					
					<c:forEach var="item" items="${updateResult}">
					
					<div class="form-group">
					<tr>
						<td style="width:100px"><b>No<td id="value">${item.seq}
					</tr>
					</div>
					<div class="form-group">
					<tr>
						<td style="width:100px"><b>Email<td id="value">${item.email}
					</tr>
						
					</div>
					<tr>
						<td style="width:100px"><b>Nickname<td id="value">${item.nickname}
					</tr>
						
					</c:forEach>
				
				</table>
				<br>
				<br>
				
				<input type="button" value="수정" class="btn btn-toggle btn btn-warning" data-toggle="modal"  data-target="#myModal" style="width:150px; margin-left:35px;">
				<div class="modal fade" id="myModal">
  				<div class="modal-dialog">
    			<div class="modal-content">
      			<div class="modal-header" style="background-color:#edc02d"></div>
      			<div class="modal-body">
      			 <form action="update.do" method=post>
      			
      				<c:forEach var="item" items="${updateResult}">
      				 <div class="md-form mb-5">
                        <br> <i class="fa fa-user prefix grey-text"></i> <label
                           data-error="한글만 입력해주세요." data-success="O.K" for="form34">No</label><input
                           type="text" id="form34" class="form-control validate"
                           name="seq" readonly="readonly" value="${item.seq}"> 
                     </div>
       		 		 <div class="md-form mb-5">
                        <br> <i class="fa fa-user prefix grey-text"></i> <label
                           data-error="한글만 입력해주세요." data-success="O.K" for="form34">Email</label><input
                           type="text" id="form34" class="form-control validate"
                           name="email" readonly="readonly" value="${item.email}"> 
                     </div>
                      <div class="md-form mb-5">
                        <br> <i class="fa fa-location-arrow prefix grey-text"
                           aria-hidden="true"></i> <label data-error="올바른 입력이 아닙니다."
                           data-success="O.K" for="form29">NickName</label><input type="text" id="form29"
                           class="form-control validate" 
                           name=nickname value="${item.nickname}"> 
                     </div>
                     
                     <div class="modal-footer d-flex justify-content-center">
                     <button id=info-cancel-btn
                        class="btn btn-secondary btn btn-warning btn-rounded mb-4 rgba-purple-strong waves-effect waves-light"  type="button" class="btn close_link" data-dismiss="modal">
                        취소<i class="fa fa-paper-plane-o ml-1"></i>
                     </button>
                     <button id=info-change-btn
                        class="btn btn-secondary btn btn-warning btn-rounded mb-4 rgba-purple-strong waves-effect waves-light">
                        수정<i class="fa fa-paper-plane-o ml-1"></i>
                     </button>

                  </div>
                </c:forEach>
      			</div>
      			</form>
      			<div class="modal-footer"></div>
    			</div>
  				</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
		
	</c:when>
	
	<c:otherwise>

	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				
					<h2 style="text-align: center;">MyPage</h3><br>
					<table>
					
					<c:forEach var="item" items="${result}">
					
					<div class="form-group">
					<tr>
						<td style="width:100px"><b>No<td id="value">${item.seq}
					</tr>
					</div>
					<div class="form-group">
					<tr>
						<td style="width:100px"><b>Email<td id="value">${item.email}
					</tr>
						
					</div>
					<tr>
						<td style="width:100px"><b>Nickname<td id="value">${item.nickname}
					</tr>
						
					</c:forEach>
				
				</table>
				<br>
				<br>
				
				<input type="button" value="수정" class="btn btn-toggle btn btn-warning" data-toggle="modal"  data-target="#myModal" style="width:150px; margin-left:35px;">
				<div class="modal fade" id="myModal">
  				<div class="modal-dialog">
    			<div class="modal-content">
      			<div class="modal-header" style="background-color:#edc02d"></div>
      			<div class="modal-body">
      			 <form action="update.do" method=post>
      			
      				<c:forEach var="item" items="${result}">
      				 <div class="md-form mb-5">
                        <br> <i class="fa fa-user prefix grey-text"></i> <label
                           data-error="한글만 입력해주세요." data-success="O.K" for="form34">No</label><input
                           type="text" id="form34" class="form-control validate"
                           name="seq" readonly="readonly" value="${item.seq}"> 
                     </div>
       		 		 <div class="md-form mb-5">
                        <br> <i class="fa fa-user prefix grey-text"></i> <label
                           data-error="한글만 입력해주세요." data-success="O.K" for="form34">Email</label><input
                           type="text" id="form34" class="form-control validate"
                           name="email" readonly="readonly" value="${item.email}"> 
                     </div>
                      <div class="md-form mb-5">
                        <br> <i class="fa fa-location-arrow prefix grey-text"
                           aria-hidden="true"></i> <label data-error="올바른 입력이 아닙니다."
                           data-success="O.K" for="form29">NickName</label><input type="text" id="form29"
                           class="form-control validate" 
                           name=nickname value="${item.nickname}"> 
                     </div>
                     
                     <div class="modal-footer d-flex justify-content-center">
                     <button id=info-cancel-btn
                        class="btn btn-secondary btn btn-warning btn-rounded mb-4 rgba-purple-strong waves-effect waves-light"  type="button" class="btn close_link" data-dismiss="modal">
                        취소<i class="fa fa-paper-plane-o ml-1"></i>
                     </button>
                     <button id=info-change-btn
                        class="btn btn-secondary btn btn-warning btn-rounded mb-4 rgba-purple-strong waves-effect waves-light">
                        수정<i class="fa fa-paper-plane-o ml-1"></i>
                     </button>

                  </div>
                </c:forEach>
      			</div>
      			</form>
      			<div class="modal-footer"></div>
    			</div>
  				</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
</c:otherwise>
</c:choose>
</body>
</html>