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
	if(session.getAttribute("perfil").equals(6)){ %>  
 	    <%@include file="/resources/include/templateSeccionista.jsp"%>
	    <% 
	  }else if(session.getAttribute("perfil").equals(2)){ %>
          <%@include file="/resources/include/templateTreinador.jsp" %>
          <% }else if(session.getAttribute("perfil").equals(3)){ %>
          
	  <%@include file="/resources/include/templateTreinadorAdjunto.jsp" %>         
	 <% 
        }
         %>
        
         <Div  class = "cabecalho da pagina" > 
                    <h1> Listar treinos<small> Marcar Presenças </small>  </h1> 
                </div><br>
        
        <table class="table"> 
        <tr>
            <td Class="heading"> Id Jogador </td>
            <td Class="heading"> Nome </td>
            <td Class="heading"> Presente </td>
            <td Class="heading"> Faltou </td>
        </tr>
        <c:forEach var="li" items="${li}">
            <tr>
                <td> ${li.getIdUtilizador()} </td>
                <td> ${li.getNome()} </td>
                <td><a href="presente/${li.getIdTreino()}/${li.getIdUtilizador()}">Selecionar</a></td>
                <td><a href="faltou/${li.getIdTreino()}/${li.getIdUtilizador()}">Selecionar</a></td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>
