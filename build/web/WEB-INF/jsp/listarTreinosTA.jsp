<%-- 
    Document   : listarTreinosTA
    Created on : 14/Jun/2014, 19:39:46
    Author     : Nuno
--%>

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
            <td Class="heading"> ID Treino </td>
            <td Class="heading"> Duracao </td>
            <td Class="heading"> Local </td>
            <td Class="heading"> Data </td>
            <td Class="heading"> Hora </td>
            <td Class="heading"> Tipo </td>
            <td Class="heading"> Marcar Presencas </td>
        </tr>
        <c:forEach var="li" items="${li}">
            <tr>
                <td> ${li.getIdTreino()} </td>
                <td> ${li.getDuracaoTreino()} </td>
                <td> ${li.getLocalTreino()} </td>
                <td> ${li.getDataTreino()} </td>
                <td> ${li.getHoraTreino()} </td>
                <td> ${li.getTipoTreino()} </td>
                <td><a href="treino/presencas/${li.getIdTreino()}">Selecionar</a></td>
            </tr>
        </c:forEach>
    </table>
    </body>
</html>