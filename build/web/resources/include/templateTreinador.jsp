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
                        <li class='active'><a href='treinador'><span>Treinador</span></a></li>
                        <li class='has-sub'><a href='#'><span>Gerir Atletas</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>Visualizar Atleta</span></a>
                                    <ul>
                                        <li><a href='userList'><span>VisualizarDadosAtleta</span></a></li>
                                        <li><a href='#'><span>VisualizarHistoricoAtleta</span></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Gerir Treinos</span></a>
                            <ul>
                                <li class='has-sub'><a href='criarTreino'><span>CriarTreino</span></a>

                                <li><a href="listarTreinos"><span>Listar Treinos</span></a></li>
                            </ul>
                        </li>
                        
                        <li class='has-sub'><a href='#'><span>Gerir Competicoes</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>AnalisarTempoReal</span></a>
                                    <ul>
                                        <li class='last'><a href='criarJogo'><span>CriarJogo</span></a></li>
                                    </ul>
                                    <ul>
                                        <li class='last'><a href='listarJogosT'><span>Listar Jogos</span></a></li>
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
                                        <li><a href='dadosTabela'><span>AnalisarDadosTabela</span></a></li>
                                        <li><a href='dadosGrafico'><span>AnalisarDadosGrafico</span></a></li>
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
                </div>
            </div>
        </div>
                   
                  
    </body>
</html>                                		