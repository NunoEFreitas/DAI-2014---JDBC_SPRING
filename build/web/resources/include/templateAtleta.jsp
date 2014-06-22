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
                        <li class='active'><a href='atleta'><span>Atleta</span></a></li>
                         <li><a href='sair'><img src="<c:url value="/resources/images/logout.png" />" /></a></li>
                         <li class='has-sub'><a href='#'><span>Gerir Atletas</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span><p style="color: white; background-color: #b81c40; letter-spacing: 6">Visualizar Atleta</p></span></a>
                                   
                                        <li><a href='/VoleiUM/listarUtilizadores'><span>-VisualizarDadosAtleta</span></a></li>
                                        <li><a href='/VoleiUM/historicoAtleta'><span>-VisualizarHistoricoAtleta</span></a></li>
                                   
                                </li>
                            </ul>
                        </li>
                         <li class='has-sub'><a href='#'><span>Gerir Competições</span></a>
                            <ul>
                                <li class='has-sub'><a href='listarTreinosJ'><span>Listar Treinos</span></a>
                                <li class='has-sub'><a href='listarJogosJ'><span>Listar Jogos</span></a>
                                <li class='has-sub'><a href='#'><span><p style="color: white; background-color: #b81c40; letter-spacing: 6">Analisar à Posteriori</p></span></a>
                                    
                                        <li><a href='gerarDadosTabela'><span>-GerarDadosTabela</span></a></li>
                                        <li><a href='gerarDadosGrafico'><span>-GerarDadosGráfico</span></a></li>
                                    
                                </li>
                                
                            </ul>
                        </li>
                        
                    </ul>
                    <br>
                    <br>
                    
                    
    </body>
</html>   