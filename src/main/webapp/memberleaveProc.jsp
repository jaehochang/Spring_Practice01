<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
	<c:choose>
		<c:when test="${result>0 }">
			<script type="text/javascript">
				alert("성공하였습니다");
				$(location).attr("href","index.do");
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("실패하였습니다");
				$(location).attr("href","delete.do");
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>