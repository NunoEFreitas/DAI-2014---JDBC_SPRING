<%-- 
    Document   : novoJogo
    Created on : 16/Mai/2014, 19:00:31
    Author     : Nuno
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
        <title>Login - Sistema de Informação - SCB</title>
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">

    </head>
    <body>
           <%@include file="/resources/include/templateTreinador.jsp" %>
   
            <Div  class = "cabecalho da pagina" > 
            <h1> Inserir Dados Tempo Real<small> Criar jogo </small>  </h1> 
        </div>
           
           
        <form:form method="post" action="/insereJogo" modelAttribute="jogo">
            
            <label>Data: </label>
            <form:input  type="date" path="data" /><br>
            <label>Hora: </label>
            <form:input type="time" path="hora" /><br>
            <label>Local: </label>
            <form:input  path="local" /><br>
            <input class="button" type="submit" value="Guardar" />
        </form:form>
    
  
    </div>
</div>      
</div>

</body>

</html>
