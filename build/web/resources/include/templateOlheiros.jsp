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
                        <li class='active'><a href='#'><span>Olheiro</span></a></li>

                        <li class='has-sub'><a href='#'><span>Inserir Dados em Tempo Real</span></a>
                            <ul>
                                <li><a href='#'><span>InserirTendênciasAtaque</span></a></li>
                                <li class="last"><a href="#"><span>InserirTendênciasPasse</span></a></li>
                                <li class="last"><a href="#"><span>InserirTendênciasServiço</span></a></li>
                                <li class="last"><a href="#"><span>InserirPiorRecetora</span></a></li>
                            </ul>
                        </li>  
                    </ul>
           <br>
           <br>

    </body>
 </html>  