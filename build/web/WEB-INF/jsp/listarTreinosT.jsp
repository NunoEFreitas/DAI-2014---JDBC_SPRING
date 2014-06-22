
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            <td Class="heading"> Editar Treino </td>
            <td Class="heading"> Apagar Treino </td>
            <td Class="heading"> Escolher Atletas </td>
            <td Class="heading"> Marcar Presencas </td>
            <td Class="heading"> Listar Convocatoria </td>
        </tr>
        <c:forEach var="li" items="${li}">
            <tr>
                <td> ${li.getIdTreino()} </td>
                <td> ${li.getDuracaoTreino()} </td>
                <td> ${li.getLocalTreino()} </td>
                <td> ${li.getDataTreino()} </td>
                <td> ${li.getHoraTreino()} </td>
                <td> ${li.getTipoTreino()} </td>
                <td><a href="treino/editar/${li.getIdTreino()}">Selecionar</a></td>
                <td><a href="treino/apagar/${li.getIdTreino()}">Selecionar</a></td>
                <td><a href="treino/selecionar/${li.getIdTreino()}">Selecionar</a></td>
                <td><a href="treino/presencas/${li.getIdTreino()}">Selecionar</a></td>
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
