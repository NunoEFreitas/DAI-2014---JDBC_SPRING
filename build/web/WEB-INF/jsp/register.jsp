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
            

                   window.onload = function(){
    onload= oculta(this.value);
};
     


        </script>
        <style>
     </style>
</head>
<body onload="oculta(1);" >
	

        <%@include file="/resources/include/templateAdministracao.jsp" %>
             
        <!-- Page content -->
       
             <h1> Registar  </h1>
                
          
                   
             <form:form  class="form-inline" id ="registar" method="post" action="/insereutilizador" modelAttribute="utilizador"  >
                 <table>
                     <tr>
                         <td>Perfil :</td>
                         
                            <td> <form:select  path = "idPerfil" name="idPerfil" onload="oculta(this.value);" onchange="oculta(this.value)">
                                 <c:forEach items='${map.lp}' var='lp'>
                                     <form:option value ="${lp.idPerfil}">${lp.designacao}</form:option>
                                 </c:forEach>
                             </form:select>
                            </td>
                   
                     </tr >
                     <tr id="1" >
                         <td>Nome :</td>
                         <td><form:input name="nome" path="nome" /></td>
                     </tr>
                     <tr id="2">
                         <td>Password :</td>
                         <td><form:input name="pass" path="password" /></td>
                     </tr>
                     <tr id="3">

                         <td>Data de Nascimento :</td>
                         <td><form:input path="dataNascimento" /></td>
                     </tr>
                     <tr id="4">
                         <td>Morada :</td>
                         <td><form:input path="morada" /></td>
                     </tr>
                     <tr id="5">
                         <td>Sexo :</td>
                         <td><form:input path="sexo" /></td>
                     </tr>
                     <tr id="6">
                         <td>Telefone :</td>
                         <td><form:input path="telefone" /></td>
                     </tr>
                     <tr id="7">
                         <td>Email :</td>
                         <td><form:input path="email" /></td>
                     </tr>
                     <tr id="8">
                         <td>Altura :</td>
                         <td><form:input path="altura" /></td>
                     </tr>
                     <tr id="9">
                         <td>Peso :</td>
                         <td><form:input path="peso" /></td>
                     </tr>
                     <tr id="10">
                         <td>Salto Vertical :</td>
                         <td><form:input path="saltoVertical" /></td>
                     </tr>
                     <tr id="11">
                         <td>Velocidade Deslocamento :</td>
                         <td><form:input path="velocidadeDeslocamento" /></td>
                     </tr>
                     <tr id="12">
                         <td>Alcance Ataque :</td>
                         <td><form:input path="alcanceAtaque" /></td>
                     </tr>
                     <tr id="13">
                         <td>Alcance Bloco :</td>
                         <td><form:input path="alcanceBloco" /></td>
                     </tr>
                     <tr id="14">
                         <td>Exames Clinicos :</td>
                         <td><form:input path="examesClinicos" /></td>
                     </tr>

                     <tr id="15">
                         <td>Escalao :</td>
                         <td>
                             <form:select path = "idEscalao" name="idEscalao">
                                 <c:forEach items='${map.li}' var='li'>
                                     <form:option value ="${li.idEscalao}">${li.designacao}</form:option>
                                 </c:forEach>
                             </form:select>
                         </td>
                     </tr>

                     <tr id="16">
                         <td>&nbsp;</td>
                         <td><input type="submit" value="Guardar" /></td>
                     </tr>

                 </table>
             </form:form>


             
       
 
                </div>
            </div>
        </div>

        
        

      

        </body>

</html>