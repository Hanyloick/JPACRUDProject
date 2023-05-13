<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Details</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container">
	<c:choose>
		<c:when test="${not empty game}">
			<h1>Game Details</h1>
			<div>
				<h4>${game.title}(${game.releaseYear})</h4>
				<h5>${game.publisher}</h5>
				<h5>Rated ${game.rating}</h5>
				<blockquote>${game.description}</blockquote>
			</div>
		</c:when>
		
		<c:otherwise>
			<h3>Film not found.</h3>
		</c:otherwise>
	</c:choose>
</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>