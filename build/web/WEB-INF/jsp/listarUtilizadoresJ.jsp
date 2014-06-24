<%-- 
    Document   : listaUtilizadoresJ
    Created on : 22/Jun/2014, 20:33:20
    Author     : Samuel Costa
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
        <title>Listar Jogadores - Sistema de Informação - SCB</title>


        <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
        <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">

    </head>
    <body>
        <%
            if (session.getAttribute("perfil") != null) {
        %> 

        <%
                if (session.getAttribute("perfil").equals(1)) {%>
        <%@include file="/resources/include/templateAtleta.jsp" %>
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
            <h1> Gerir atletas<small> Visualizar Dados Atleta </small>  </h1> 
        </div><br>

        <img src="<c:url value="/resources/images/braga.jpg" />" /> 
        <table width="50%">

            <c:forEach var="ul" items="${lutilizador}">
                <tr>
                    <th>Nome:</th>
                    <td>${ul.getNome()}</td><br>
                </tr><br>
                <tr>
                    <td>DataNascimento:</td> 
                    <td>${ul.getDataNascimento()}</td>
                </tr>
                <tr>
                    <th>Telefone:</th>
                    <td>${ul.getTelefone()}</td>

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

