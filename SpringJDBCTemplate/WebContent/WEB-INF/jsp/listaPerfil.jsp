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

      
    <table border="1"> 
        <tr>
            <td Class="heading"> ID Perfil </td>
            <td Class="heading"> Designação </td>
        </tr>
        <c:forEach var="pl" items="${perfilList}">
            <tr>
                <td> ${pl.getIdPerfil()} </td>
                <td> ${pl.getDesignacao()} </td>
                <td><a href="apagarPerfil?id=${pl.getIdPerfil()}">Apagar</a></td>
            </tr>
        </c:forEach>
    </table>

    </div>
</div>      
</div>

</body>

</html>


