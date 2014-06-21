<%-- 
    Document   : editarT
    Created on : 21/Jun/2014, 0:03:08
    Author     : Nuno
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form:form id="contactform" class="rounded" method="post" action="/update" modelAttribute="utilizador">
				
            
            <label>Nome :</label>
            <form:input type="text" path="nome" class="input" value="${map.user.getNome()}" /><br>
            <label>Password :</label>
            <td><form:input type="text" path="password" class="input" value="${map.user.getPassword()}" /><br>
            <label>Data de Nascimento :</label>
            <td><form:input type="text" path="dataNascimento" class="input" value="${map.user.getDataNascimento()}" /><br>	
            <label>Morada :</label>
            <td><form:input type="text" path="morada" class="input" value="${map.user.getMorada()}" /><br>    
            <label>Telefone :</label>
            <td><form:input type="text" path="telefone" class="input" value="${map.user.getTelefone()}" /><br>
            <label>Email :</label>
            <td><form:input type="text" path="email" class="input" value="${map.user.getEmail()}" /><br>       
            <label>Perfil :</label>
                <td><spring:bind path="idPerfil">
                                                                <select name="idPerfil">
                                                                        <c:forEach items='${map.lp}' var='lp'>
                                                                                <c:choose>
                                                                                        <c:when test="${lp.idPerfil eq map.user.idPerfil}">
                                                                                                <option value="${lp.getIdPerfil()}" selected="true">${lp.getDesignacao()}</option>
                                                                                        </c:when>
                                                                                       <c:otherwise>
                                                                                                <option value="${lp.getIdPerfil()}">${lp.getDesignacao()}</option>
                                                                                        </c:otherwise>
                                                                                </c:choose>
                                                                        </c:forEach>
                                                                </select>
                                                        </spring:bind>
                </td><br>
            <label>Escalão :</label>
                <form:select class="input" path = "idEscalao" name="idEscalao">
                    <c:forEach items='${map.li}' var='li'>
                        <form:option value ="${li.getIdEscalao()}">${li.getDesignacao()}</form:option>
                    </c:forEach>
                </form:select><br>
            <form:hidden path="idUtilizador" value="${map.user.getIdUtilizador()}" />		
            <form:hidden path="sexo" value="${map.user.getSexo()}" />
            <form:hidden path="estado" value="${map.user.getEstado()}" />
   
                 <input class="button" type="submit" value="Save" />                     
            </form:form>  
    </body>
</html>
