<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">

<!-- Jquery CDN -->
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>





<style>
#footer {
	position: absolute;
	bottom: 0;
	padding: 50px;
	font-size: 15px;
	width: 100%;
}
</style>

<title>Board</title>
</head>
<body>

	<!-- nav -->
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">MOONBLACK</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active"><a class="nav-link" href="home.bo">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="board.bo">Board</a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		</nav>
	</header>

	<!-- table -->
	<section class=container>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">글 제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var='list' items="${boardListData}">
					<tr>
						<th scope="row">${list.seq}</th>
						<td>${list.title}</td>
						<td>${list.writer}</td>
						<td>${list.date}</td>
					</tr>
				</c:forEach>

				<%-- 					<c:forEach items="${result}" var='resultVal'> --%>
				<!-- 			<tbody> -->
				<!-- 				<tr> -->
				<%-- 					<td>${resultVal.seq}</td> --%>
				<%-- 					<td>${resultVal.writer}</td> --%>
				<%-- 					<td>${resultVal.contents}</td> --%>
				<!-- 			</tbody> -->


				<!-- 					글 내용 나오는 건 다른 곳에서 : 클릭시 hover되어 나오거나 ?  -->
			</tbody>
		</table>
	</section>


	<!-- 	pagination -->
	<section class=container>

		<nav aria-label="Page navigation example">
			<ul class="pagination">


				<!-- 현재 페이지 수가 1보다 작다면 왼쪽 화면 없애기 -->
				<c:choose>
					<c:when test="${currentPageNum>1}">
						<li class="page-item"><a class="page-link"
							href="board.bo?currentPageNum=${currentPageNum-1}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
						</a></li>
					</c:when>
					<c:when test="${currentPageNum==1}">

					</c:when>
				</c:choose>


				<c:choose>
					<c:when test="${lastPageNull}">

					</c:when>
					<c:otherwise>

						<li class="page-item"><a class="page-link"
							style="font-weight: 600;"
							href="board.bo?currentPageNum=${currentPageNum}">${currentPageNum}</a></li>
						<li class="page-item"><a class="page-link"
							href="board.bo?currentPageNum=${currentPageNum+1}">${currentPageNum+1}</a></li>

						<li class="page-item"><a class="page-link"
							href="board.bo?currentPageNum=${currentPageNum+1}"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
								class="sr-only">Next</span>
						</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>

	</section>

	<!-- 작성 글 관련 버튼들 -->
	<section class=container>
		<div class="btn-group" role="group" aria-label="Basic example">
			<button id="writing" type="button" class="btn btn-secondary"
				data-toggle="modal" data-target="#writingModal" data-whatever="@mdo">글쓰기</button>
			<button type="button" class="btn btn-secondary">글 지우기</button>
			<button type="button" class="btn btn-secondary">글 바꾸기</button>
			<button type="button" class="btn btn-primary" id=dummyDataAdd>DummyData</button>

		</div>
	</section>


	<!-- 	글 작성 모달 -->
	<div class="modal fade" id="writingModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">글쓰기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="writing.bo" method=get>
					<div class="modal-body">
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">글 제목</label> <input
								type="text" name="title" class="form-control"
								id="recipient-name">
						</div>
						<div class="form-group">
							<label for="message-text" class="col-form-label">글 내용</label>
							<textarea class="form-control" id="message-text" name="contents"></textarea>
							<input type="hidden" name="writer"
								value="${sessionScope.loginId}">
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">닫기</button>
						<button type="submit" class="btn btn-primary">쓰기</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<script>
		$(document).ready(function() {
			$("#dummyDataAdd").click(function() {
				// 				$(this).attr("href", "getDummyData.bo");

				location.href = "getDummyData.bo";

			})

		})
	</script>


	<!-- 	footer -->
	<footer class="footer">
		<div class="container">
			<span class="text-muted">SpringPractice 2018 / 07 / 19 </span>
		</div>
	</footer>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
		integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
		crossorigin="anonymous"></script>
</body>
</html>

