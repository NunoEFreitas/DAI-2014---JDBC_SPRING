<%-- 
    Document   : novoJogo
    Created on : 16/Mai/2014, 19:00:31
    Author     : Nuno
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
	if(session.getAttribute("perfil").equals(4)){ %>  
 	    <%@include file="/resources/include/templateOlheiros.jsp"%>
	    <% 
	  }else if(session.getAttribute("perfil").equals(2)){ %>
          <%@include file="/resources/include/templateTreinador.jsp" %>
          <% }else if(session.getAttribute("perfil").equals(3)){ %>
          
	  <%@include file="/resources/include/templateTreinadorAdjunto.jsp" %>         
	 <% 
        }
         %>
        
        <Div  class = "cabecalho da pagina" > 
            <h1>Inserir Dados em tempo real<small> Criar jogo </small>  </h1> 
        </div>
        
        
        <form:form id="contactform" class="rounded" method="post" action="/inserirJogo" modelAttribute="jogo"  >
            
            <label>Data: </label>
            <form:input type="date" required="required"  class="input" path="data" /><br>
            <label>Hora: </label>
            <form:input type="time" required="required" class="input" path="hora" /><br>
            <label>Local: </label>
            <form:input class="input" required="required" path="local" /><br>
            <label>Competição :</label>
                <form:select class="input" path = "idCompeticao" name="idCompeticao">
                    <c:forEach items='${map.lc}' var='lc'>
                        <form:option  value ="${lc.idCompeticao}">${lc.designacao}</form:option>
                    </c:forEach>
                </form:select><br>
            <label>Equipa Adversaria :</label>
                <form:select class="input" path = "idEquipaAdversaria" name="idEquipaAdversaria">
                    <c:forEach items='${map.lea}' var='lea'>
                        <form:option value ="${lea.idEquipaAdversaria}">${lea.nome}</form:option>
                    </c:forEach>
                </form:select><br>
            <input class="button" type="submit" value="Guardar" />
        </form:form>
    </body>
</html>
