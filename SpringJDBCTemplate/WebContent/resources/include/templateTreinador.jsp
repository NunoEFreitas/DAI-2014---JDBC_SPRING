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
                        <li class='active'><a href='#'><span>Treinador</span></a></li>
                        <li class='has-sub'><a href='#'><span>Gerir Atletas</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>Visualizar Atleta</span></a>
                                    <ul>
                                        <li><a href='userList'><span>Visualizar dados atleta</span></a></li>
                                        <li><a href='#'><span>Visualizar historico da atleta</span></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        
                        <li class='has-sub'><a href='#'><span>Gerir Treinos</span></a>
                            <ul>
                                <li class='has-sub'><a href='criarTreino'><span>CriarTreino</span></a>
                                    <ul>
                                        <li><a href='#'><span>DefinirEquipa</span></a></li>
                                        <li class="last"><a href="#"><span>DefinirPlanoTreino</span></a></li>
                                        <li class="last"><a href="#"><span>DefinirDadosGeraisTreino</span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'><a href='#'><span>VisualizarTreino</span></a></li>
                                <li class='has-sub'><a href='#'><span>ModificarTreino</span></a>
                                    <ul>
                                        <li><a href='#'><span>CancelarTreino</span></a></li>
                                        <li class="last"><a href="#"><span>AlterarDadosTreino</span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'><a href='#'><span>ControlarPresenças</span></a></li>
                                <li class='has-sub'><a href='#'><span>VisualizarHistoricoTreino</span></a></li>

                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Gerir Competições</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>AnalisarTempoReal</span></a>
                                    <ul>
                                        <li><a href='#'><span>CriarEquipa</span></a></li>
                                        <li class="last"><a href="#"><span>CriarTáticaInicial</span></a></li>
                                        <li class="last"><a href="#"><span>CriarEquipaSuplentes</span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'><a href='#'><span>AnalisarPosteriori</span></a>
                                    <ul>
                                        <li><a href='#'><span>GerarDadosTabela</span></a></li>
                                        <li class='last'><a href='#'><span>GerarDadosGráfico</span></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Gerir Adversários</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>InserirDadosTempoReal</span></a>
                                    <ul>
                                </li>
                                <li class='has-sub'><a href='#'><span>InserirTendênciaAtaque</span></a>
                                <li class='last'><a href='#'><span>InserirTendênciaPasse</span></a></li>
                                <li class='last'><a href='#'><span>InserirTendênciaServiço</span></a></li>
                                <li class='last'><a href='#'><span>InserirPiorRecetora</span></a></li>

                            </ul>

                    </ul>
                    </li>
                    </ul>
                    <br>
                    <br>



</body>
</html>                                		