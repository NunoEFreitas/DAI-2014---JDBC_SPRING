<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Editar - Sistema de Informação - SCB</title>
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value ="/resources/css/register.css"/>" rel="stylesheet" type="text/css">
        <script src="<c:url value="/resources/js/editar.js"/>"/></script>
  
</head>
<body onload="edit('${map.user.idPerfil}')">
   
       <%@include file="/resources/include/templateSeccionista.jsp" %>

        <!-- Page content -->
        <Div  class = "cabecalho da pagina" > 
            <h1> Gerir Recursos Humanos<small>  Editar dados do Utilizador ${map.user.nome} </small>  </h1> 
        </div>
       

            <form:form id="contactform" name="editar" class="rounded" method="post" action="/update" modelAttribute="utilizador" >
                <div class="field" id="1">
                    <label>Nome:</label>
                    <form:input path="nome" name="nome" class="input" value="${map.user.nome}" />
                </div> 	
                  <div class="field" id="2">
                    <label>Password:</label>
                    <form:input path="Password" name="password" class="input" value="${map.user.password}" />
                </div> 
                                
                <div class="field" id="3">
                    <label>Morada:</label>
                    <form:input path="Morada" name="morada" class="input" value="${map.user.morada}" />
                </div> 
                <div class="field" id="4">
                    <label>Telefone:</label>
                    <form:input path="Telefone" name="telefone" class="input" value="${map.user.telefone}" />
                </div> 
                
                 <div class="field" id="5">
                    <label>Email:</label>
                    <form:input path="Email" type="email" required="required" class="input" value="${map.user.email}" />
                </div>               
                <div class="field" id="6">
                    <label>Altura:</label>
                    <form:input type="number" step="1" min="0" path="Altura" class="input" value="${map.user.altura}" />
                </div> 
                <div class="field" id="7">
                    <label>Peso:</label>
                    <form:input type="number" step="1" min="0" path="Peso" class="input" value="${map.user.peso}" />
                </div> 
                <div class="field" id="8">
                    <label>Salto Vertical:</label>
                    <form:input type="number" step="1" min="0" path="saltoVertical" class="input" value="${map.user.saltoVertical}" />
                </div> 
                
                 <div class="field" id="9">
                     <label>Velocidade de Deslocamento:</label>
                    <form:input type="number" step="1" min="0" path="velocidadeDeslocamento" class="input" value="${map.user.velocidadeDeslocamento}" />
                </div> 
                
                 <div class="field" id="10">
                     <label>Alcance de ataque:</label>
                    <form:input type="number" step="1" min="0" path="alcanceAtaque" class="input" value="${map.user.alcanceAtaque}" />
                </div> 
                 <div class="field" id="11">
                     <label>Exames Clinicos:</label>
                    <form:input path="examesClinicos" class="input" value="${map.user.examesClinicos}" />
                </div> 

                 <div class="field" id="12">
                     <label>Estatura::</label>
                    <form:input type="number" step="1" min="0" path="estatura" class="input" value="${map.user.estatura}" />
                </div> 
                
                <div class="field" id="13">
                     <label>Escalao:</label>
                    <form:input path="idEscalao" class="input" value="${map.user.idEscalao}" />
                </div> 
                
                


              
                
               

                <%--		<tr>
                                   

                                                <td>Tipo de Utilizador :</td>
                                                <td><spring:bind path="tipo_de_utilizador">
                                                                <select name="tipo_de_utilizador">
                                                                        <c:forEach items='${map.tdu}' var='tdu'>
                                                                                <c:choose>
                                                                                        <c:when test="${tdu eq map.user.tipo_de_utilizador}">
                                                                                                <option value="${tdu}" selected="true">${tdu}</option>
                                                                                        </c:when>
                                                                                        <c:otherwise>
                                                                                                <option value="${tdu}">${tdu}</option>
                                                                                        </c:otherwise>
                                                                                </c:choose>
                                                                        </c:forEach>
                                                                </select>
                                                        </spring:bind></td>
                                        </tr>
                                        <tr> 
                --%>                             <div id="19">
                    <label>&nbsp;</label>
                    <div id="texto" style="color:red"><h2></h2></div>
                    <input onClick="return validacao();" type="submit" value="Save" />
                </div>	

                <form:hidden path="idUtilizador" value="${map.user.idUtilizador}" />
                <form:hidden path="idPerfil" value="${map.user.idPerfil}" />
                <form:hidden path="idEscalao" value="${map.user.idEscalao}" />
            </form:form>




</body>

</html>

