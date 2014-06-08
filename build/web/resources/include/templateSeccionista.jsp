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
                        <li class='has-sub'><a href='#'><span>Gerir Recursos Humanos</span></a>
                            <ul>
                                <li><a href='register'><span>RegistarUtilizadores</span></a></li>
                                <li><a href='alterarDados'><span>Editar Utilizadores</span></a>
                              
                                 <!--   <ul>
                                      <li><a href='alterarDados'><span>Editar/Apagar Atleta</span></a></li>
                                        <li class='has-sub'><a href='#'><span>Editar/Apagar Treinador<span></a></li>
                                        <li class='has-sub'><a href='#'><span>Editar/Apagar TreinadorAdjunto<span></a></li>
                                        <li class='has-sub'><a href='#'><span>Editar/Apagar Olheiro<span></a></li>
                                        <li class='has-sub'><a href='#'><span>Editar/Apagar Seccionista<span></a></li>
                                        <li class='has-sub'><a href='#'><span>Editar/Apagar Analista<span></a></li>
                                             
                                    </ul> -->
                                </li>
                                <li><a href='#'><span>Gerir Pagamentos/Recebimentos</span></a>
                                    <ul>
                                      <li><a href='#'><span>RegistarPagamento</span></a></li>
                                        <li class='has-sub'><a href='#'><span>RegistarRecebimento<span></a></li>
                                        <li class='has-sub'><a href='#'><span>AnalisarDívidas<span></a></li>
                                        <li class='has-sub'><a href='#'><span>ConsultarPagamento<span></a></li>
                                        <li class='has-sub'><a href='#'><span>ConsultarRecebimento<span></a></li>                                         
                                    </ul>
                                </li>
                                
                                <li><a href='userList'><span>Consultar Utilizadores</span></a></li>
                                <li><a href='#'><span>Gerir Perfis</span></a>
                                    <ul>
                                        <li><a href='criarPerfil'><span>CriarPerfil</span></a></li>
                                        <li class='has-sub'><a href='#'><span>EditarPerfil</span></a></li>
                                        <li class='has-sub'><a href='listaPerfil'><span>VisualizarPerfil</span></a>
                                        <li class='has-sub'><a href='#'><span>ApagarPerfil</span></a>
                                         
                                    </ul>
                                </li> 
                            
                                
                            </ul>
                        </li>  
                    </ul>            
                    <br>
                    <br>
   </body>
   </html>                                		