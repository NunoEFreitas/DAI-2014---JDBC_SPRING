
<%-- 
    Document   : listarTreinosJ
    Created on : 14/Jun/2014, 19:40:01
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
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>

        <%
            if (session.getAttribute("perfil") != null) {
        %> 

        <%
            if (session.getAttribute("perfil").equals(1)) {%>
        <%@include file="/resources/include/templateAtleta.jsp"%> 
        <% } else if (session.getAttribute("perfil").equals(2)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(3)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(4)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(5)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(6)) {
                response.sendRedirect("naoAutorizado");
            }

        %>


        <Div  class = "cabecalho da pagina" > 
            <h1>Gerir competições<small>Listar treino</small>  </h1> 
        </div><br>
        <table class="table"> 
            <tr>
                <td Class="heading"> ID Treino </td>
                <td Class="heading"> Duracao </td>
                <td Class="heading"> Local </td>
                <td Class="heading"> Data </td>
                <td Class="heading"> Hora </td>
                <td Class="heading"> Tipo </td>
            </tr>
            <c:forEach var="li" items="${li}">
                <tr>
                    <td> ${li.getIdTreino()} </td>
                    <td> ${li.getDuracaoTreino()} </td>
                    <td> ${li.getLocalTreino()} </td>
                    <td> ${li.getDataTreino()} </td>
                    <td> ${li.getHoraTreino()} </td>
                    <td> ${li.getTipoTreino()} </td>
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
