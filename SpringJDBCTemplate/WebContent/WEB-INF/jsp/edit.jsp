<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Editar - Sistema de Informação - SCB</title>
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
        
 
</head>
<body>

       <%@include file="/resources/include/templateSeccionista.jsp" %>

        <!-- Page content -->
        <Div  class = "cabecalho da pagina" > 
            <h1> Gerir Recursos Humanos<small>  Editar dados do Utilizador ${map.user.nome} </small>  </h1> 
        </div>
       
          
                    <form:form method="post" action="/update" modelAttribute="utilizador">
				<table>
					<tr>
						<td>Nome :</td>
						<td><form:input path="Nome" value="${map.user.nome}" />
						</td>
					</tr>
					<tr>
						<td>Morada :</td>
						<td><form:input path="Morada" value="${map.user.morada}" />
						</td>
					</tr>
					<tr>
						<td>Telefone :</td>
						<td><form:input path="Telefone" value="${map.user.telefone}" />
						</td>
					</tr>
                                        
                                        <tr>
						<td>Altura :</td>
						<td><form:input path="Altura"
								value="${map.user.altura}" />
						</td>
					</tr>
                                        	<tr>
						<td>Peso :</td>
						<td><form:input path="Peso"
								value="${map.user.peso}" />
						</td>
					</tr>
                                        	<tr>
						<td>Email :</td>
						<td><form:input path="Email"
								value="${map.user.email}" />
						</td>
					</tr>
                                        	<tr>
						<td>Password :</td>
						<td><form:input path="Password"
								value="${map.user.password}" />
						</td>
					</tr>
                                                                                          
                               
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
   --%>
						<td>&nbsp;</td>
						<td><input type="submit" value="Save" />
						</td>
					</tr>
				</table>
				<form:hidden path="idUtilizador" value="${map.user.idUtilizador}" />
                                <form:hidden path="idPerfil" value="${map.user.idPerfil}" />
                                <form:hidden path="idEscalao" value="${map.user.idEscalao}" />
			</form:form>




        </body>

</html>

