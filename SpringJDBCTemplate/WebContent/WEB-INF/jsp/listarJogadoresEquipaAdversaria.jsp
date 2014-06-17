<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
    </head>
    <%@include file="/resources/include/templateSeccionista.jsp"%>

    <body>
        <table class="table"> 
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
