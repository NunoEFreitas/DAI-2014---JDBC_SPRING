<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
        <title>Login - Sistema de Informação - SCB</title>
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">

    </head>
    <body>

        <%
            if (session.getAttribute("perfil") != null) {
        %> 

        <%
            if (session.getAttribute("perfil").equals(5)) {%>
        <%@include file="/resources/include/templateAnalistas.jsp" %>
        <% } else if (session.getAttribute("perfil").equals(1)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(2)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(3)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(4)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(6)) {
                response.sendRedirect("naoAutorizado");
            }

        %>


        
        <!-- Page content -->
        <h3> ${resultado} </h3>

        <%
            out.print("<h4> Id:" + session.getAttribute("user") + " Perfil: " + session.getAttribute("perfil"));

        %>
            
              <br>
        <img  width="600" height="400" src="<c:url value="/resources/images/volei.jpg" />" />

        <%
            }else{ 
                response.sendRedirect("login");
            }
        %>
    </body>

</html>


