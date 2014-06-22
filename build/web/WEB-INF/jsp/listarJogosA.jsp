<%-- 
    Document   : listarJogosA
    Created on : 14/Jun/2014, 14:00:51
    Author     : Nuno
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%
            if (session.getAttribute("perfil") != null) {
        %> 

        <%
            if (session.getAttribute("perfil").equals(5)) {%>
        <%@include file="/resources/include/templateAnalistas.jsp"%>
        <% } else if (session.getAttribute("perfil").equals(1)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(2)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(3)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(4)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(5)) {
                response.sendRedirect("naoAutorizado");
            }

        %>



        <table class="table"> 
            <tr>
                <td Class="heading"> ID Jogo </td>
                <td Class="heading"> Local </td>
                <td Class="heading"> Data </td>
                <td Class="heading"> Hora </td>
                <td Class="heading"> Competição </td>
                <td Class="heading"> Equipa Adversaria </td>
                <td Class="heading"> Resultado </td>
                <td Class="heading"> Inserir Dados </td>
            </tr>
            <c:forEach var="lj" items="${ljogos}">
                <tr>
                    <td> ${lj.getIdJogo()} </td>
                    <td> ${lj.getLocal()} </td>
                    <td> ${lj.getData()} </td>
                    <td> ${lj.getHora()} </td>
                    <td> ${lj.getIdCompeticao()} </td>
                    <td> ${lj.getIdEquipaAdversaria()} </td>
                    <td> ${lj.getResultado()} </td>
                    <td><a href="inserirDados/${lj.getIdJogo()}">Selecionar</a></td>
                </tr>
            </c:forEach>
        </table>

        <%
            } else {
                response.sendRedirect("login");
            }
        %> 
    </body>
</html>
