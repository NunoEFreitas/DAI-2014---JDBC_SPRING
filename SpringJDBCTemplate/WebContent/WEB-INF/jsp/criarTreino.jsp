<%-- 
    Document   : inserirTreino
    Created on : 6/Jun/2014, 8:02:44
    Author     : Nuno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
         
        <form:form method="post" action="/inserirTreino" modelAttribute="treino"  >
            
            <label>Duracao do Treino: </label>
            <form:input class="input" path="duracaoTreino" />
            <label>Data: </label>
            <form:input class="input" path="dataTreino" />
            <label>Hora: </label>
            <form:input class="input" path="horaTreino" />
            <label>Local: </label>
            <form:input class="input" path="localTreino" />
            <label>Tipo: </label>
            <form:input class="input" path="tipoTreino" />
            <input class="button" type="submit" value="Guardar" />
        </form:form>
    </body>
</html>
