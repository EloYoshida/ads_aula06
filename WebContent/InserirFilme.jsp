<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Cadastrar Filme</title>
	<!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
  <c:import url="Menu.jsp"/>
	<div class="container">
	  <div class="row">
		<h1>Novo Filme</h1>
		<hr>
		<p> Digite os dados do filme para cadastrar</p>
		<form action="manter_filmes.do" method="POST">
	
	
					<div class="form-group ">
			    	<label for="titulo">Título do Filme</label>
					<input type="text" required class="form-control" id="titulo" name="titulo" placeholder="Título do Filme" aria-describedby="sizing-addon1">
			  	</div>
			  	
			  	<div class="form-group ">
				   <label for="descricao">Descrição do Filme:</label>
				   <textarea class="form-control" required id="descricao"  name="descricao" rows="3"></textarea>
			  	</div>
			  	
			  	<div class="form-group ">
			    	<label for="diretor">Diretor:</label>
					<input type="text" required class="form-control" id="diretor" name="diretor" placeholder="Diretor do Filme" aria-describedby="sizing-addon1">
			  	</div>
			  	
			  		
			  	<div class="form-group ">
			    	<label for="genero">Gênero:</label>
					<select name="genero" id="genero" class="form-control" required>
						<c:forEach var="genero" items="${generos}">
						<option value="${genero.id}">${genero.nome}</option>
						</c:forEach>
					</select>
			  	</div>
			  	
				<div class="form-group ">
			    	<label for="data_lancamento">Lançamento:</label>
					<input type="date" required class="form-control" id="data_lancamento" name="data_lancamento" placeholder="Data de Lançamento" aria-describedby="sizing-addon1">
				</div>
			  	
				<div class="form-group ">
			    	<label for="popularidade">Popularidade:</label>
					<input type="number" required class="form-control" id="popularidade" name="popularidade" placeholder="Data de Lançamento" aria-describedby="sizing-addon1">
				</div>
			  					
				<div class="form-group ">
			    	<label for="poster_path">URL do Pôster:</label>
			    	<input type="text" required class="form-control" id="poster_path" name="poster_path" placeholder="URL do Pôster" aria-describedby="sizing-addon1">
				</div>
			  	
			  	
				<div class="btn-group">
			  			<input type="submit"  class="btn btn-success" name="acao" value="inserir">
   				</div>		
   			</form>
	  </div>
    </div>
</body>
</html>