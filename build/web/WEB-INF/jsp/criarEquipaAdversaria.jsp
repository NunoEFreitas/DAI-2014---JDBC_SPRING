<%-- 
    Document   : criarEquipaAdversaria
    Created on : 7/Jun/2014, 10:28:41
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
        <link href="<c:url value ="/resources/css/register.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        
        
          <%@include file="/resources/include/templateSeccionista.jsp"%>
          
           <Div  class = "cabecalho da pagina" > 
            <h1>Gerir equipas adversarias<small>Inserir equipa adversaria </small>  </h1> 
        </div>
          
          <form:form id="contactform" class="rounded" method="post" action="/inserirEA" modelAttribute="equipaAdversaria"  >
          
              <label>Nome:</label>
              <form:input required="required" class="input" path="nome" /><br>
 
              <label>Escalao:</label>
              <form:select   class="input" path = "idEscalao" name="idEscalao">
                  <c:forEach items='${map.li}' var='li'>
                      <form:option value ="${li.idEscalao}">${li.designacao}</form:option>
                  </c:forEach>
              </form:select>
             
              <input class="button" type="submit" value="Guardar" />
          </form:form>
    </body>
</html>
