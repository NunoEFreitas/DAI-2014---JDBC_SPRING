<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand"><a href="#">SCB</a>
                </li>
                <li><a href="#">Perfil</a>
                </li>
                <li><a href="#">Contacto</a>
                </li>
                <li><a href="#">Registar</a>
                </li>
                <li><a href="getList">Listar</a>
                </li>
                <li><a href="#">About</a>
                </li>
                <li><a href="#">Opções</a>
                </li>
                <li><a href="login">Logaut</a>
                </li>
            </ul>
        </div>

        <!-- Page content -->
        <div id="page-content-wrapper">
            <div class="content-header">
                <h1> Registar  </h1>
                
            </div>
            <!-- Keep all page content within the page-content inset div! -->
            <div class="page-content inset">
                <div class="row">
                   
                    <form:form method="post" action="/insert" modelAttribute="user">
				<table>
					<tr>
						<td>Nome :</td>
						<td><form:input path="Nome" /></td>
					</tr>
					<tr>
						<td>Morada :</td>
						<td><form:input path="Morada" /></td>
					</tr>
                                        <tr>
						<td>Telefone :</td>
						<td><form:input path="Telefone" /></td>
					</tr>
                                        <tr>
						<td>Telemovel :</td>
						<td><form:input path="Telemovel" /></td>
					</tr>
                                        <tr>
						<td>Altura :</td>
						<td><form:input path="Altura" /></td>
					</tr>
                                        <tr>
						<td>Peso :</td>
						<td><form:input path="Peso" /></td>
					</tr>
                                        <tr>
						<td>Email :</td>
						<td><form:input path="email" /></td>
					</tr>
                                        <tr>
						<td>Password :</td>
						<td><form:input path="password" /></td>
					</tr>
					<tr>
						<td>Tipo de Utilizador:</td>
						<td><form:select path="Tipo_de_utilizador" items="${map.Tipo_de_utilizador}" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Guardar" /></td>
					</tr>
					
				</table>
			</form:form>
                    
                    
                    
                    
                    </div>
                </div>
            </div>
        </div>

    </div>




        </body>

</html>