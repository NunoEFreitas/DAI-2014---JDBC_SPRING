<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Editar - Sistema de Informa��o - SCB</title>
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value ="/resources/css/register.css"/>" rel="stylesheet" type="text/css">
 
</head>
<body>

       <%@include file="/resources/include/templateSeccionista.jsp" %>

        <!-- Page content -->
        <Div  class = "cabecalho da pagina" > 
            <h1> Gerir Recursos Humanos<small>  Editar dados do Utilizador ${map.user.nome} </small>  </h1> 
        </div>
       

            <form:form id="contactform" class="rounded" name="register" method="post" action="/update" modelAttribute="utilizador">
                <div class="field" id="2">
                    <label>Nome:</label>
                    <form:input path="Nome" class="input" value="${map.user.nome}" />
                </div> 	
                <div class="field" id="2">
                    <label>Morada:</label>
                    <form:input path="Morada" class="input" value="${map.user.morada}" />
                </div> 
                <div class="field" id="2">
                    <label>Telefone:</label>
                    <form:input path="Telefone" class="input" value="${map.user.telefone}" />
                </div> 
                <div class="field" id="2">
                    <label>Altura:</label>
                    <form:input path="Altura" class="input" value="${map.user.altura}" />
                </div> 
                <div class="field" id="2">
                    <label>Peso:</label>
                    <form:input path="Peso" class="input" value="${map.user.peso}" />
                </div> 

                <div class="field" id="2">
                    <label>Email:</label>
                    <form:input path="Email" class="input" value="${map.user.email}" />
                </div> 

                <div class="field" id="2">
                    <label>Password:</label>
                    <form:input path="Password" class="input" value="${map.user.password}" />
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
                    <input type="submit" value="Save" />
                </div>	

                <form:hidden path="idUtilizador" value="${map.user.idUtilizador}" />
                <form:hidden path="idPerfil" value="${map.user.idPerfil}" />
                <form:hidden path="idEscalao" value="${map.user.idEscalao}" />
            </form:form>




</body>

</html>

