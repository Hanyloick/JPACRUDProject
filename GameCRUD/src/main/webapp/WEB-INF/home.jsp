<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="navbar.jsp"/>
<<div class="container-fluid">
		<h1>Games'n'more....Games</h1>
		<form action="getGame.do" method="GET">
			<div class="row">
				<div class="col-sm-8">
					Game ID: <input class="form-control" type="text" name="gameId" />
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
						<td><a href="getGame.do?gameId=${game.id}"> ${game.title} </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>