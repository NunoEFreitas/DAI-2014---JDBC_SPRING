<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
       
        <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand"><img height="40" width="40" src="<c:url value="/resources/images/logotipo.jpg" />" />
                </li>
                <li><a href="#">Perfil</a>
                </li>
                <li><a href="#">Contacto</a>
                </li>
                <li><a href="register">Registar</a>
                </li>
                <li><a href="getList">Listar</a>
                </li>
                <li><a href="#">About</a>
                </li>
                <li><a href="#">Opções</a>
                </li>
                <li><a href="login">Logaut</a>
                </li>
            </ul>
        </div>
         <!-- Page content -->
        <div id="page-content-wrapper">
            <div class="content-header">
                <h1>
                    <a id="menu-toggle" href="#" class="btn btn-default"><i class="icon-reorder"></i></a>
                    
                </h1>
            </div>
            <!-- Keep all page content within the page-content inset div! -->
            <div class="page-content inset">
                <div class="row">
                    Admin
                    
                    
                </div>
            </div>
        </div>

    </div>
        
        
    </body>
</html>
