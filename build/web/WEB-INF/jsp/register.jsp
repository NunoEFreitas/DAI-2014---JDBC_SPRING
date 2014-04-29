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
           <script>
            $(document).ready()(function() {

                $('#registar').validate({
                    rules: {
                        pass: {required: true},
                        nome: {required: true}},
                    messages: {
                        pass: {required: 'Este campo é de preenchimento obrigatório!'},
                        nome: {required: 'Este campo é de preenchimento obrigatório!'} },
//					email:{ required: 'Este campo é de preenchimento obrigatório!', remote: 'O E-mail inserido já existe!' },
//                                                 Nif:{ required: 'Este campo é de preenchimento obrigatório' remote: 'O E-mail inserido já existe!' }},
                });
            });
            

   


        </script>
      
        
</head>
<body onload="oculta(1);" >
	

        <%@include file="/resources/include/templateAdministracao.jsp" %>
             
        <!-- Page content -->
      
             <h1> Registar  </h1>
                
       
                   
             <form:form  role="form" name="registar" id ="registar" method="post" action="/insereutilizador" modelAttribute="utilizador"  >
                 <div>
                 <label>Perfil : </label>
                         
                            <form:select class="form-control" path = "idPerfil" name="idPerfil" onchange="oculta(this.value)">
                                 <c:forEach items='${map.lp}' var='lp'>
                                     <form:option value ="${lp.idPerfil}">${lp.designacao}</form:option>
                                 </c:forEach>
                             </form:select>
                   </div>
                 <div id="1">
                      <label>Nome :</label>
                      <form:input class="form-control" name="nome" path="nome" />
                 </div>                   
                     <div  id="2">
                         <label>Password :</label>
                         <form:input class="form-control" name="pass" path="password" />
                     </div>
                     <div  id="3">

                         <label>Data de Nascimento :</label>
                         <form:input type="date"  class="form-control" path="dataNascimento" />
                     </div>
                     <div id="4">
                         <label>Morada :</label>
                         <form:input    class="form-control" path="morada" />
                     </div>
                     <div id="5">
                         <label>Sexo :</label>
                         <form:input   class="form-control" path="sexo" />
                     </div>
                     <div id="6">
                         <label>Telefone :</label>
                         <form:input   class="form-control" path="telefone" />
                     </div>
                     <div id="7">
                         <label>Email :</label>
                         <form:input class="form-control" path="email" />
                     </div>
                     <div id="8">
                         <label>Altura :</label>
                         <form:input   class="form-control" path="altura" />
                     </div>
                     <div id="9">
                         <label>Peso :</label>
                         <form:input   class="form-control" path="peso" />
                     </div>
                     <div id="10">
                         <label>Salto Vertical :</label>
                         <form:input   class="form-control" path="saltoVertical" />
                     </div>
                     <div id="11">
                         <label>Velocidade Deslocamento :</label>
                         <form:input   class="form-control" path="velocidadeDeslocamento" />
                     </div>
                     <div id="12">
                         <label>Alcance Ataque :</label>
                         <form:input   class="form-control" path="alcanceAtaque" />
                     </div>
                     <div id="13">
                         <label>Alcance Bloco :</label>
                         <form:input   class="form-control" path="alcanceBloco" />
                     </div>
                     <div id="14">
                         <label>Exames Clinicos :</label>
                         <form:input   class="form-control" path="examesClinicos" />
                     </div>

                     <div id="15">
                         <label>Escalao :</label>
                         
                             <form:select   class="form-control" path = "idEscalao" name="idEscalao">
                                 <c:forEach items='${map.li}' var='li'>
                                     <form:option value ="${li.idEscalao}">${li.designacao}</form:option>
                                 </c:forEach>
                             </form:select>
                         
                     </div>

                     <div id="16">
                         <label>&nbsp;</label>
                         <input  class="btn btn-default" type="submit" value="Guardar" />
                     </div>

                
             </form:form>


             
       
 
                </div>
            </div>
        </div>

        
        

      

        </body>

</html>