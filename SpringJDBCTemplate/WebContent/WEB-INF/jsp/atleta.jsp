<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Login - Sistema de Informação - SCB</title>

       
</head>
<body>
  
	 <div id="wrapper">
    <%@include file="/resources/include/templateAtleta.jsp" %>
       
        <!-- Page content -->
       
        <h1> ${resultado}</h1> 
                    
                   <% 
          out.print("<h4> Id:" + session.getAttribute("user") + " Perfil: " + session.getAttribute("perfil"));
          
       
       %>
             
                    
                    
                    
                    
                    
                    
                    
                    
                    
                </div>
            </div>
        </div>



        </body>

</html>


