
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
            if (session.getAttribute("perfil").equals(2)) {%>
        <%@include file="/resources/include/templateTreinador.jsp" %>
        <% } else if (session.getAttribute("perfil").equals(1)) {%>
                 <%@include file="/resources/include/templateAtleta.jsp" %>
           <% } else if (session.getAttribute("perfil").equals(3)) {%>
                <%@include file="/resources/include/templateTreinadorAdjunto.jsp" %>
           <% } else if (session.getAttribute("perfil").equals(4)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(5)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(6)) {
                response.sendRedirect("naoAutorizado");
            }

        %>

        <Div  class = "cabecalho da pagina" > 
            <h1>Analise a Posteriori<small> Estatisticas </small>  </h1> 
        </div><br>


        <table class="table"> 
            <tr>
                <td Class="heading"> Tipo </td>
                <td Class="heading"> Rotacao  </td>
                <td Class="heading"> Jogador </td>
                <td Class="heading"> Origem </td>
                <td Class="heading"> Destino </td>

            </tr>
            <c:forEach var="les" items="${lest}">
                <tr>
                    <td> ${les.getDesignacaoEstatistica()} </td>
                    <td> ${les.getRotacaoPropria()} </td>
                    <td> ${les.getNomeUtilizador()} </td>
                    <td> ${les.getOrigem()} </td>
                    <td> ${les.getDestino()} </td>


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
