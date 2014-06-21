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
            <h1> Editar Utilizadores <small>  Editar Atleta </small>  </h1> 
        </div>
        
        <form:form id="contactform" name="editar" class="rounded" method="post" action="/update" modelAttribute="utilizador">
				
            
            <label>Nome :</label>
            <form:input type="text" name="nome" path="nome" class="input" value="${map.user.getNome()}" /><br>
            <label>Password :</label>
            <form:input type="text" name="password" path="password" class="input" value="${map.user.getPassword()}" /><br>
            <label>Data de Nascimento :</label>
            <form:input type="date" path="dataNascimento" required="required" class="input" value="${map.user.getDataNascimento()}" /><br>	
            <label>Morada :</label>
            <form:input type="text" name="morada" path="morada" class="input" value="${map.user.getMorada()}" /><br>    
            <label>Telefone :</label>
            <form:input type="text" name="telefone" path="telefone" class="input" value="${map.user.getTelefone()}" /><br>
            <label>Email :</label>
            <form:input type="text" path="email" required="required" class="input" value="${map.user.getEmail()}" /><br>       
             <label>Altura :</label>
            <form:input type="number" step="1" name="altura" path="altura" class="input" value="${map.user.getAltura()}" /><br>  
            <label>Peso :</label>
            <form:input type="number" step="1"  name="peso" path="peso" class="input" value="${map.user.getPeso()}" /><br> 
            <label>Salto Vertical :</label>
            <form:input type="number" step="1"  name="saltoVertical" path="saltoVertical" class="input" value="${map.user.getSaltoVertical()}" /><br> 
            <label>Velocidade Deslocamento:</label>
            <form:input type="number" step="1" name="velocidadeDeslocamento" path="velocidadeDeslocamento" class="input" value="${map.user.getVelocidadeDeslocamento()}" /><br>  
             <label>Alcance Ataque:</label>
            <form:input type="number" step="1"  name="alcanceAtaque" path="alcanceAtaque" class="input" value="${map.user.getAlcanceAtaque()}" /><br>  
            <label>Alcance Bloco:</label>
            <form:input type="number" step="1"  name="alcanceBloco" path="alcanceBloco" class="input" value="${map.user.getAlcanceBloco()}" /><br> 
               <label>Envergadura:</label>
            <form:input type="number" step="1"  name="envergadura" path="envergadura" class="input" value="${map.user.getEnvergadura()}" /><br> 
            
            <label>Estatura:</label>
                <form:select class="input" path="estatura"  >
                    <form:option value ="media">media</form:option>
                    <form:option value ="alta">alta</form:option>
                    <form:option value ="baixa">baixa</form:option>
                </form:select><br>
              
       
               <label>Exames Clinicos:</label>
            <form:select  class="input" path="examesClinicos" >
                <c:if test="${map.user.examesClinicos.equals(false)}">
                    <form:option selected="true" value ="false">Nao Concluido</form:option>
                    <form:option value ="true">Concluido</form:option>
                </c:if>
                <c:if test="${map.user.examesClinicos.equals(true)}">
                    <form:option  value ="false">Nao Concluido</form:option>
                    <form:option selected="true" value ="true">Concluido</form:option>
                </c:if>

            </form:select><br>
            
            <label>Escalão :</label>
                <form:select class="input" path = "idEscalao" name="idEscalao">
                    <c:forEach items='${map.li}' var='li'>
                        <form:option value ="${li.getIdEscalao()}">${li.getDesignacao()}</form:option>
                    </c:forEach>
                </form:select><br>
            <form:hidden path="idUtilizador" value="${map.user.getIdUtilizador()}" />		
            <form:hidden path="sexo" value="${map.user.getSexo()}" />
            <form:hidden path="estado" value="${map.user.getEstado()}" />          
             <form:hidden path="idPerfil" value="${map.user.getIdPerfil()}" />
             <div id="texto" style="color:red"><h2></h2></div>
             
                 <input onClick="return validacao('${map.user.idPerfil}');" class="button" type="submit" value="Save" />                     
            </form:form>  
    </body>
</html>
