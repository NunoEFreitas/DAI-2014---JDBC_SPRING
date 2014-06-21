<%-- 
    Document   : editarS
    Created on : 21/Jun/2014, 12:02:12
    Author     : Samuel Costa
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
   <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
         <link href="<c:url value ="/resources/css/register.css"/>" rel="stylesheet" type="text/css">
         <script type="text/javascript" src="<c:url value="/resources/js/editar.js"/>"/></script>
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
            <h1> Editar Utilizadores <small>  Editar Seccionista </small>  </h1> 
        </div>
        
        <form:form id="contactform" name="editar" class="rounded" method="post" action="/update" modelAttribute="utilizador">
				
            
            <label>Nome :</label>
            <form:input type="text" name="name" path="nome" class="input" value="${map.user.getNome()}" /><br>
            <label>Password :</label>
            <td><form:input type="text" name="password" path="password" class="input" value="${map.user.getPassword()}" /><br>
            <label>Data de Nascimento :</label>
            <td><form:input type="date" path="dataNascimento" required="required" class="input" value="${map.user.getDataNascimento()}" /><br>	
            <label>Morada :</label>
            <td><form:input type="text" name="morada" path="morada" class="input" value="${map.user.getMorada()}" /><br>    
            <label>Telefone :</label>
            <td><form:input type="text" name="telefone" path="telefone" class="input" value="${map.user.getTelefone()}" /><br>
            <label>Email :</label>
            <td><form:input type="email" path="email" required="required" class="input" value="${map.user.getEmail()}" /><br>       
            <label>Perfil :</label>
                <td><spring:bind path="idPerfil">
                                                                <select class="input" name="idPerfil">
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
            
       <div id="texto" style="color:red"><h2></h2></div>
                 <input onClick="return validacao('${map.user.idPerfil}');" class="button" type="submit" value="Save" />                     
            </form:form>  
    </body>
</html>
