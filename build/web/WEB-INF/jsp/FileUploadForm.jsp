File Upload Form

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
         <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
          <link href="<c:url value ="/resources/css/register.css"/>" rel="stylesheet" type="text/css">
<style>
.error {
	color: #ff0000;
}
 
.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
 
<body>
    
     <%
         if (session.getAttribute("perfil").equals(6)) {%>  
        <%@include file="/resources/include/templateSeccionista.jsp"%>
        <%            } else if (session.getAttribute("perfil").equals(2)) {%>
        <%@include file="/resources/include/templateTreinador.jsp" %>
        <% } else if (session.getAttribute("perfil").equals(3)) {%>

        <%@include file="/resources/include/templateTreinadorAdjunto.jsp" %>         
        <%             }
        %>
    
    
	<Div  class = "cabecalho da pagina" > 
            <h1> Manusear video<small> Inserir video </small>  </h1> 
        </div><br>

 
	<form:form id="contactform" class="rounded" method="POST" commandName="fileUploadForm" enctype="multipart/form-data">
 
		<form:errors path="*" cssClass="errorblock" element="div" />
 
		Por favor selecione um arquivo para enviar:<br>
                <input class="input" type="file" name="file" /><br>
		<input class="button" type="submit" value="Guardar" />
		<span><form:errors path="file" cssClass="error" />
		</span>
 
	</form:form>
 
</body>
</html>
