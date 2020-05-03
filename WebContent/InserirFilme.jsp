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
			<p><label>Tí­tulo do Filme: </label><input type="text" name="titulo" required/></p>
			<p><label>Descrição: </label><input type="text" name="descricao" /></p>
			<p><label>Diretor: </label><input type="text" name="diretor"/>

			<label>Gênero: </label><select name="genero" required>
			<c:forEach var="genero" items="${generos}">
				<option value="${genero.id}">${genero.nome}</option>
			</c:forEach>
			</select>
			</p>

			<p><label>Lançamento: </label><input type="date" name="data_lancamento"/>
			<label>Popularidade: </label><input type="number" name="popularidade"/></p>
			<p><label>URL do Pôster: </label><input type="text" name="poster_path"/></p>
			<p><input type="submit" name="acao" value="inserir"></p>
		</form>
</body>
</html>
