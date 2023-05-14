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
			<form action="createGame.do" method="POST">
				<div class='row'>
					<div class=col-6>
						<div class='row'>
							<div class='input-group mb-3'>
								<span class='input-group-text'>Title:</span>
									<input class='form-control' type="text" name="title"/>							
								<span class='input-group-text'>Price: </span>
									<input class='form-control' type='number' name='price' min='0.01' step='0.01'
									value='0.01'/>	
							
								<span class='input-group-text'>Publisher: </span> 
									<input class='form-control' type='text' name='publisher'/>		 
								<span class='input-group-text'>Category: </span>
									<input class='form-control' type='text' name='category'/>		
							</div>					
						<div class='row'>
							<div class='col-3 cffset-2'>
								<span class='input-group-text'>Type Of Game: </span>
									<select class='form-control' name='type'>
										<option selected value='Console'>Console</option>
										<option value='Board'>Board</option>
										<option value='Card'>Card</option>
										<option value='Table Top'>TTRPG</option>
									</select>
							</div>
							<div class='col-6 offset-1'>		
								<span class='input-group-text'>Rating: </span>
									<select class='form-select' id="rating" name="rating">
									<option value="E">E</option>
									<option value="E10">E10</option>
									<option value="T">T</option>
									<option value="A17">A17</option>
									<option value="M18">M18</option>
									<option value="RP">Rating Pending</option>
									<option value="RP18">Rating Pending(18+ expected)</option>
								</select>		 
							</div>
							<span class='input-group-text'>Release Year: </span>	
							<input class='form-control' name='releaseYear' type='number' min='1600'/>
							
								<span class='input-group-text'>Description: </span>
								<textarea class='form-control' rows='4' name='description'></textarea>
													
						</div>
					</div>
				</div>
				<br>
				
				</div>
					
				<br>	
				<input type='submit' class='btn btn-success' name='Add Game'>	 	
			</form>
<jsp:include page="bootstrapFoot.jsp" />	
</body>
</html>