<%-- 
    Document   : historicoAtletaT
    Created on : 22/Jun/2014, 19:51:03
    Author     : Samuel Costa
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
                if (session.getAttribute("perfil").equals(2)) {%>
        <%@include file="/resources/include/templateTreinador.jsp" %>
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



        <div  class = "cabecalho da pagina" > 
            <h1> Gerir Atletas<small> Visualizar Historico Atleta </small>  </h1> 
        </div><br>


        <table class="table">
            <thead>
                <tr>

                    <th>Id Utilizador</th>
                    <td>Nome</td>                              

                </tr>
            </thead>
            <c:forEach var="ul" items="${lutilizador}">

                <tbody>
                    <tr>
                        <td>${ul.getIdUtilizador()}</td>
                        <td>${ul.getNome()}</td>


                        <td><a href="verHistoricoAtleta/${ul.getIdUtilizador()}">selecionar</a></td>
                    </tr>
                </tbody>
            </c:forEach>
        </table>


        <%
            } else {
                response.sendRedirect("login");
            }
        %>          


    </body>
</html>
