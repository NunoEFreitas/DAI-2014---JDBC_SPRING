<%-- 
    Document   : jogoSelecionadosEA
    Created on : 18/Jun/2014, 10:24:41
    Author     : Nuno
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value ="/resources/css/tabelas.css"/>" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
   
    <body>
        
        <% 
	if(session.getAttribute("perfil").equals(1)){ %>  
 	    <%@include file="/resources/include/templateAtleta.jsp"%>
 	    <% 
        }else if(session.getAttribute("perfil").equals(2)){ %>  
 	    <%@include file="/resources/include/templateTreinador.jsp"%>
	    <% 
              
        }else if(session.getAttribute("perfil").equals(3)){ %>  
 	    <%@include file="/resources/include/templateTreinadorAdjunto.jsp"%>
	    <% 
	  }else if(session.getAttribute("perfil").equals(5)){ %>
          <%@include file="/resources/include/templateAnalistas.jsp" %>       
	 <% 
        }
         %>
        <h1> Jogo ${map.jogo.get(0)}</h1>
         <div class="tabela1">
        <h2> Selecionaveis </h2>
        <table> 
        <tr>
            <td Class="heading"> Id Jogador </td>
            <td Class="heading"> Nome </td>
            <td Class="heading"> Selecionar </td>
        </tr>
        <c:forEach var="jea" items="${map.ljea}">
            <tr>
                <td> ${jea.getIdJogador()} </td>
                <td> ${jea.getNome()} </td>
                <td><a href="jeaSelecionado/${map.jogo.get(0)}/${jea.getIdJogador()}">Selecionar</a></td>
                
            </tr>
        </c:forEach>
        </table>
         </div> 
          <div>
       <h2> Selecionados </h2>
        <table border="1"> 
        <tr>
            <td Class="heading"> Id Jogador </td>
            <td Class="heading"> Nome </td>
            <td Class="heading"> Retirar </td>
        </tr>
        <c:forEach var="es" items="${map.escolhas}">
            <tr>
                <td> ${es.getIdJogador()} </td>
                <td> ${es.getNome()} </td>
                <td><a href="jeaDesSelecionado/${map.jogo.get(0)}/${es.getIdJogador()}">Selecionar</a></td>
                
            </tr>
        
        </c:forEach> 
        </table>
          </div>
    </body>
</html>
