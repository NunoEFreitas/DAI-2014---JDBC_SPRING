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
                        <li class='has-sub'><a href='#'><span>Gerir Atletas</span></a>
                            <ul>
                                <li><a href='#'><span>Recursos humanos</span></a>
                                    <ul>
                                        <li><a href='register'><span>Registar Utilizadores</span></a></li>
                                        <li class='has-sub'><a href='alterarDados'><span>Editar/Apagar Utilizadores</span></a></li>
                                        <li class='has-sub'><a href='#'><span>Gerir Pagamentos/Recebimentos</span></a>
                                            <ul>
                                                <li><a href='#'><span>Registar Pagamento</span></a></li>
                                                <li class="last"><a href="#"><span> Registar Recebimento</span></a></li>
                                                <li class="last"><a href="#"><span>  Analisar Dividas</span></a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>  
                    </ul>            
                    <br>
                    <br>
   </body>
   </html>                                		