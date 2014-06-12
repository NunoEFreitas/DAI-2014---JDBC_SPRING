<%-- 
    Document   : listarEscaloes
    Created on : 7/Jun/2014, 18:01:47
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
        <table border="1"> 
        <tr>
            <td Class="heading"> ID Escalao </td>
            <td Class="heading"> Escalao </td>
            
        </tr>
        <c:forEach var="li" items="${li}">
            <tr>
                <td> ${li.getIdEscalao()} </td>
                <td> ${li.getDesignacao()} </td>
            </tr>
        </c:forEach>
    </table> 
    </body>
</html>
