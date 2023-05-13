<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdateOrDeleteGame</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="navbar.jsp"/>
<body>
<h1>Add A Game</h1>
	<div class='container-fluid'>
		<div class='input-group mb-3'>
			<form action="createGame.do" method="POST">
				
				<label for="Title" class='form-label'>Title: </label>
					<input class='form-control' type="text" name="title"/>
				<label for='Price' class='form-label'>Price: </label>
					<input class='form-control' type='number' name='price' min='0.01' step='0.01'
					value='0.01'/>
				<br>
				<label for='Publisher' class='form-label'>Publisher:</label> 
					<input class='form-control' type='text' name='publisher'/>		 
				<label for='Category' class='form-label'>Category: </label>
					<input class='form-control' type='text' name='category'/>
				<br>
				<label for='type' class='form-label'>Type Of Game: </label>
					<select class='form-control' name='type'>
						<option selected value='Console'>Console</option>
						<option value='Board'>Board</option>
						<option value='Card'>Card</option>
						<option value='Table Top'>TTRPG</option>
					</select>
					<label for='Rating' class='form-label'>Rating: </label>
					<select class='form-select' id="rating" name="rating">
						<option value="E">E</option>
						<option value="E10">E10</option>
						<option value="T">T</option>
						<option value="A17">A17</option>
						<option value="M18">M18</option>
						<option value="RP">Rating Pending</option>
						<option value="RP18">Rating Pending(18+ expected)</option>
					</select>		 
				<br>
				<label for='Release Year' class='form-label'>Release Year: </label>	
					<input class='form-control' name='releaseYear' type='number' min='1600'/>
				<br>
				<label for='Description' class='form-label'>Description: </label>
					<input class='form-control' type='text' name='description'/>
				<br>	
				<input type='submit' class='btn btn-success' name='Add Game'>	 	
			</form>
		</div>	
	</div>
<jsp:include page="bootstrapFoot.jsp" />	
</body>
</html>