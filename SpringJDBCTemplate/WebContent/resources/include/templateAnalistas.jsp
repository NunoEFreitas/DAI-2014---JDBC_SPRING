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
                        <li class='active'><a href='#'><span>Analista</span></a></li>
                        <li class='has-sub'><a href='#'><span>Analisar em Tempo Real</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>InserirDadosJogo</span></a>
                                    <ul>
                                        <li><a href='#'><span>InserirDadosReceção</span></a></li>
                                        <li><a href='#'><span>InserirDadosAtaque</span></a></li>
                                         <li><a href='#'><span>InserirDadosDefesa</span></a></li>
                                          <li><a href='#'><span>InserirDadosBloco</span></a></li>
                                           <li><a href='#'><span>InserirDadoserviço</span></a></li>
                                    </ul>
                                </li>
                                
                            </ul>
                        </li>
                         <li class='has-sub'><a href='#'><span>Analisar À Posteriori</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>GerarDadosGráfico</span></a></li>
                            
                            </ul>
                        </li>
                       
                    </ul>
                    <br>
                    <br>
    </body>
</html> 