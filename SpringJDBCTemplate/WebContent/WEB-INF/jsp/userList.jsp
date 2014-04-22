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

</head>
<body>


    <%@include file="/resources/include/templateAdministracao.jsp"%>
  
 
                 
                        <h1>Visualizar dados de atleta</h1>
                   
                        <table border="1">
			<tr>
				<td class="heading">ID Utilizador</td>
				<td class="heading">Nome</td>
                                <td class="heading">Password</td>
                                <td class="heading">Data de Nascimento</td>
                                <td class="heading">Morada</td>
                                <td class="heading">Sexo</td>
                                <td class="heading">Telefone</td>
                                <td class="heading">Email</td>
                                <td class="heading">Altura</td>
                                <td class="heading">Peso</td>
                                <td class="heading">Salto Vertical</td>
                                <td class="heading">Velocidade de Deslocamento</td>
                                <td class="heading">Alcance Ataque</td>
                                <td class="heading">Alcance Bloco</td>
                                <td class="heading">Exames Clinicos</td>
                                <td class="heading">Perfil</td>
                                <td class="heading">Escalao</td>            
			</tr>
			<c:forEach var="ul" items="${utilizadorList}">
				<tr>
					<td>${ul.getIdUtilizador()}</td>
                                        <td>${ul.getNome()}</td>
					<td>${ul.getPassword()}</td>
                                        <td>${ul.getDataNascimento()}</td>
                                        <td>${ul.getMorada()}</td>
                                        <td>${ul.getSexo()}</td>
                                        <td>${ul.getTelefone()}</td>
                                        <td>${ul.getEmail()}</td>
                                        <td>${ul.getAltura()}</td>
                                        <td>${ul.getPeso()}</td>
                                        <td>${ul.getSaltoVertical()}</td>
                                        <td>${ul.getVelocidadeDeslocamento()}</td>
                                        <td>${ul.getAlcanceAtaque()}</td>
                                        <td>${ul.getAlcanceBloco()}</td>
                                        <td>${ul.getExamesClinicos()}</td>
                                        <td>${ul.getIdPerfil()}</td>
                                        <td>${ul.getIdEscalao()}</td>
				</tr>
			</c:forEach>
		</table>
        
                    
                    
                </div>
            </div>
        </div>


        </body>

</html>


