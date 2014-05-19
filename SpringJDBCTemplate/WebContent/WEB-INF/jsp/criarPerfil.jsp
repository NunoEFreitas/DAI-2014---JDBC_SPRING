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
            <h1> Gerir Perfis<small> Criar Perfil </small>  </h1> 
        </div>


        <form:form method="post" action="/novoperfil" modelAttribute="perfil">
            <table>
                <tr>
                    <td> Designao: </td>
                    <td> <form:input type="text" path="designacao"/> </td>
                </tr>
                <tr>
                    <td> </td>
                    <td> <input type="submit" value="Guardar" /> </td>
                </tr>

            </table>
        </form:form>

    </div>
</div>      
</div>

</body>

</html>


