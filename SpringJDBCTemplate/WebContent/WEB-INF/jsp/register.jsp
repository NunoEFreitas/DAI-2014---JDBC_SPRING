<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Login - Sistema de Informação - SCB</title>
	      
        
        <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
       <script src="<c:url value="/resources/js/jquery.validate.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
         <script src="<c:url value="/resources/js/javascript.js" />"></script>
           
         
         <style>
           .campo {
width:200px;
border:1px solid #036;
padding:0; /* Eliminar espaçamento no Firefox */
		}
.formulario{
position:relative;
margin:0;
font-family: Arial, Helvetica, sans-serif;
font-size:12px;
color:#036;
background-color:#d8fff0;
	}
        .news {
font-family: Arial, Helvetica, sans-serif;
font-size:12px;
color:#fff;
padding:2px 5px;
font-weight:bold;
letter-spacing:5px;
text-align:center;
background-color:#0d90d7;
border:1px solid #036;
	}
        .botao {
font-family: Arial, Helvetica, sans-serif;
font-size:12pxbold;
background-color:#0d90d7;
margin:20p;
color:#fff;
font-weight:x 0 5px 5px;
	}
        
        .rotulo1, .rotulo2  {
position:absolute;
left:5px;
	}

.texto1, .texto2{
position:absolute;
left:50px;
background-color:#ffc;
	}
       
 .texto1, .rotulo1 {
top:10px;
	}
.texto2, .rotulo2 {
top:40px;
	}
             
             
             
         </style>
      
        
</head>
<body onload="oculta(1);" >
	

        <%@include file="/resources/include/templateAdministracao.jsp" %>
             
        <!-- Page content -->
      
             <h1> Registar  </h1>
                
       
             <fieldset clas="campo"> 
                 <legend class="news">
             <form:form  class="formulario" name="registar" id ="registar" method="post" action="/insereutilizador" modelAttribute="utilizador"  >
                 <div>
                 <label class="rotulo1" >Perfil : </label>
                         
                            <form:select  path = "idPerfil" name="idPerfil" onchange="oculta(this.value)">
                                 <c:forEach items='${map.lp}' var='lp'>
                                     <form:option class ="texto1" value ="${lp.idPerfil}">${lp.designacao}</form:option>
                                 </c:forEach>
                             </form:select>
                   </div>
                 <div id="1">
                      <label class="rotulo2">Nome :</label>
                      <form:input class ="texto2" name="nome" path="nome" />
                 </div>                   
                     <div  id="2">
                         <label>Password :</label>
                         <form:input name="pass" path="password" />
                     </div>
                     <div  id="3">

                         <label>Data de Nascimento :</label>
                         <form:input type="date"  path="dataNascimento" />
                     </div>
                     <div id="4">
                         <label>Morada :</label>
                         <form:input path="morada" />
                     </div>
                     <div id="5">
                         <label>Sexo :</label>
                         <form:input path="sexo" />
                     </div>
                     <div id="6">
                         <label>Telefone :</label>
                         <form:input path="telefone" />
                     </div>
                     <div id="7">
                         <label>Email :</label>
                         <form:input path="email" />
                     </div>
                     <div id="8">
                         <label>Altura :</label>
                         <form:input path="altura" />
                     </div>
                     <div id="9">
                         <label>Peso :</label>
                         <form:input path="peso" />
                     </div>
                     <div id="10">
                         <label>Salto Vertical :</label>
                         <form:input path="saltoVertical" />
                     </div>
                     <div id="11">
                         <label>Velocidade Deslocamento :</label>
                         <form:input  path="velocidadeDeslocamento" />
                     </div>
                     <div id="12">
                         <label>Alcance Ataque :</label>
                         <form:input  path="alcanceAtaque" />
                     </div>
                     <div id="13">
                         <label>Alcance Bloco :</label>
                         <form:input path="alcanceBloco" />
                     </div>
                     <div id="14">
                         <label>Exames Clinicos :</label>
                         <form:input path="examesClinicos" />
                     </div>

                     <div id="15">
                         <label>Escalao :</label>
                         
                             <form:select path = "idEscalao" name="idEscalao">
                                 <c:forEach items='${map.li}' var='li'>
                                     <form:option value ="${li.idEscalao}">${li.designacao}</form:option>
                                 </c:forEach>
                             </form:select>
                         
                     </div>

                     <div id="16">
                         <label>&nbsp;</label>
                         <input class="botao" type="submit" value="Guardar" />
                     </div>

                
             </form:form>
                 </legend>
                 </fieldset>
            
       
 
                </div>
            </div>
        </div>

        
        

      

        </body>

</html>