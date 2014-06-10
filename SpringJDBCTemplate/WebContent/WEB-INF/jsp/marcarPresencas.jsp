<%-- 
    Document   : marcarPresencas
    Created on : 6/Jun/2014, 8:03:55
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
            <td Class="heading"> Id Jogador </td>
            <td Class="heading"> Nome </td>
            <td Class="heading"> Presente </td>
            <td Class="heading"> Faltou </td>
        </tr>
        <c:forEach var="li" items="${li}">
            <tr>
                <td> ${li.getIdUtilizador()} </td>
                <td> ${li.getNome()} </td>
                <td><a href="presente/${li.getIdTreino()}/${li.getIdUtilizador()}">Selecionar</a></td>
                <td><a href="faltou/${li.getIdTreino()}/${li.getIdUtilizador()}">Selecionar</a></td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>
