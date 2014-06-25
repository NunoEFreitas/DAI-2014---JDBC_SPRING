
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
                        <li class='active'><a href='/VoleiUM/treinador'><span>Treinador</span></a></li>
                        <li><a href='/VoleiUM/sair'><img src="<c:url value="/resources/images/logout.png" />" /></a></li>
                        <li class='has-sub'><a href='#'><span>Gerir Atletas</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span><p style="color: white; background-color: #b81c40; letter-spacing: 6">Visualizar Atleta</p></span></a></li>
                                    
                                        <li><a href='/VoleiUM/listarUtilizadores'><span>-VisualizarDadosAtleta</span></a></li>
                                        <li><a href='/VoleiUM/historicoAtletaT'><span>-VisualizarHistoricoAtleta</span></a></li>
                                   
                                
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
                                <li class="titulo"><a href='#'><span><p style="color: white; background-color: #b81c40; letter-spacing: 4">Analisar em Tempo Real</p></span></a></li>
                                    
                                        <li class='last'><a href='/VoleiUM/criarJogo'><span>-CriarJogo</span></a></li>
                                   
                                        <li class='last'><a href='/VoleiUM/listarJogosT'><span>-Listar Jogos</span></a></li>
                                    
                             
                                <li class='has-sub'><a href='#'><span><p style="color: white; background-color: #b81c40; letter-spacing: 6">Analisar � Posteriori</p></span></a></li>
                                    
                                        <li><a href='/VoleiUM/listarEstatistica'><span>-GerarDadosTabela</span></a></li>
                                      
                                    
                              
                               
                                    
                                
                            </ul>
                        </li>
                        
                        

                </ul>
                <br>
                <br>
        
                  
    </body>
</html>                                                    		