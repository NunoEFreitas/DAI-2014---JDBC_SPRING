<%-- 
    Document   : criarCompeticao
    Created on : 7/Jun/2014, 17:49:37
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
         
         <form:form method="post" action="/inserirCompeticao" modelAttribute="competicao"  >
            
            <label>Nome da Competição: </label>
            <form:input class="input" path="designacao" />
            <br>
            <label>Escalao :</label>
            <form:select   path = "idEscalao" name="idEscalao">
                    <c:forEach items='${map.li}' var='li'>
                        <form:option class="input" value ="${li.idEscalao}">${li.designacao}</form:option>
                    </c:forEach>
                </form:select>
            <input class="button" type="submit" value="Guardar" />
        </form:form>
           

    </body>
</html>
