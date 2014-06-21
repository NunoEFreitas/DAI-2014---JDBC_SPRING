
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
                        <li class='active'><a href='treinadorAdjunto'><span>TreinadorAdjunto</span></a></li>
                          <li><a href='sair'><img src="<c:url value="/resources/images/logout.png" />" /></a></li>
                        <li class='has-sub'><a href='#'><span>Gerir Treinos</span></a>
                            <ul>
                                <li class='has-sub'><a href='/VoleiUM/listarTreinosTA'><span>Listar Treinos</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Gerir Competições</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>AnalisarTempoReal</span></a>  </li>
                                    
                                        <li><a href='/VoleiUM/listarJogosTA'><span>-Listar Jogos</span></a></li>
                                        <li><a href='#'><span>-InserirDadosJogo</span></a></li>
                                    
                              
                                <li class='has-sub'><a href='#'><span>AnalisarPosteriori</span></a></li>
                                    
                                        <li><a href='gerarDadosTabela'><span>-GerarDadosTabela</span></a></li>
                                        <li class='last'><a href='gerarDadosGrafico'><span>-GerarDadosGráfico</span></a></li>
                                    
                                
                                <li class='has-sub'><a href='#'><span>ManusearVídeo</span></a></li>
                                    
                                        <li><a href='criarVideo'><span>-InserirVídeo</span></a></li>
                                        <li class='last'><a href='#'><span>-ApagarVídeo</span></a></li>
                                        <li class='last'><a href='#'><span>-VisualizarVídeo</span></a></li>
                                    
                                
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Analisar Adversários</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>InserirDadosTempoReal</span></a></li>
                                    
                                        <li><a href='criarJogoAD'><span>-CriarJogo</span></a></li>
                                        <li><a href='#'><span>-InserirDadosJogo</span></a></li>
                                    
                                
                                <li class='has-sub'><a href='#'><span>AnalisarPosteriori</span></a></li> 
                                    
                                        <li><a href='dadosTabela'><span>-AnalisarDadosTabela</span></a></li>
                                        <li><a href='dadosGrafico'><span>-AnalisarDadosGrafico</span></a></li>
                                    
                                
                                <li class='has-sub'><a href='#'><span>ManusearVídeo</span></a></li> 
                                    
                                        <li><a href='#'><span>-InserirVídeo</span></a></li>
                                        <li><a href='#'><span>-ApagarVídeo</span></a></li>
                                        <li><a href='#'><span>-VisualizarVídeo</span></a></li>
                                    
                                
                            </ul>
                        </li>
                        

                </ul>

     
    </body>
</html>    