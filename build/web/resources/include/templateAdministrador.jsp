<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">

        <!-- Add custom CSS here -->
        <link href="<c:url value= "resources/css/simple-sidebar.css"/>" rel="stylesheet" type="text/css">


    </head>
    <body>
        
       

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand"><a href="#"><img src="<c:url value="/resources/images/logotipo.jpg" />" /></a>
                </li> 
                <li><a href="register">Registar Atletas</a>
                </li>
                <li><a href="register">Modifiar Atletas</a>
                </li>
                <li>Visualizar Atleta
                    <ul>
                        <li><a href="getList">Visualizar historico de atleta</a></li>
                         <li><a href="getList">Visualizar dados atleta</a>
                </li> 
                    </ul>
                </li>
                <li><a href="login">Logout</a>
                </li>
            </ul>
        </div>

       
       

   

        
        
        
        
    </body>
</html>
