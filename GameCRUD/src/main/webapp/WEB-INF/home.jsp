<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GameCRUD</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="container-fluid">
		<h1>Just A Couple Games</h1>		
		<form action="getGame.do" method="GET">
			<div class="row">
				<div class="col-sm-8">
					Game ID: <input class="form-control" type="text" name="id" />
				</div>
				<input class="col btn btn-primary" type="submit" value="Show Game" />
			</div>
		</form>
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="game" items="${gameList}">
					<tr>
						<td>${game.id }</td>
						<td>
							<form action="getGame.do?id=${game.id}" method="GET">
	        					<button  type="submit"class="btn btn-outline-success"> ${game.title}</button>
	        					<input type="hidden" name="id" value="${game.id}" />
	    					</form>
						</td>						
						<td>
							<form action="editGame.do" method="GET">
	        					<button  type="submit"class="btn btn-outline-success">Edit Game</button>
	        					<input type="hidden" name="id" value="${game.id}" />
	    					</form>
	    				</td>
	    				<td>
	    					<form action="deleteGame.do" method="POST">
  								<input type="hidden" name="id" value="${game.id}"/>
  								<input class='btn btn-danger' type="submit" value="Delete Game"/>
  							</form>	
	    				</td>	
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>