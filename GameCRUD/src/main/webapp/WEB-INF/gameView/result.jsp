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
<div class="container-fluid">
	<c:choose>
		<c:when test="${not empty game}">
			<h1>Game Details</h1>
			<div class="row">
				<div class="col-6">
					<div class="row">
						<h4 class="col-4 offset-3">${game.title}: </h4>
						<h4 class="col-4">( ${game.releaseYear} )</h4>
						<h5 class='col-4 offset-3'>${game.publisher}</h5>
						<h5 class='col-4'>$${game.price}</h5>
						<h5 class='col-4 offset-3'>Rated:${game.rating}</h5>
						<h5 class='col-4'>${game.type}</h5>
						<blockquote class='col-4 offset-3'>${game.description}</blockquote>
					</div>				
					<c:if test="${! empty game}">
						<div class='container'>
							<div class='row'>
								<div class='col-4 offset-3'>
									<form action="editGame.do" method="GET">
				        				<button type="submit" class='btn btn-success'>Edit Details</button>
				        				<input type="hidden" name="id" value="${game.id}" />
				    				</form>
			    				</div>
								<div class='col-4'>
									<form action="deleteGame.do" method="POST">
  										<input type="hidden" name="id" value="${game.id}"/>
  										<input class='btn btn-danger' type="submit" value="Delete Game"/>
  									</form>
  								</div>
							</div>					 						
  						</div>		
					</c:if>
				</div>
				<div class="col-6">
					<div class="row">
						<div class='image-container'>
							<iframe
								src='${game.urlImg}'
								width='500'
								height='450'
								frameborder='0'
								style='border:0'
								allowfullscreen>
							</iframe>
						</div>
					</div>					
				</div>
			</div>
		</c:when>
		
		<c:otherwise>
			<h3>Game not found.</h3>
		</c:otherwise>
	</c:choose>
</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>