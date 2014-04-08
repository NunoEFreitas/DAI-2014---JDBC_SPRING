<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
              
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

                <li>Analisar em tempo real
                    <ul>
                        <li><a href="getList">Inserir dados de jogo</a></li>
                    </ul>
                </li>
                <li><a href="login">Sair</a>
                </li>
            </ul>
        </div>

        
        
        
        
    </body>
</html>
