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
                                <li class='has-sub'><a href='#'><span>CriarJogo</span></a></li>
                                <li class='has-sub'><a href='#'><span>InserirDadosJogo</span></a>
                                    <ul>
                                        <li><a href='#'><span>InserirTendênciaPasse</span></a></li>
                                        <li><a href='#'><span>InserirTendênciaServiço</span></a></li>
                                        <li><a href='#'><span>InserirTendênciaAtaque</span></a></li>
                                        <li><a href='#'><span>InserirFalhasReceção</span></a></li>
                                        
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
           <br>
           <br>

    </body>
 </html>  