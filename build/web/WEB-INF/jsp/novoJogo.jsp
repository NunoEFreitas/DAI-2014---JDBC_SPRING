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
    </head>
    <body>
        <form:form method="post" action="/insereJogo" modelAttribute="jogo"  >
            
            <label>Data: </label>
            <form:input class="input" path="data" />
            <label>Hora: </label>
            <form:input class="input" path="hora" />
            <label>Local: </label>
            <form:input class="input" path="local" />
            <label>Competição: </label>
            <form:input class="input" path="competicao" />
            <input class="button" type="submit" value="Guardar" />
        </form:form>
    </body>
</html>
