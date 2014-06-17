<%-- 
    Document   : criarJogadorEquipaAdversaria
    Created on : 9/Jun/2014, 8:01:39
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

        
        <%@include file="/resources/include/templateSeccionista.jsp"%>
           <Div  class = "cabecalho da pagina" > 
            <h1>Gerir equipas adversarias<small> Inserir jogador equipa adversaria </small>  </h1> 
        </div>
        
        <form:form id="contactform" class="rounded" method="post" action="/inserirJEA" modelAttribute="jogadorEquipaAdversaria"  >
            
            <label>Nome: </label>
            <form:input required="required" class="input" path="nome" />
            <br>
            <label>Posição: </label>
            <form:input required="required" class="input" path="posicao" />
            <br>
                <label>Equipa Adversaria :</label>
                <form:select  class="input"  path = "idEquipaAdversaria" name="idEquipaAdversaria">
                    <c:forEach items='${lea}' var='lea'>
                        <form:option  value ="${lea.idEquipaAdversaria}">${lea.nome}</form:option>
                    </c:forEach>
                </form:select>
                <br>
            <input class="button" type="submit" value="Guardar" />
        </form:form>
    </body>
</html>
