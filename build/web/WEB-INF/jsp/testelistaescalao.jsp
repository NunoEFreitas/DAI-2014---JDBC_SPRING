<%-- 
    Document   : testelistareditarescalao
    Created on : 19/Abr/2014, 16:38:49
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
				<td class="heading">ID de Perfil</td>
				<td class="heading">Designação</td>
			</tr>
			<c:forEach var="el" items="${escalaoList}">
				<tr>
					<td>${el.getIdEscalao()}</td>
					<td>${el.getDesignacao()}</td>
				</tr>
			</c:forEach>
		</table>
    </body>
</html>
