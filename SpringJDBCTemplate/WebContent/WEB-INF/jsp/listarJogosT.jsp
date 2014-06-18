
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        
          <%@include file="/resources/include/templateTreinador.jsp" %>
          <Div  class = "cabecalho da pagina" > 
            <h1>Analisar em tempo real<small> Listar jogos </small>  </h1> 
        </div><br>
          
          
        <table class="table"> 
        <tr>
            <td Class="heading"> ID Jogo </td>
            <td Class="heading"> Local </td>
            <td Class="heading"> Data </td>
            <td Class="heading"> Hora </td>
            <td Class="heading"> Competição </td>
            <td Class="heading"> Equipa Adversaria </td>
            <td Class="heading"> Resultado </td>
            <td Class="heading"> Escolher Equipa </td>
            <td Class="heading"> Editar Jogo </td>
        </tr>
        <c:forEach var="lj" items="${ljogos}">
            <tr>
                <td> ${lj.getIdJogo()} </td>
                <td> ${lj.getLocal()} </td>
                <td> ${lj.getData()} </td>
                <td> ${lj.getHora()} </td>
                <td> ${lj.getIdCompeticao()} </td>
                <td> ${lj.getIdEquipaAdversaria()} </td>
                <td> ${lj.getResultado()} </td>
                <td><a href="jogoSelecionados/${lj.getIdJogo()}">Selecionar</a></td>
                <td><a href="editarJogo/${lj.getIdJogo()}">Selecionar</a></td>
            </tr>
        </c:forEach>
    </table>
    </body>
</html>
