<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Sistema de Informação - SBC</title>
        <link href="<c:url value="/resources/css/dropdown.css" />" rel="stylesheet"  type="text/css" />

    </head>
    <body>
        <div id="wrapper">
            <div id="leftcolumn"><img src="<c:url value="/resources/images/braga.jpg" />" /> </div>
            <div id="rightcolumn">
                <div id='cssmenu'>
                    <ul>
                        <li class='active'><a href='#'><span>Administração</span></a></li>
                        <li class='has-sub'><a href='register'><span>Registar Utilizador</span></a>
                        <li class='has-sub'><a href='#'><span>Modificar Atleta</span></a>
                            <ul>
                                <li><a href='#'><span>Ativar/Desativar</span></a></li>
                                <li class="last"><a href="alterarDados"><span>AlterarDados</span></a></li>
                            </ul>
                        </li>  
                        <li class='has-sub'><a href='#'><span>Visualizar Atleta</span></a>
                            <ul>
                                <li><a href='#'><span>VisualizarHistóricoAtleta</span></a></li>
                                <li class="last"><a href="userList"><span>VisualizarDadosAtleta</span></a></li>
                            </ul>
                        </li>  
                    </ul>            
                    <br>
                    <br>
    </body>
</html>                                		