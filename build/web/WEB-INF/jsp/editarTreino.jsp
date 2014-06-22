
<%-- 
    Document   : alterarTreino
    Created on : 10/Jun/2014, 20:42:47
    Author     : Nuno
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="<c:url value ="/resources/css/register.css"/>" rel="stylesheet" type="text/css">
         <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
        
    </head>
    <body>
       <%
            if (session.getAttribute("perfil") != null) {
        %> 

        <%
                if (session.getAttribute("perfil").equals(2)) {%>
        <%@include file="/resources/include/templateTreinador.jsp"%>
        <% } else if (session.getAttribute("perfil").equals(1)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(3)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(4)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(5)) {
                response.sendRedirect("naoAutorizado");
            }else if(session.getAttribute("perfil").equals(6)){
             response.sendRedirect("naoAutorizado");
        }

        %>

        
         <Div  class = "cabecalho da pagina" > 
            <h1>Listar treinos<small> Editar treinos </small>  </h1> 
        </div>
        
         <form:form id="contactform" class="rounded" method="post" action="/updateTreino" modelAttribute="treino">
             <table>

                 <label>Duracao :</label>
                 <form:input type="text" class="input" path="duracaoTreino" value="${tr.duracaoTreino}" /><br>


                 <label>Local :</label>
                 <form:input class="input" path="localTreino" value="${tr.localTreino}" /><br>


                 <label>Data :</label>
                 <form:input type="date" class="input" path="dataTreino" value="${tr.dataTreino}" /><br>




                 <label>Tipo :</label>
                 <form:input class="input" path="tipoTreino" value="${tr.tipoTreino}" /><br>



                 <label>Hora :</label>
                 <form:input type="time" class="input" path="horaTreino" value="${tr.horaTreino}" /><br>


                 <label>&nbsp;</label>
                 <input class="button" type="submit" value="Save" />




                 <form:hidden path="idEscalao" value="${tr.idEscalao}" />
                 <form:hidden path="idTreino" value="${tr.idTreino}" />

             </form:form>

   <%
            } else {
                response.sendRedirect("login");
            }
        %>
    </body>
</html>
