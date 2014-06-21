
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
                        <li class='active'><a href=''><span>TreinadorAdjunto</span></a></li>
                          <li><a href='/VoleiUM/sair'><img src="<c:url value="/resources/images/logout.png" />" /></a></li>
                        <li class='has-sub'><a href='#'><span>Gerir Treinos</span></a>
                            <ul>
                                <li class='has-sub'><a href='/VoleiUM/listarTreinosTA'><span>Listar Treinos</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Gerir Competi��es</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span><p style="color: white; background-color: #b81c40; letter-spacing: 4">Analisar em Tempo Real</p></span></a>  </li>
                                    
                                        <li><a href='/VoleiUM/listarJogosTA'><span>-Listar Jogos</span></a></li>
                                        <li><a href='#'><span>-InserirDadosJogo</span></a></li>
                                    
                              
                                <li class='has-sub'><a href='#'><span><p style="color: white; background-color: #b81c40; letter-spacing: 6">Analisar � Posteriori</p></span></a></li>
                                    
                                        <li><a href='gerarDadosTabela'><span>-GerarDadosTabela</span></a></li>
                                        <li class='last'><a href='gerarDadosGrafico'><span>-GerarDadosGr�fico</span></a></li>
                                    
                                
                                <li class='has-sub'><a href='#'><span><p style="color: white; background-color: #b81c40; letter-spacing: 6">Manusear V�deo</p></span></a></li>
                                    
                                        <li><a href='#'><span>-InserirV�deo</span></a></li>
                                        <li class='last'><a href='#'><span>-ApagarV�deo</span></a></li>
                                        <li class='last'><a href='#'><span>-VisualizarV�deo</span></a></li>
                                    
                                
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Analisar Advers�rios</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span><p style="color: white; background-color: #b81c40; letter-spacing: 2">Inserir Dados em Tempo Real</p></span></a></li>
                                    
                                        <li><a href='#'><span>-CriarJogo</span></a></li>
                                        
                                    
                                
                                <li class='has-sub'><a href='#'><span><p style="color: white; background-color: #b81c40; letter-spacing: 6">Analisar � Posteriori</p></span></a></li> 
                                    
                                        <li><a href='dadosTabela'><span>-AnalisarDadosTabela</span></a></li>
                                        <li><a href='dadosGrafico'><span>-AnalisarDadosGrafico</span></a></li>
                                    
                                
                                <li class='has-sub'><a href='#'><span><p style="color: white; background-color: #b81c40; letter-spacing: 6">Manusear V�deo</p></span></a></li> 
                                    
                                        <li><a href='#'><span>-InserirV�deo</span></a></li>
                                        <li><a href='#'><span>-ApagarV�deo</span></a></li>
                                        <li><a href='#'><span>-VisualizarV�deo</span></a></li>
                                    
                                
                            </ul>
                        </li>
                        

                </ul>

     
    </body>
</html>    