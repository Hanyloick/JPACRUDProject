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
<h1>add Game</h1>
	<div class='container-fuild'>
		<form action="createGame.do" method="POST">
			
			<label for="Title">Title: </label>
				<input type="text" name="title"/>
			
			<label for='Price'>Price: </label>
				<input type='number' name='price'/>
			
			<label for='Publisher'>Publisher:</label> 
				<input type='text' name='publisher'/>		 
			
			<label for='Rating'>Rating: </label>
				<select id="rating" name="rating">
					<option value="E">E</option>
					<option value="E10">E10</option>
					<option value="T">T</option>
					<option value="A17">A17</option>
					<option value="M18">M18</option>
					<option value="RP">Rating Pending</option>
					<option value="RP18">Rating Pending(18+ expected)</option>
				</select>
			
			<label for='Category'>Category: </label>
				<input type='text' name='category'/>
			
			<label for='type'>Type Of Game: </label>
				<select name='type'>
					<option value='Video'>Video</option>
					<option value='Board'>Board</option>
					<option value='Card'>Card</option>
					<option value='Table Top'>TTRPG</option>
				</select>		 
			
			<label for='Release Year'>Release Year: </label>	
				<input type='number' min='1600'/>
			
			<label for='Description'>Description: </label>
				<input type='text' name='description'/>
				
			<input type='submit' name='Add Game'>	 	
		</form>
	</div>	
	
<jsp:include page="bootstrapFoot.jsp" />	
</body>
</html>