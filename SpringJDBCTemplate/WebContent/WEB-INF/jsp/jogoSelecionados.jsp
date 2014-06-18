<%-- 
    Document   : jogadoresSelecionados
    Created on : 19/Mai/2014, 8:01:39
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
            <h1>Listar Jogos<small> Escolher equipa</small>  </h1> 
        </div>
        
        
        
        
        <h1> Jogo ${map.jogo.get(0)}</h1>
        <h2> Selecionaveis </h2>
        <table class="table"> 
        <tr>
            <td Class="heading"> Id Jogador </td>
            <td Class="heading"> Nome </td>
            <td Class="heading"> Selecionar </td>
        </tr>
        <c:forEach var="ut" items="${map.utilizador}">
            <tr>
                <td> ${ut.getIdUtilizador()} </td>
                <td> ${ut.getNome()} </td>
                <td><a href="jogadorSelecionado/${map.jogo.get(0)}/ ${ut.getIdUtilizador()}">Selecionar</a></td>
                
            </tr>
        </c:forEach>
            
       <h2> Selecionados </h2>
        <table border="1"> 
        <tr>
            <td Class="heading"> Id Jogador </td>
            <td Class="heading"> Nome </td>
            <td Class="heading"> Retirar </td>
        </tr>
        <c:forEach var="es" items="${map.escolhas}">
            <tr>
                <td> ${es.getIdUtilizador()} </td>
                <td> ${es.getNome()} </td>
                <td><a href="jogadorDesSelecionado/${map.jogo.get(0)}/ ${es.getIdUtilizador()}">Selecionar</a></td>
                
            </tr>
        </c:forEach>   
    </body>
</html>
