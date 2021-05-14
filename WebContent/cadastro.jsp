<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projeto de Bloco - TP7</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="jumbotron text-center">
  				<h1>Cadastro</h1>
			</div>
		
			<div class="container">
			<form action="cliente" method="post">
			
			<div class="form-group">
  				<label>Nome:</label>
 				 <input type="text" class="form-control" name="nome">
			</div>
			
			<div class="form-group">
  				<label>Email:</label>
 				 <input type="email" class="form-control" name="email">
			</div>
			
			<div class="form-group">
				<label>CPF:</label>
			 	<input type="text" class="form-control" name="cpf">
			</div>
			
			<div class="form-group">
				<label>Idade:</label>
			 	<input type="text" class="form-control" name="idade">
			</div>
			
			<label>Genero:</label>
			<div class="form-group">
				<div class="radio">
  					<label><input type="radio" name="genero" value="M"> Masculino</label>
  				</div>
  				<div class="radio">
					<label><input type="radio" name="genero" value="F"> Feminino</label>
				</div>
			</div>
			
			<div class="form-group">
				<label>User Name:</label>
			 	<input type="text" class="form-control" name="user">
			</div>
			
			<div class="form-group">
				<label>Password:</label>
			 	<input type="password" class="form-control" name="password">
			</div>
			
			<label>Serviços Marketing:</label>
			<div class="form-group">
				<div class="checkbox">
					<label><input type="checkbox" name="servicos" value="promocoes">Receber promoções</label>
				</div>
				<div class="checkbox">
					<label><input type="checkbox" name="servicos" value="cupons">Receber cupons de desconto</label>
				</div>
				<div class="checkbox">
					<label><input type="checkbox" name="servicos" value="novidades">Receber notificações sobre novidades da empresa</label>
				</div>
			</div>
			
			<button type="submit">Cadastrar</button>
			
		</form>
			</div>
</body>
</html>