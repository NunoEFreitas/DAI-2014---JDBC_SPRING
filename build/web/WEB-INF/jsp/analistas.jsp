<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Login - Sistema de Informação - SCB</title>
	

      
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

        <!-- Page content -->
        <div id="page-content-wrapper">
            <div class="content-header">
                <h1>
                    <a id="menu-toggle" href="#" class="btn btn-default"><i class="icon-reorder"></i></a>
                    ${resultado} 
                    <br>
                    <%
                        out.print("<h4> welcome" + session.getAttribute("user"));


                    %>
                </h1>
            </div>
            <!-- Keep all page content within the page-content inset div! -->
            <div class="page-content inset">
                <div class="row">
                   
                    
                    
                    
                    
                    
                    
                    
                    
                    
                </div>
            </div>
        </div>

    </div>

        </body>

</html>


