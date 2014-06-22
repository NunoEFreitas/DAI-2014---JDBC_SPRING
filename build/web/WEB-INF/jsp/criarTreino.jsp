
<%@page import="org.apache.jasper.tagplugins.jstl.core.Redirect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link href="<c:url value ="/resources/css/register.css"/>" rel="stylesheet" type="text/css">
         <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%  
    if(session.getAttribute("perfil") != null) {  
%> 
     
	    <% 
	   if(session.getAttribute("perfil").equals(2)){ %>
          <%@include file="/resources/include/templateTreinador.jsp" %>
          <% }else if(session.getAttribute("perfil").equals(1)){ 
	    response.sendRedirect("naoAutorizado");  
        }else if(session.getAttribute("perfil").equals(3)){
           response.sendRedirect("naoAutorizado");   
        }else if(session.getAttribute("perfil").equals(4)){
            response.sendRedirect("naoAutorizado");
        } else if(session.getAttribute("perfil").equals(5)){
            response.sendRedirect("naoAutorizado");
        } else if(session.getAttribute("perfil").equals(6)){
             response.sendRedirect("naoAutorizado");
        }
    
         %>
         
           <Div  class = "cabecalho da pagina" > 
            <h1>Gerir treinos<small> Criar treino </small>  </h1> 
        </div>
         
        <form:form id="contactform" class="rounded" method="post" action="/inserirTreino" modelAttribute="treino"  >
            
            <label>Duracao do Treino: </label>
            <form:input type="text" required="required" class="input" path="duracaoTreino" /><br>
            <label>Data: </label>
            <form:input  type="date" required="required" class="input" path="dataTreino" /><br>
            <label>Hora: </label>
            <form:input type="time" required="required" class="input" path="horaTreino" /><br>
            <label>Local: </label>
            <form:input required="required" class="input" path="localTreino" /><br>
            <label>Tipo: </label>
            <form:input required="required" class="input" path="tipoTreino" />
            <input class="button" type="submit" value="Guardar" /><br>
        </form:form>
            
  

<%  
    } else {  
        response.sendRedirect("login");  
    }  
%>
    </body>
</html>
