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
          
<style TYPE="text/css" > 
    <!--
	h3 { margin-bottom: 15px; font-size: 22px; text-shadow: 2px 2px 2px #ccc; }
	
	#contactform {
	
	width: 800px;
	padding: 20px;
	background: #f0f0f0;
	overflow:auto;
	
	border: 1px solid #cccccc;
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	border-radius: 7px;	
	
	-moz-box-shadow: 2px 2px 2px #cccccc;
	-webkit-box-shadow: 2px 2px 2px #cccccc;
	box-shadow: 2px 2px 2px #cccccc;
	
	}
	
	.field{margin-bottom:7px;}
	
	label {
	font-family: Arial, Verdana; 
	text-shadow: 2px 2px 2px #ccc;
	display: block; 
	float: left; 
	font-weight: bold; 
	margin-right:10px; 
	text-align: right; 
	width: 200px; 
	line-height: 25px; 
	font-size: 15px; 
	}
	
	.input{
	font-family: Arial, Verdana; 
	font-size: 15px; 
	padding: 5px; 
	border: 1px solid #b9bdc1; 
	width: 300px; 
	color: #797979;	
	}
	
	.input:focus{
	background-color:#E7E8E7;	
	}
	
	
	.hint{
	display:none;
	}
	
	.field:hover .hint {  
	position: absolute;
	display: block;  
	margin: -30px 0 0 455px;
	color: #FFFFFF;
	padding: 7px 10px;
	background: rgba(0, 0, 0, 0.6);
	
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	border-radius: 7px;	
	}
	
	.button{
	float: right;
	margin:10px 55px 10px 0;
	font-weight: bold;
	line-height: 1;
	padding: 6px 10px;
	cursor:pointer;   
	color: #fff;
	
	text-align: center;
	text-shadow: 0 -1px 1px #64799e;
	
	/* Background gradient */
	background: #a5b8da;
	background: -moz-linear-gradient(top, #a5b8da 0%, #7089b3 100%);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#a5b8da), to(#7089b3));
	
	/* Border style */
  	border: 1px solid #5c6f91;  
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	border-radius: 10px;
  
	/* Box shadow */
	-moz-box-shadow: inset 0 1px 0 0 #aec3e5;
	-webkit-box-shadow: inset 0 1px 0 0 #aec3e5;
	box-shadow: inset 0 1px 0 0 #aec3e5;
	
	}
	
	.button:hover {
	background: #848FB2;
    cursor: pointer;
	}
    -->
   </style>
      
        
</head>
<body onload="oculta(1);" >
	

        <%@include file="/resources/include/templateAdministracao.jsp" %>
             
        <!-- Page content -->
      
        <h3>Registar Utilizador</h3>
                
     

        <form:form  id="contactform" class="rounded"  name="registar"  method="post" action="/insereutilizador" modelAttribute="utilizador"  >
            <div class="field">
                <label>Perfil : </label>
                <form:select  path = "idPerfil" name="idPerfil" onchange="oculta(this.value)">
                    <c:forEach items='${map.lp}' var='lp'>
                        <form:option value ="${lp.idPerfil}">${lp.designacao}</form:option>
                    </c:forEach>
                </form:select>
            </div>
            <div class="field" id="1">
                <label>Nome:</label>
                <form:input class="input" id="name"  path="nome" />
            </div>                   
            <div  class="field" id="2">
                <label>Password :</label>
                <form:input class="input" id="name"  path="password" />
            </div>

            <div class="field" id="3">
                <label>Data de Nascimento :</label>
                <form:input class="input" id="name" type="date" path="dataNascimento" />
            </div>
            <div  class="field" id="4">
                <label>Morada :</label>
                <form:input class="input" id="name" path="morada" />
            </div>
            <div  class="field" id="5">
                <label>Sexo :</label>
                <form:input class="input" id="name" path="sexo" />
            </div>
            <div class="field" id="6">
                <label>Telefone :</label>
                <form:input  class="input" id="name" path="telefone" />
            </div>
            <div class="field" id="7">
                <label>Email :</label>
                <form:input class="input" id="name" path="email" />
            </div>
            <div class="field" id="8">
                <label>Altura :</label>
                <form:input class="input" id="name" path="altura" />
            </div>
            <div class="field" id="9">
                <label>Peso :</label>
                <form:input class="input" id="name" path="peso" />
            </div>
            <div class="field" id="10">
                <label>Salto Vertical :</label>
                <form:input class="input" id="name" path="saltoVertical" />
            </div>
            <div class="field" id="11">
                <label>Velocidade Deslocamento:</label>
                <form:input class="input" id="name" path="velocidadeDeslocamento" />
            </div>
            <div class="field" id="12">
                <label>Alcance Ataque:</label>
                <form:input class="input" id="name" path="alcanceAtaque" />
            </div>
            <div class="field" id="13">
                <label>Alcance Bloco:</label>
                <form:input class="input" id="name" path="alcanceBloco" />
            </div>
            <div class="field" id="14">
                <label>Exames Clinicos:</label>
                <form:input  class="input" id="name" path="examesClinicos" />
            </div>
            <div class="field" id="15">
                <label>Escalao :</label>
                <form:select   path = "idEscalao" name="idEscalao">
                    <c:forEach items='${map.li}' var='li'>
                        <form:option class="input" id="name" value ="${li.idEscalao}">${li.designacao}</form:option>
                    </c:forEach>
                </form:select>
            </div>
            <div id="16">
                <label>&nbsp;</label>
                <input class="button" type="submit" value="Guardar" />
            </div>
        </form:form>


             
       
 
                </div>
            </div>
        </div>

        
        

      

        </body>

</html>