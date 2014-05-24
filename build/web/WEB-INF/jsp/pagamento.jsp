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





        <table border="1" >
            <tr>
                <td class="heading">IDPagamento</td>
                <td class="heading">id recebimento</td>

                <td class="heading">Idutilizador</td>
                <td class="heading">valoreceber</td>
                <td class="heading">valorPagar</td>
                <td class="heading">nomeutilizador</td>
                <td class="heading">Idecalao</td>
                <td class="heading">DaTa</td>


            </tr>

            <tr>
                <td>${map.user.idpagamento}</td>
                <td>${map.user.idrecebimento}</td>
                <td>${map.user.idutilizador}</td>
                <td>${map.user.valorReceber}</td>
                <td>${map.user.valorPagar}</td>
                <td>${map.user.nomeutilizador}</td>
                <td>${map.user.idescalao}</td>
                <td>${map.user.data}</td>


            </tr>

        </table>


    </body>

</html>