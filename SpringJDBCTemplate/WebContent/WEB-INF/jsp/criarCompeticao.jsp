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
             <h1> Gerir Competições<small> Criar competições </small>  </h1> 
         </div>
         

         <form:form id="contactform" class="rounded" method="post" action="/inserirCompeticao" modelAttribute="competicao"  >

             <label>Nome da Competição: </label>
             <form:input class="input" required="required" path="designacao" />
             <br>
             <label>Escalao :</label>
             <form:select class="input"  path = "idEscalao" name="idEscalao">
                 <c:forEach items='${map.li}' var='li'>
                     <form:option class="input" value ="${li.idEscalao}">${li.designacao}</form:option>
                 </c:forEach>
             </form:select>
             <input class="button" type="submit" value="Guardar" />
         </form:form>


    </body>
</html>
