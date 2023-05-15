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
	<h1>Update Game</h1>
	<div class='container-fuild'>
		<form action="updateGame.do"  method="POST">
				<input type='hidden' value='${game.id}' name='id'/>
		<div class='row 3'>
			<div class='col-5 offset-1'>								
				<span class='input-group-text'>Title:</span>
					<input class='form-control' value='${game.title}' type="text" name="title"/>										
			</div>
			<div class='col-5'>
				<span class='input-group-text'>Price: </span>
					<input class='form-control' value='${game.price}' type='number' name='price' min='0.01' step='0.01' value='0.01'/>
			</div>																						
			<div class='col-5 offset-1'>
				<span class='input-group-text'>Publisher: </span> 
					<input class='form-control' type='text' value='${game.publisher}' name='publisher'/>
			</div>	
			<div class='col-5'>
				<span class='input-group-text'>Type Of Game: </span>
				<select class='form-control' name='type'>
					<option selected value='Console'>Console</option>
					<option value='Board'>Board</option>
					<option value='Card'>Card</option>
					<option value='Table Top'>TTRPG</option>
				</select>				
			</div>	
			<div class='col-5 offset-1'>		
				<span class='input-group-text'>Category: </span>
					<input class='form-control' value='${game.category}' type='text' name='category'/>
			</div>
			<div class='col-5'>				
				<span class='input-group-text'>Rating: </span>
					<select class='form-select' id="rating" name="rating">
						<option selected value="E">E</option>
						<option value="E10">E10</option>
						<option value="T">T</option>
						<option value="A17">A17</option>
						<option value="M18">M18</option>
						<option value="RP">Rating Pending</option>
						<option value="RP18">Rating Pending(18+ expected)</option>
					</select>		 			
			</div>
			<div class='col-5 offset-1'>							
				<span class='input-group-text'>Release Year: </span>	
					<input class='form-control' value='${game.releaseYear}' name='releaseYear' type='number' min='1600'/>
			</div>
			<div class='col-5'>
				<span class='input-group-text'>Image URL: </span>
					<input class='form-control' name='urlImg' type='text' value='${game.urlImg}'/>
			</div>					
			<div class='col-9 offset-1'>
				<span class='input-group-text'>Description: </span>
					<textarea class='form-control' rows='4' name='description'>${game.description}</textarea>								
				<input type='submit' class='btn btn-success' name='Add Game'>
			</div>
		</div>			
		</form>
		<div class='col-4 offset-1'>	
			<form action = "deleteGame.do" method = "POST">
		  		<input type = "hidden" name = "id" value="${game.id}"/>
		  		<input class='btn btn-danger' type = "submit" value = "Delete Game"/>
		  	</form>
	  	</div>
	</div>	
		
	
<jsp:include page="bootstrapFoot.jsp" />	
</body>
</html>