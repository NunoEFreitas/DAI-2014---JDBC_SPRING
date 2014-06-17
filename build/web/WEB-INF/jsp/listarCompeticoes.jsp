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
        <h1> Gerir Competições<small>  Listar competições </small>  </h1> 
    </div>
         
        <table class="table"> 
        <tr>
            <td Class="heading"> ID Competicao </td>
            <td Class="heading"> Nome </td>
            <td Class="heading"> Escalao </td>
        </tr>
        <c:forEach var="li" items="${li}">
            <tr>
                <td> ${li.getIdCompeticao()} </td>
                <td> ${li.getDesignacao()} </td>
                <td> ${li.getIdEscalao()} </td>
            </tr>
        </c:forEach>
    </table> 
         
         
    </body>
</html>
