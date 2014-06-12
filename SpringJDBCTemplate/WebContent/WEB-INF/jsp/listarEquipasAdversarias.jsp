<%-- 
    Document   : listarEquipasAdversarias
    Created on : 7/Jun/2014, 10:29:01
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
            <td Class="heading"> ID Equipa </td>
            <td Class="heading"> Nome </td>
            <td Class="heading"> Escalao </td>
            <td Class="heading"> Consultar Equipa </td>
        </tr>
        <c:forEach var="li" items="${li}">
            <tr>
                <td> ${li.getIdEquipaAdversaria()} </td>
                <td> ${li.getNome()} </td>
                <td> ${li.getidEscalao()} </td>
                <td><a href="listarJogadoresEquipaAdversaria/${li.getIdEquipaAdversaria()}">Selecionar</a></td>
            </tr>
        </c:forEach>
    </table> 
    </body>
</html>
