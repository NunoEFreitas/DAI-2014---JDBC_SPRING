<%-- 
    Document   : listarJogadoresEquipaAdversaria
    Created on : 9/Jun/2014, 8:01:53
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
            <td Class="heading"> ID Jogador </td>
            <td Class="heading"> Nome </td>
            <td Class="heading"> Posição </td>
            <td Class="heading"> Equipa </td>
        </tr>
        <c:forEach var="li" items="${li}">
            <tr>
                <td> ${li.getIdJogador()} </td>
                <td> ${li.getNome()} </td>
                <td> ${li.getPosicao()} </td>
                <td> ${li.getIdEquipaAdversaria()} </td>
            </tr>
        </c:forEach>
    </table>
    </body>
</html>
