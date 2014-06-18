<%-- 
    Document   : editarJogo
    Created on : 10/Jun/2014, 20:45:45
    Author     : Nuno
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
          <link href="<c:url value ="/resources/css/register.css"/>" rel="stylesheet" type="text/css">
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
            <h1>Inserir Dados em tempo real<small> Criar jogo </small>  </h1> 
        </div>
        
        
        
        <form:form id="contactform" class="rounded" method="post" action="/updateJogo" modelAttribute="jogo">
				
            
            <label>Local :</label>
            <form:input path="local" class="input" value="${map.lj.get(0).local}" /><br>
            <label>Data :</label>
            <td><form:input type="date" path="data" class="input" value="${map.lj.get(0).data}" /><br>
            <label>Hora :</label>
            <td><form:input type="time" path="hora" class="input" value="${map.lj.get(0).hora}" /><br>				
            
            <label>Competição :</label>
                <form:select class="input" path = "idCompeticao" name="idCompeticao">
                    <c:forEach items='${map.competicao}' var='lc'>
                        <form:option  value ="${lc.idCompeticao}">${lc.designacao}</form:option>
                    </c:forEach>
                </form:select><br>
            <label>Equipa Adversaria :</label>
                <form:select class="input" path = "idEquipaAdversaria" name="idEquipaAdversaria">
                    <c:forEach items='${map.ea}' var='lea'>
                        <form:option value ="${lea.idEquipaAdversaria}">${lea.nome}</form:option>
                    </c:forEach>
                </form:select><br>
            <form:hidden path="idJogo" value="${map.lj.get(0).idJogo}" />		
                 <input class="button" type="submit" value="Save" />                     
            </form:form>                      
                             
		
             
			
    </body>
</html>
