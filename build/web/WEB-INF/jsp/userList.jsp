<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Listar Jogadores - Sistema de Informação - SCB</title>
	

        <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">

        <!-- Add custom CSS here -->
        <link href="<c:url value= "resources/css/simple-sidebar.css"/>" rel="stylesheet" type="text/css">




</head>
<body>
	 <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand"><a href="#">SCB</a>
                </li>
                <li><a href="#">Perfil</a>
                </li>
                <li><a href="#">Contacto</a>
                </li>
                <li><a href="register">Registar</a>
                </li>
                <li><a href="getList">Listar</a>
                </li>
                <li><a href="#">About</a>
                </li>
                <li><a href="#">Opções</a>
                </li>
                <li><a href="login">Logaut</a>
                </li>
            </ul>
        </div>

        <!-- Page content -->
        <div id="page-content-wrapper">
            <div class="content-header">
                <h1>
                    <a id="menu-toggle" href="#" class="btn btn-default"><i class="icon-reorder"></i></a>
                    Listar Jogadores
                </h1>
            </div>
            <!-- Keep all page content within the page-content inset div! -->
            <div class="page-content inset">
                <div class="row">
                
                     <table border="1">
			<tr>
				<td class="heading">ID de Utilizador</td>
				<td class="heading">Nome</td>
				<td class="heading">Morada</td>
				<td class="heading">Telefone</td>
				<td class="heading">Telemovel</td>
                                <td class="heading">Altura</td>
                                <td class="heading">Peso</td>
                                <td class="heading">Email</td>
                                <td class="heading">Password</td>
                                <td class="heading">Tipo de Utilizador</td>
				<td class="heading">Edit</td>
				<td class="heading">Delete</td>
			</tr>
			<c:forEach var="ut" items="${userList}">
				<tr>
					<td>${ut.idUtilizador}</td>
					<td>${ut.nome}</td>
					<td>${ut.morada}</td>
					<td>${ut.telefone}</td>
					<td>${ut.telemovel}</td>
                                        <td>${ut.altura}</td>
                                        <td>${ut.peso}</td>
                                        <td>${ut.email}</td>
                                        <td>${ut.password}</td>
                                        <td>${ut.tipo_de_utilizador}</td>
					<td><a href="edit?id=${ut.idUtilizador}">Edit</a></td>
					<td><a href="delete?id=${ut.idUtilizador}">Delete</a></td>
                                        <td> <select>
                                    <option value="ativo">Ativo</option>
                                    <option value="desativo">Desativo</option>                                
                                            </select></td>
                        </tr>
			</c:forEach>
		</table>
                    
                    
                </div>
            </div>
        </div>

    </div>

        </body>

</html>


