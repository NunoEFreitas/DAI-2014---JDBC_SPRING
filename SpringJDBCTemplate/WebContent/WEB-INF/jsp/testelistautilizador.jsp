<%-- 
    Document   : testelistareditarutilizador
    Created on : 19/Abr/2014, 16:38:25
    Author     : Nuno
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
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
        
    </body>
</html>
