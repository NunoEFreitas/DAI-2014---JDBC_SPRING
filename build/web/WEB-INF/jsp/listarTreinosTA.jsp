<%-- 
    Document   : listarTreinosTA
    Created on : 14/Jun/2014, 19:39:46
    Author     : Nuno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        
          <%@include file="/resources/include/templateTreinadorAdjunto.jsp" %>
          
           <Div  class = "cabecalho da pagina" > 
                 <h1>Gerir treinos<small> Listar treinos </small>  </h1> 
             </div><br>
          
       <table class="table"> 
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
