<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Sistema de Informação - SBC</title>
        <%--<link href="<c:url value="/resources/css/dropdown.css" />" rel="stylesheet"  type="text/css" />--%>

    </head>
    <body>
        <div id="wrapper">
            <div id="leftcolumn"><img src="<c:url value="/resources/images/braga.jpg" />" /> </div>
            <div id="rightcolumn">
                <div id='cssmenu'>
                    <ul>
                        <li class='active'><a href='treinadorAdjunto'><span>TreinadorAdjunto</span></a></li>
                         <li class='has-sub'><a href='#'><span>Gerir Treinos</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>CriarTreino</span></a>
                                    <ul>
                                        <li><a href='#'><span>DefinirEquipa</span></a></li>
                                        <li class="last"><a href="#"><span>DefinirPlanoTreino</span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'><a href='#'><span>VisualizarTreino</span></a></li>
                                <li class='has-sub'><a href='#'><span>ControlarPresenças</span></a></li>
                                <li class='has-sub'><a href='#'><span>VisualizarHistoricoTreino</span></a></li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Gerir Competições</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>AnalisarTempoReal</span></a>
                                    <ul>
                                        <li><a href='#'><span>CriarJogo</span></a></li>
                                        <li><a href='#'><span>InserirDadosJogo</span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'><a href='#'><span>AnalisarPosteriori</span></a>
                                    <ul>
                                        <li><a href='#'><span>GerarDadosTabela</span></a></li>
                                        <li class='last'><a href='#'><span>GerarDadosGráfico</span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'><a href='#'><span>ManusearVídeo</span></a>
                                    <ul>
                                        <li><a href='#'><span>InserirVídeo</span></a></li>
                                        <li class='last'><a href='#'><span>ApagarVídeo</span></a></li>
                                        <li class='last'><a href='#'><span>VisualizarVídeo</span></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Analisar Adversários</span></a>
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
                                <li class='has-sub'><a href='#'><span>ManusearVídeo</span></a>
                                    <ul>
                                        <li><a href='#'><span>InserirVídeo</span></a></li>
                                        <li><a href='#'><span>ApagarVídeo</span></a></li>
                                        <li><a href='#'><span>VisualizarVídeo</span></a></li>
                                    </ul>
                                </li> 
                            </ul>
                        </li>
                        

                </ul>

                </div>
            </div>
        </div>
                  
    </body>
</html>                                		