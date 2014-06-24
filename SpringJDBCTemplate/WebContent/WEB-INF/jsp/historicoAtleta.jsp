<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
       
        <title>Login - Sistema de Informação - SCB</title>
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">

    </head>
    <body>

 <%  
    if(session.getAttribute("perfil") != null) {  
%> 
     
	    <% 
	   if(session.getAttribute("perfil").equals(1)){ %>
          <%@include file="/resources/include/templateAtleta.jsp" %>
          <% }else if(session.getAttribute("perfil").equals(2)){ %>
	   <%@include file="/resources/include/templateTreinador.jsp" %> 
      <%  }else if(session.getAttribute("perfil").equals(3)){
           response.sendRedirect("naoAutorizado");   
        }else if(session.getAttribute("perfil").equals(4)){
            response.sendRedirect("naoAutorizado");
        } else if(session.getAttribute("perfil").equals(5)){
            response.sendRedirect("naoAutorizado");
        } else if(session.getAttribute("perfil").equals(6)){
             response.sendRedirect("naoAutorizado");
        }
    
         %>
      

        <Div  class = "cabecalho da pagina" > 
            <h1> Gerir Recursos Humanos<small> Visualizar historico atleta </small>  </h1> 
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

                </tr>
            </c:forEach>
        </table>
<%  
    }else{  
        response.sendRedirect("login");  
    }  
%>

    </body>

</html>
