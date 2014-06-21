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
                        <li class='active'><a href=''><span>Seccionista</span></a></li>
                        <li><a href='/VoleiUM/sair'><img src="<c:url value="/resources/images/logout.png" />" /></a></li>
                        <li class='has-sub'><a href='#'><span>Gerir Recursos Humanos</span></a>
                            <ul>

                                <li><a href='/VoleiUM/registarUtilizador'><span>RegistarUtilizadores</span></a></li>
                                <li><a href='/VoleiUM/alterarDados'><span>Editar Utilizadores</span></a></li>  
                                <li><a href='/VoleiUM/listarUtilizadores'><span>Consultar Utilizadores</span></a></li>
                            
                                
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Gerir Competições</span></a>
                            <ul>
                                <li><a href='/VoleiUM/criarCompeticao'><span>Inserir Competições</span></a></li>
                                <li><a href='/VoleiUM/listarCompeticoes'><span>Listar Competições</span></a></li>
                            
                            
                                
                            </ul>
                            
                            <li class='has-sub'><a href='#'><span>Gerir Escalões</span></a>
                            <ul>
                                <li><a href='/VoleiUM/criarEscalao'><span>Inserir Escalão</span></a></li>
                                <li><a href='/VoleiUM/listarEscaloes'><span>Listar Escalões</span></a></li>
      
                            </ul>
                            
                        </li> 
                        
                        <li class='has-sub'><a href='#'><span>Gerir Equipas Adversarias</span></a>
                            <ul>
                                <li><a href='/VoleiUM/criarEquipaAdversaria'><span>Inserir Equipa Adversaria</span></a></li>
                                <li><a href='/VoleiUM/listarEquipasAdversarias'><span>Listar Equipas Adversarias</span></a></li>
                                <li><a href='/VoleiUM/criarJogadorEquipaAdversaria'><span>Inserir Jogador Equipa Adversaria</span></a></li>
                                <li><a href='/VoleiUM/listarJogadoresEquipaAdversaria'><span>Listar Jogadores Equipa Adversaria</span></a></li>
      
                            </ul>
                            
                        </li>  
                    </ul>            
                    <br>
                    <br>
   </body>
   </html>                                		