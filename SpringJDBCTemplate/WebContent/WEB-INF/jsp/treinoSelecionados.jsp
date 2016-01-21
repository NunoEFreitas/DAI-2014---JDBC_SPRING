<%-- 
    Document   : treinoSelecionados
    Created on : 8/Jun/2014, 18:28:41
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
        <h1> Treino ${map.treino.get(0)}</h1>
        
        <table border="1"> 
        <tr>
            <td Class="heading"> Id Jogador </td>
            <td Class="heading"> Nome </td>
        </tr>
        <c:forEach var="ut" items="${map.utilizador}">
            <tr>
                <td> ${ut.getIdUtilizador()} </td>
                <td> ${ut.getNome()} </td>
                <td><a href="jogadorSelecionado/${map.treino.get(0)}/${ut.getIdUtilizador()}/${ut.getNome()}">Selecionar</a></td>
                
            </tr>
        </c:forEach>
        </table>
    </body>
</html>
