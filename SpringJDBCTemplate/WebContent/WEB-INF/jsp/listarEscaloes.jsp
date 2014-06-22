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
            if (session.getAttribute("perfil").equals(6)) {%>
        <%@include file="/resources/include/templateSeccionista.jsp"%>
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


        <Div  class = "cabecalho da pagina" > 
            <h1>Gerir escalões<small> Listar escalões </small>  </h1> 
        </div>

        <table class="table"> 
            <tr>
                <td Class="heading"> ID Escalao </td>
                <td Class="heading"> Escalao </td>

            </tr>
            <c:forEach var="li" items="${li}">
                <tr>
                    <td> ${li.getIdEscalao()} </td>
                    <td> ${li.getDesignacao()} </td>
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
