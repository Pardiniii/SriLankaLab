<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="utils.ConnectionFactory"%>
<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/login.css">
<title>Login</title>
</head>
<body>

<header>
        <div class="top-header">
            <div class="logo">
                <a href="../index.jsp"><img src="../img/Logo pi.png" alt="Logo"></a>
            </div>
            <div class="barra-pesquisa">
                <input type="text" placeholder="Pesquisar...">
                <button type="submit"><img src="../img/Lupa.png" width="25px"></button>
            </div>

            <div class="Login">
                <p>
                    <a class="logar" href="#">Login</a>
                    |
                    <a class="cadastrar" href="#">Cadastre-se</a>
                </p>
            </div>
        </div>
        <nav class="itens">
            <ul>
                <li><a href="#">Novidades</a></li>
                <li><a href="#">Creatina</a></li>
                <li><a href="#">Whey </a></li>
                <li><a href="#">Pré Treino</a></li>
            </ul>
        </nav>
    </header>

    
	<form class="formLogin" action="" method="post">
		<h1>Login</h1>
		<input type="email" name="email" id="email" placeholder="Email"> 
		<br><br> 
		<input type="password" name="senha" id="senha" placeholder="Senha">
		<br><br> 
		<button class="entrar" type="button">Entrar</button>
		<a class="esqueci-senha" href="#">Esqueci minha senha</a>
	</form>

</body>
</html>