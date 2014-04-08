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

                <li>Visualizar Atleta
                    <ul>
                        <li><a href="#">Visualizar historico de atleta</a></li>
                        <li><a href="getList">Visualizar dados atleta</a>
                        </li> 
                    </ul>
                </li>
                <li>Analisar à posteriori
                    <ul>
                        <li><a href="#">Gerar dados em tabela</a></li>
                        <li><a href="#">Gerar dados em gráfico</a></li>

                </li> 
            </ul>
        </li>
        <li><a href="login">Sair</a>
        </li>
    </ul>
</div>

</body>
</html>
