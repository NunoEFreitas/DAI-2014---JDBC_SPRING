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
                        <li class='active'><a href=''><span>Treinador</span></a></li>
                         <li><button onclick="location.href='login?logout=sair'"><img src="<c:url value="/resources/images/logout.png" />" /></button></li>
                        <li class='has-sub'><a href='#'><span>Gerir Atletas</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>Visualizar Atleta</span></a>
                                    <ul>
                                        <li><a href='/VoleiUM/listarUtilizadores'><span>VisualizarDadosAtleta</span></a></li>
                                        <li><a href='#'><span>VisualizarHistoricoAtleta</span></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Gerir Treinos</span></a>
                            <ul>
                                <li class='has-sub'><a href='/VoleiUM/criarTreino'><span>CriarTreino</span></a>

                                <li><a href="/VoleiUM/listarTreinosT"><span>Listar Treinos</span></a></li>
                            </ul>
                        </li>
                        
                        <li class='has-sub'><a href='#'><span>Gerir Competicoes</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>AnalisarTempoReal</span></a>
                                    <ul>
                                        <li class='last'><a href='/VoleiUM/criarJogo'><span>CriarJogo</span></a></li>
                                   
                                        <li class='last'><a href='/VoleiUM/listarJogosT'><span>Listar Jogos</span></a></li>
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
                                        <li><a href='/VoleiUM/criarVideo'><span>InserirVídeo</span></a></li>
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
                                        <li><a href='/VoleiUM/criarJogo'><span>CriarJogo</span></a></li>
                                        <li><a href='#'><span>InserirDadosJogo</span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'><a href='#'><span>AnalisarPosteriori</span></a>
                                    <ul>
                                        <li><a href='/VoleiUM/dadosTabela'><span>AnalisarDadosTabela</span></a></li>
                                        <li><a href='/VoleiUM/dadosGrafico'><span>AnalisarDadosGrafico</span></a></li>
                                    </ul>
                                </li> 
                                <li class='has-sub'><a href='#'><span>ManusearVídeo</span></a>
                                    <ul>
                                        <li><a href='/VoleiUM/criarVideo'><span>InserirVídeo</span></a></li>
                                        <li><a href='#'><span>ApagarVídeo</span></a></li>
                                        <li><a href='#'><span>VisualizarVídeo</span></a></li>
                                    </ul>
                                </li> 
                            </ul>
                        </li>
                        

                </ul>
      
                  
    </body>
</html>                                		