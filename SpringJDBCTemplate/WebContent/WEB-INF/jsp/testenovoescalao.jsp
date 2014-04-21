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

                <div class="row">
                   
                    <form:form method="post" action="/novoescalao" modelAttribute="escalao">
				<table>
					<tr>
						<td>Designação :</td>
						<td><form:input path="designacao" /></td>
					</tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Guardar" /></td>
					</tr>
					
				</table>
			</form:form>
                    
                    
                    
                    
                    </div>
   



        </body>

</html>
