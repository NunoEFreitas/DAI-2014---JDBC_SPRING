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
            <%@include file="/resources/include/templateSeccionista.jsp"%>
        
        <Div  class = "cabecalho da pagina" > 
            <h1>Gerir equipas adversarias<small> Listar equipas adversarias </small>  </h1> 
        </div>
        
       <table class="table"> 
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
