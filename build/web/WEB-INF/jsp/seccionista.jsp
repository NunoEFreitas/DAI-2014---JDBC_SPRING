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
                if (session.getAttribute("perfil").equals(6)) {%>
         <%@include file="/resources/include/templateSeccionista.jsp"%>
        <% } else if (session.getAttribute("perfil").equals(1)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(2)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(3)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(4)) {
                response.sendRedirect("naoAutorizado");
            } else if (session.getAttribute("perfil").equals(5)) {
                response.sendRedirect("naoAutorizado");
            }

        %>
   

      
          <!-- Page content -->
          
          <h4> ${resultado} </h4>
          
          
       
        <%
           out.print("<h4> Id:" + session.getAttribute("user") + " Perfil: " + session.getAttribute("perfil"));

        %>
        
              <%
            } else {
                response.sendRedirect("login");
            }
        %>	


</body>

</html>


