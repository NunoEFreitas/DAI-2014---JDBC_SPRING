<%-- 
    Document   : alterarTreino
    Created on : 10/Jun/2014, 20:42:47
    Author     : Nuno
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form:form method="post" action="/updateTreino" modelAttribute="treino">
				<table>
					<tr>
						<td>Duracao :</td>
						<td><form:input path="duracaoTreino" value="${tr.duracaoTreino}" />
						</td>
					</tr>
					<tr>
						<td>Local :</td>
						<td><form:input path="localTreino" value="${tr.localTreino}" />
						</td>
					</tr>
					<tr>
						<td>Data :</td>
						<td><form:input path="dataTreino" value="${tr.dataTreino}" />
						</td>
					</tr>
                                        
                                        <tr>
						<td>Tipo :</td>
						<td><form:input path="tipoTreino"
								value="${tr.tipoTreino}" />
						</td>
					</tr>
                                        	<tr>
						<td>Hora :</td>
						<td><form:input path="horaTreino"
								value="${tr.horaTreino}" />
						</td>
					</tr>
                                        <tr>
                                                 <td>&nbsp;</td>
						<td><input type="submit" value="Save" />
						</td>
					</tr>
                                        	
				</table>
				<form:hidden path="idEscalao" value="${tr.idEscalao}" />
                                <form:hidden path="idTreino" value="${tr.idTreino}" />
                            
			</form:form>
        
                                       
    </body>
</html>
