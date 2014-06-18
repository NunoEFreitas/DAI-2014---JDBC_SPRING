<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Sistema de Informa��o - SBC</title>
       <link href="<c:url value="/resources/css/dropdown.css" />" rel="stylesheet"  type="text/css" />

    </head>
    <body>
        <div id="wrapper">
            <div id="leftcolumn"><img src="<c:url value="/resources/images/braga.jpg" />" /> </div>
            <div id="rightcolumn">
                <div id='cssmenu'>
                    <ul>
                        <li class='active'><a href='treinadorAdjunto'><span>TreinadorAdjunto</span></a></li>
                         <li><button onclick="location.href='login?logout=sair'"><img src="<c:url value="/resources/images/logout.png" />" /></button></li>
                         <li class='has-sub'><a href='#'><span>Gerir Treinos</span></a>
                            <ul>
                                <li class='has-sub'><a href='listarTreinosTA'><span>Listar Treinos</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Gerir Competi��es</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>AnalisarTempoReal</span></a>
                                    <ul>
                                        <li><a href='listarJogosTA'><span>Listar Jogos</span></a></li>
                                        <li><a href='#'><span>InserirDadosJogo</span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'><a href='#'><span>AnalisarPosteriori</span></a>
                                    <ul>
                                        <li><a href='#'><span>GerarDadosTabela</span></a></li>
                                        <li class='last'><a href='#'><span>GerarDadosGr�fico</span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'><a href='#'><span>ManusearV�deo</span></a>
                                    <ul>
                                        <li><a href='#'><span>InserirV�deo</span></a></li>
                                        <li class='last'><a href='#'><span>ApagarV�deo</span></a></li>
                                        <li class='last'><a href='#'><span>VisualizarV�deo</span></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Analisar Advers�rios</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>InserirDadosTempoReal</span></a>
                                    <ul>
                                        <li><a href='#'><span>CriarJogo</span></a></li>
                                        <li><a href='#'><span>InserirDadosJogo</span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'><a href='#'><span>AnalisarPosteriori</span></a>
                                    <ul>
                                        <li><a href='#'><span>AnalisarDadosTabela</span></a></li>
                                        <li><a href='#'><span>AnalisarDadosGrafico</span></a></li>
                                    </ul>
                                </li> 
                                <li class='has-sub'><a href='#'><span>ManusearV�deo</span></a>
                                    <ul>
                                        <li><a href='#'><span>InserirV�deo</span></a></li>
                                        <li><a href='#'><span>ApagarV�deo</span></a></li>
                                        <li><a href='#'><span>VisualizarV�deo</span></a></li>
                                    </ul>
                                </li> 
                            </ul>
                        </li>
                        

                </ul>

     
    </body>
</html>                                		