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

        <!-- Page content -->
        <div id="page-content-wrapper">
            <div class="content-header">
                <h1>
                    <a id="menu-toggle" href="#" class="btn btn-default"><i class="icon-reorder"></i></a>
                    ${resultado} 
                    <br>
                    <% String nome = request.getParameter("username");
                        out.print("Bem Vindo " + nome);
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


