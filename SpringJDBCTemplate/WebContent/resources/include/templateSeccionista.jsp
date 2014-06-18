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
                        <li class='active'><a href='seccionista'><span>Seccionista</span></a></li>
                         <li><button onclick="location.href='login?logout=sair'"><img src="<c:url value="/resources/images/logout.png" />" /></button></li>
                        <li class='has-sub'><a href='#'><span>Gerir Recursos Humanos</span></a>
                            <ul>

                                <li><a href='registarUtilizador'><span>RegistarUtilizadores</span></a></li>
                                <li><a href='alterarDados'><span>Editar Utilizadores</span></a></li>  
                                <li><a href='listarUtilizadores'><span>Consultar Utilizadores</span></a></li>
                            
                                
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Gerir Competições</span></a>
                            <ul>
                                <li><a href='criarCompeticao'><span>Inserir Competições</span></a></li>
                                <li><a href='listarCompeticoes'><span>Listar Competições</span></a></li>
                            
                            
                                
                            </ul>
                            
                            <li class='has-sub'><a href='#'><span>Gerir Escalões</span></a>
                            <ul>
                                <li><a href='criarEscalao'><span>Inserir Escalão</span></a></li>
                                <li><a href='listarEscaloes'><span>Listar Escalões</span></a></li>
      
                            </ul>
                            
                        </li> 
                        
                        <li class='has-sub'><a href='#'><span>Gerir Equipas Adversarias</span></a>
                            <ul>
                                <li><a href='criarEquipaAdversaria'><span>Inserir Equipa Adversaria</span></a></li>
                                <li><a href='listarEquipasAdversarias'><span>Listar Equipas Adversarias</span></a></li>
                                <li><a href='criarJogadorEquipaAdversaria'><span>Inserir Jogador Equipa Adversaria</span></a></li>
                                <li><a href='listarJogadoresEquipaAdversaria'><span>Listar Jogadores Equipa Adversaria</span></a></li>
      
                            </ul>
                            
                        </li>  
                    </ul>            
                    <br>
                    <br>
   </body>
   </html>                                		