<%-- 
    Document   : criarEscalao
    Created on : 7/Jun/2014, 18:01:36
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
        
     <form:form method="post" action="/inserirEscalao" modelAttribute="escalao"  >
            
               <label>Escalao: </label>
            <form:input class="input" path="designacao" />
            <br>

            <input class="button" type="submit" value="Guardar" />
        </form:form>
    </body>
</html>
