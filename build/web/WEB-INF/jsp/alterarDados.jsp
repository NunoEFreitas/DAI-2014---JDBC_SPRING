

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Listar Jogadores - Sistema de Informação - SCB</title>
	
                
        <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">

</head>
<body>


    <%@include file="/resources/include/templateAdministracao.jsp"%>
  
 <%
     
 %>
                 
        <Div  class = "cabecalho da pagina" > 
            <h1> Recursos humanos<small> Editar Apagar Utilizadores </small>  </h1> 
        </div>

                   
                       <table border="1">
			<tr>
				<td class="heading">ID de Utilizador</td>
				<td class="heading">Nome</td>
				
				<td class="heading">Edit</td>
                                <td class="heading">Apagar</td
				
			</tr>
			<c:forEach var="ul" items="${utilizadorList}">
				<tr>
					<td>${ul.idUtilizador}</td>
					<td>${ul.nome}</td>
					
					<td><a href="edit?id=${ul.idUtilizador}">Edit</a></td>
                                         <td><a href="edit?id=${ul.idUtilizador}">Apagar</a></td>
                        </tr>
			</c:forEach>
		</table>

        
                    
                    
                </div>
            </div>
        </div>


        </body>

</html>


