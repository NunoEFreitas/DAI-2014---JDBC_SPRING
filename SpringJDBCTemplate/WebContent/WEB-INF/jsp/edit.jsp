<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Login - Sistema de Informação - SCB</title>
	  <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">

        <!-- Add custom CSS here -->
        <link href="<c:url value= "resources/css/simple-sidebar.css"/>" rel="stylesheet" type="text/css">


       
</head>
<body>
	 <div id="wrapper">

       <%@include file="/resources/include/templateAdministrador.jsp" %>

        <!-- Page content -->
        <div id="page-content-wrapper">
            <div class="content-header">
                <h1>
                    <a id="menu-toggle" href="#" class="btn btn-default"><i class="icon-reorder"></i></a>
                   Editar dados do Utilizador
                </h1>
            </div>
            <!-- Keep all page content within the page-content inset div! -->
            <div class="page-content inset">
                <div class="row">
                    <form:form method="post" action="/update" modelAttribute="user">
				<table>
					<tr>
						<td>Nome :</td>
						<td><form:input path="Nome"
								value="${map.user.nome}" />
						</td>
					</tr>
					<tr>
						<td>Morada :</td>
						<td><form:input path="Morada" value="${map.user.morada}" />
						</td>
					</tr>
					<tr>
						<td>Telefone :</td>
						<td><form:input path="Telefone"
								value="${map.user.telefone}" />
						</td>
					</tr>
                                        	<tr>
						<td>Telemovel :</td>
						<td><form:input path="Telemovel"
								value="${map.user.telemovel}" />
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
                                        	
                               
					<tr>

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
						<td>&nbsp;</td>
						<td><input type="submit" value="Save" />
						</td>
					</tr>
				</table>
				<form:hidden path="idUtilizador" value="${map.user.idUtilizador}" />

			</form:form>
                </div>
            </div>
        </div>

    </div>

        </body>

</html>
