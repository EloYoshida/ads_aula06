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
	  <c:choose>
	     <c:when test = "${param.acao == 'Editar'}">
            <h1>Editar Filme</h1>
         </c:when>
	   	 <c:when test = "${param.acao == 'Visualizar'}">
            <h1>Visualizar Filme</h1>
         </c:when>
	    <c:otherwise>
           <h1>Novo Filme</h1>
         </c:otherwise>
	  </c:choose>
	  	
	  	
		
		<hr>
		<p> Digite os dados do filme para cadastrar</p>
		<form action="manter_filmes.do" method="POST">
	
				<c:if test="${param.acao == 'Visualizar'}">
					<c:set var="readOnly" value="readOnly='readOnly'"></c:set>
				</c:if>
				
				<div class="form-group ">
			    	<label for="titulo">Título do Filme</label>
			    	<div class="input-group">
					  <span class="input-group-addon">
					  	<i class="glyphicon glyphicon-film"></i>
					  </span> 
					  <input type="text" required class="form-control" value="${filme.titulo}" ${readOnly}  id="titulo" name="titulo" placeholder="Título do Filme" aria-describedby="sizing-addon1">
					</div>
			  	</div>
			  	
			  	<div class="form-group ">
			    	<label for="descricao">Descrição do Filme:</label>
			    	<div class="input-group">
					  <span class="input-group-addon" >
					  	<i class="glyphicon glyphicon-info-sign"></i>
					  </span>
					  <textarea class="form-control" required id="descricao" ${readOnly}   name="descricao" rows="3"> ${filme.descricao}</textarea>
					</div>
			  	</div>
			  	
			  	<div class="form-group ">
			    	<label for="diretor">Diretor:</label>
			    	<div class="input-group">
					  <span class="input-group-addon" >
					  	<i class="glyphicon glyphicon-bullhorn"></i>
					  </span>
					  <input type="text" required class="form-control" id="diretor" ${readOnly}  value="${filme.diretor}" name="diretor" placeholder="Diretor do Filme" aria-describedby="sizing-addon1">
					</div>
			  	</div>
			  	
			  		
			  	<div class="form-group ">
			    	<label for="genero">Gênero:</label>
			    	<div class="input-group">
						<span class="input-group-addon" >
					  		<i class="glyphicon glyphicon-tag"></i>
					  	</span>
					  
					  	<select name="genero" id="genero" class="form-control" ${readOnly}  required >
					  	    <option value="${filme.genero.id}" selected>${filme.genero.nome}</option>
							<c:forEach var="genero" items="${generos}">
							<option value="${genero.id}">${genero.nome}</option>
							</c:forEach>
						</select>
					</div>
			  	</div>
	
				<div class="form-group ">
				  	<div class="row">
	  					<div class="col-md-6">
				  	   		<div class="input-group col-md-12">
				  	
						    	<label for="data_lancamento">Lançamento:</label>
						    	<div class="input-group ">
								  <span class="input-group-addon" >
								  	<i class="glyphicon glyphicon-calendar"></i>
								  </span>
								  <input type="date" required class="form-control"  ${readOnly}  value="${filme.dataLancamento}"  id="data_lancamento" name="data_lancamento" placeholder="Data de Lançamento" aria-describedby="sizing-addon1">
								</div>
				  			</div>
				  		</div>
						<div class="col-md-6">
	    					<div class="input-group col-md-12">
						    	<label for="popularidade">Popularidade:</label>
						    	<div class="input-group ">
								  <span class="input-group-addon" >
								  	<i class="glyphicon glyphicon-thumbs-up"></i>
								  </span>
								  <input type="number" required class="form-control" ${readOnly}  id="popularidade" value="${filme.popularidade}" name="popularidade" placeholder="Data de Lançamento" aria-describedby="sizing-addon1">
								</div>
							</div>
						</div>
				  	</div>
			  	</div>
	
	
	
		  					
			  	<div class="form-group ">
			    	<label for="poster_path">URL do Pôster:</label>
			    	<div class="input-group">
						<span class="input-group-addon" >
					  		<i class="glyphicon glyphicon-link"></i>
					  	</span>
					  	<input type="text" required class="form-control" id="poster_path" ${readOnly}  value="${filme.posterPath}" name="poster_path" placeholder="URL do Pôster" aria-describedby="sizing-addon1">
					  	
					</div>
			  	</div>
			  	
				<div class="btn-group pull-right">
			  		  <c:choose>
					     <c:when test = "${param.acao == 'Editar'}">
				            <input type="submit"  class="btn btn-success"  value="atualizar">
				            <input type="hidden" name="id" value="${filme.id}">
				         </c:when>
					   	 <c:when test = "${param.acao == 'Visualizar'}">
				         </c:when>
					    <c:otherwise>
				           <input type="submit"  class="btn btn-success" value="inserir">
				         </c:otherwise>
					  </c:choose>
    				  <input type="hidden" name="acao" value="inserir"> 
				        			  			
   				</div>		
   			</form>
	  </div>
    </div>
</body>
</html>
