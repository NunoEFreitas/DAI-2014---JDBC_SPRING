<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Listar Jogadores - Sistema de Informação - SCB</title>
	
                
        <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
        <!-- Bootstrap core CSS -->
 	        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
	        <script>
	            (function(document) {
		'use strict';
 	
		var LightTableFilter = (function(Arr) {
	
			var _input;
	
			function _onInputEvent(e) {
				_input = e.target;
				var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
				Arr.forEach.call(tables, function(table) {
					Arr.forEach.call(table.tBodies, function(tbody) {
						Arr.forEach.call(tbody.rows, _filter);
					});
				});
			}
	
			function _filter(row) {
				var text = row.textContent.toLowerCase(), val = _input.value.toLowerCase();
				row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
			}
	
			return {
				init: function() {
					var inputs = document.getElementsByClassName('light-table-filter');
					Arr.forEach.call(inputs, function(input) {
						input.oninput = _onInputEvent;
					});
				}
			};
		})(Array.prototype);
	
		document.addEventListener('readystatechange', function() {
			if (document.readyState === 'complete') {
				LightTableFilter.init();
			}
		});
	
	})(document);
	        </script>
 	</head>
 	<body>
            <% 
	if(session.getAttribute("perfil").equals(1)){ %>  
 	    <%@include file="/resources/include/templateAtleta.jsp"%>
 	    <% 
        }else if(session.getAttribute("perfil").equals(6)){ %>  
 	    <%@include file="/resources/include/templateSeccionista.jsp"%>
	    <% 
	  }else if(session.getAttribute("perfil").equals(2)){ %>
          <%@include file="/resources/include/templateTreinador.jsp" %>
          <% }else if(session.getAttribute("perfil").equals(3)){ %>
          
	  <%@include file="/resources/include/templateTreinadorAdjunto.jsp" %>         
	 <% 
        }
         %>

 	                 

	    <section class="container">
                
                 <% 
	if(session.getAttribute("perfil").equals(1)){ %>  
 	    <Div  class = "cabecalho da pagina" > 
                    <h1>Visualizar Atleta<small> Visualizar Dados Atleta</small>  </h1> 
                </div><br>
 	    <% 
        }else if(session.getAttribute("perfil").equals(6)){ %>  
 	   <Div  class = "cabecalho da pagina" > 
                    <h1> Recursos humanos<small> Consultar Utilizadores </small>  </h1> 
                </div><br>
	    <% 
	  }else if(session.getAttribute("perfil").equals(2)){ %>
           <Div  class = "cabecalho da pagina" > 
                    <h1>Visualizar Atleta<small> Visualizar Dados Atleta</small>  </h1> 
                </div><br>
         <%
        }
         %>
	
               

		<input type="search" class="light-table-filter" data-table="order-table" placeholder="Filtrar Dados Atleta">
	
		<table class="order-table table">
			<thead>
 				<tr>
            
					
					<th>Nome</th>
	                                <td>DataNascimento</td>                              
	                                <th>Telefone</th>
	                                <th>Altura</th>
	                                <th>Peso</th>
	                                <th>SaltoVertical</th>
	                                <th>V.Deslocamento</th>
	                                <th>AlcanceAtaque</th>
	                                <th>AlcanceBloco</th>
	                                <th>Escalão</th>            
 				</tr>
	                </thead>
 				<c:forEach var="ul" items="${lutilizador}">

					<tbody>
	                            <tr>
						
 	                                        <td>${ul.getNome()}</td>

						
 	                                        <td>${ul.getDataNascimento()}</td>


	                                       
 	                                        <td>${ul.getTelefone()}</td>

 	                                        <td>${ul.getAltura()}</td>
 	                                        <td>${ul.getPeso()}</td>
 	                                        <td>${ul.getSaltoVertical()}</td>
 	                                        <td>${ul.getVelocidadeDeslocamento()}</td>
 	                                        <td>${ul.getAlcanceAtaque()}</td>
 	                                        <td>${ul.getAlcanceBloco()}</td>

	                                        
 	                                        <td>${ul.getIdEscalao()}</td>
 					</tr>
	                                </tbody>
 				</c:forEach>
 			</table>
 	        
 	                    
 	                    

	                
 	
 	        

                    
                    
                


        </body>

</html>


