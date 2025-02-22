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
                    <a class="cadastrar" href="cadastroCliente.jsp">Cadastre-se</a>
                </p>
            </div>
        </div>
      
    </header>

    
	<form class="formLogin" action="" method="post">
		<h1>Login</h1>
		<input type="email" name="email" id="email" placeholder="Email"> 
		<br><br> 
		<input type="password" name="senha" id="senha" placeholder="Senha">
		<br><br> 
		<button class="entrar" type="submit">Entrar</button>
		<a class="esqueci-senha" href="../img/gato.png">Esqueci minha senha</a>
	</form>
	
	<%
	
	Connection conexao = ConnectionFactory.getConexao();

	if (conexao != null) {
	    if ((request.getParameter("email") != null) && (request.getParameter("senha") != null)) {
	        String login, senha;
	        login = request.getParameter("email");
	        senha = request.getParameter("senha");
	        Statement st;
	        ResultSet rs;

	        // Verificar se é o administrador
	        if ("admin@admin.com".equals(login) && "adm123".equals(senha)) {
	            response.sendRedirect("../indexAdmin.jsp");
	        } else {
	            // Verificar outros logins
	            st = conexao.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_FORWARD_ONLY);
	            rs = st.executeQuery("select * from clientes where email ='" + login + "' and senha ='" + senha + "'");
	            if (rs.next()) {
	                response.sendRedirect("../indexLogado.jsp");
	            } else {
	                out.println("Login ou senha inválidos");
	            }
	        }
	    } else {
	        out.println("Email ou senha não fornecidos");
	    }
	} else {
	    out.println("Não foi possível conectar ao banco de dados");
	}

	%>
	

</body>
</html>