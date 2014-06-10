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
    </head>
    <body>
     <form:form method="post" action="/inserirEA" modelAttribute="equipaAdversaria"  >
            
            <label>Nome: </label>
            <form:input class="input" path="nome" />
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
