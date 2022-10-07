<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.*" import="java.lang.*"%>
<%@ page import="modelo.entidade.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Cadastro Cliente</title>
	</head>
	<body>
		<h1>Cliente</h1>
			<%
			
				String nome = request.getParameter("nome");
				String sobrenome = request.getParameter("sobrenome");
				int idade = Integer.parseInt(request.getParameter("idade"));
				String cpf = request.getParameter("cpf");
				String email = request.getParameter("email");
				String telefone = request.getParameter("telefone");
				String endereco = request.getParameter("endereco");
				String cidade = request.getParameter("cidade");
				String estado = request.getParameter("estado");
				String cep = request.getParameter("cep");
				
				Cliente cliente = new Cliente();
				cliente.setNome(nome);
				cliente.setSobrenome(sobrenome);
				cliente.setIdade(idade);
				cliente.setCpf(cpf);
				cliente.setEmail(email);
				cliente.setTelefone(telefone);
				cliente.setEndereco(endereco);
				cliente.setCidade(cidade);
				cliente.setEstado(estado);
				cliente.setCep(cep);
				
				out.print("<b>Registros - Clientes: </b>");
				out.print("<br>	Nome: " +  cliente.getNome());
				out.print("<br>	Sobrenome: " +  cliente.getSobrenome());
				out.print("<br>	Idade: " +  cliente.getIdade());
				out.print("<br>	CPF: " +  cliente.getCpf());
				out.print("<br>	E-mail: " +  cliente.getEmail());
				out.print("<br>	Telefone: " +  cliente.getTelefone());
				out.print("<br>	Endereço: " +  cliente.getEndereco());
				out.print("<br>	Cidade: " +  cliente.getCidade());
				out.print("<br>	Estado: " +  cliente.getEstado());
				out.print("<br>	CEP: " +  cliente.getCep());	
			
			%>
	</body>
	
</html>