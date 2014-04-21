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

                <div class="row">
                   
                    <form:form method="post" action="/insereutilizador" modelAttribute="utilizador">
				<table>
                                    <tr>
						<td>Nome :</td>
						<td><form:input path="nome" /></td>
                                    </tr>
                                    <tr>
                                                <td>Password :</td>
						<td><form:input path="password" /></td>
                                    </tr>
                                        <tr>
                                                
                                                <td>Data de Nascimento :</td>
						<td><form:input path="dataNascimento" /></td>
                                        </tr>
                                        <tr>
                                                <td>Morada :</td>
						<td><form:input path="morada" /></td>
                                        </tr>
                                        <tr>
                                                <td>Sexo :</td>
						<td><form:input path="sexo" /></td>
                                        </tr>
                                        <tr>
                                                <td>Telefone :</td>
						<td><form:input path="telefone" /></td>
                                        </tr>
                                        <tr>
                                                <td>Email :</td>
						<td><form:input path="email" /></td>
                                </tr>
                                <tr>
                                                <td>Altura :</td>
						<td><form:input path="altura" /></td>
                                </tr>
                                <tr>
                                                <td>Peso :</td>
						<td><form:input path="peso" /></td>
                                </tr>
                                <tr>
                                                <td>Salto Vertical :</td>
						<td><form:input path="saltoVertical" /></td>
                                </tr>
                                <tr>
                                                <td>Velocidade Deslocamento :</td>
						<td><form:input path="velocidadeDeslocamento" /></td>
                                </tr>
                                <tr>
                                                <td>Alcance Ataque :</td>
						<td><form:input path="alcanceAtaque" /></td>
                                </tr>
                                <tr>
                                                <td>Alcance Bloco :</td>
						<td><form:input path="alcanceBloco" /></td>
                                </tr>
                                <tr>
                                                <td>Exames Clinicos :</td>
						<td><form:input path="examesClinicos" /></td>
                                </tr>

                                <tr>
                                                <td>Perfil :</td>
						<td>
								<form:select path = "idPerfil" name="idPerfil">
									<c:forEach items='${map.lp}' var='lp'>
									<form:option value ="${lp.idPerfil}">${lp.designacao}</form:option>
									</c:forEach>
								</form:select>
							</td>
                                </tr>
                                
                                <tr>
                                                <td>Escalao :</td>
						<td>
								<form:select path = "idEscalao" name="idEscalao">
									<c:forEach items='${map.li}' var='li'>
									<form:option value ="${li.idEscalao}">${li.designacao}</form:option>
									</c:forEach>
								</form:select>
							</td>
                                </tr>
                      
                                <tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Guardar" /></td>
                                </tr>
					
				</table>
			</form:form>
                    
                    
                    
                    
                    </div>
   



        </body>

</html>

