<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
        <meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
        <title>Login - Sistema de Informação - SCB</title>
         <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">

    </head>
    <body>
 
    <%@include file="/resources/include/templateSeccionista.jsp"%>

       <Div  class = "cabecalho da pagina" > 
            <h1> Gerir Perfis<small> Visualizar Perfil </small>  </h1> 
        </div>

    <table class="table"> 
        <tr>
            <td Class="heading"> ID Perfil </td>
            <td Class="heading"> Designação </td>
        </tr>
        <c:forEach var="pl" items="${perfilList}">
            <tr>
                <td> ${pl.getIdpagamento()} </td>
                <td> ${pl.getIdrecebimento()} </td>
                
            </tr>
        </c:forEach>
    </table>

    </div>
</div>      
</div>

</body>

</html>