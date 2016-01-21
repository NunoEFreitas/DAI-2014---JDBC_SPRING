<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
        <title>Login - Sistema de Informação - SCB</title>


    </head>
    <body>

        <%@include file="/resources/include/templateAnalistas.jsp" %>
          <!-- Page content -->
        ${resultado} 

        <%
            out.print("<h4> welcome" + session.getAttribute("user"));


        %>

    </div>
</div>
</div>

</body>

</html>


