<<<<<<< HEAD:build/web/WEB-INF/jsp/registarUtilizador.jsp
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
        <title>Login - Sistema de Informação - SCB</title>


        <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value ="/resources/css/register.css"/>" rel="stylesheet" type="text/css">
        <script src="<c:url value="/resources/js/javascript.js" />"></script>
    
    </head>
    <body onload="oculta(1);" >


        <%@include file="/resources/include/templateSeccionista.jsp" %>

        <!-- Page content -->

        <Div  class = "cabecalho da pagina" > 
            <h1> Recursos humanos<small> Registar Utilizadores </small>  </h1> 
        </div>

        <form:form  id="myform" class="rounded" name="register" method="post" action="/insereutilizador" modelAttribute="utilizador"  >
            <div class="field">
                <label>Perfil : </label>
                <form:select  path = "idPerfil"  onchange="oculta(this.value)">
                    <c:forEach items='${map.lp}' var='lp'>
                        <form:option value ="${lp.idPerfil}">${lp.designacao}</form:option>
                    </c:forEach>
                </form:select>
            </div><br>
            <div  class="field" id="1">
                <label>Sexo :</label>
                <form:radiobutton path="sexo" value="M" required="required"/>Masculino 
                <form:radiobutton path="sexo" value="F" required="required"/>Feminino
            </div><br>
            <div class="field" id="2">
                <label>Nome:</label>
                <form:input class="input" name="nome" path="nome"/>
            </div>     
            <div  class="field" id="3">
                <label>Password :</label>
                <form:input type="password" class="input" name="password" path="password"  />
            </div>

            <div class="field" id="4">
                <label>Data de Nascimento :</label>
                <form:input class="input" type="date" path="dataNascimento" required="required"/>
            </div>
            <div  class="field" id="5">
                <label>Morada :</label>
                <form:input class="input" path="morada" required="required"/>
            </div>

            <div class="field" id="6">
                <label>Telefone :</label>
                <form:input  class="input" path="telefone" name="telefone"/>
            </div>
            <div class="field" id="7">
                <label>Email :</label>
                <form:input type="email" class="input" path="email" required="required"/>
            </div>
            <div class="field" id="8">
                <label>Altura :</label>
                <form:input class="input" path="altura" />
            </div>
            <div class="field" id="9">
                <label>Peso :</label>
                <form:input class="input"  path="peso" />
            </div>
            <div class="field" id="10">
                <label>Salto Vertical :</label>
                <form:input class="input"  path="saltoVertical" />
            </div>
            <div class="field" id="11">
                <label>Velocidade Deslocamento:</label>
                <form:input class="input" path="velocidadeDeslocamento" />
            </div>
            <div class="field" id="12">
                <label>Alcance Ataque:</label>
                <form:input class="input"  path="alcanceAtaque" />
            </div>
            <div class="field" id="13">
                <label>Alcance Bloco:</label>
                <form:input class="input"  path="alcanceBloco" />
            </div>
            <div class="field" id="14">
                <label>Exames Clinicos:</label>
                <form:input  class="input" path="examesClinicos" />
            </div>
             <div class="field" id="15">
                <label>Estatura:</label>
                <form:input class="input" path="estatura" />
            </div>
             <div class="field" id="16">
                <label>Envergadura:</label>
                <form:input  class="input"  path="envergadura" />
            </div>
              <div class="field" id="17">
                <label>Estado:</label>
                <form:input  class="input"  path="estado" />
            </div>
            <div class="field" id="18">
                <label>Escalao :</label>
                <form:select   path = "idEscalao" name="idEscalao">
                    <c:forEach items='${map.li}' var='li'>
                        <form:option class="input" value ="${li.idEscalao}">${li.designacao}</form:option>
                    </c:forEach>
                </form:select>
            </div>
              <div id="texto" style="color:red"><h2></h2></div> 
            <div id="19">
                <label>&nbsp;</label>
                <input onsclick="validacao();" type="submit" value="Guardar" />
            </div>
        </form:form>


    </body>

=======
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
        <title>Login - Sistema de Informação - SCB</title>


        <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value ="/resources/css/register.css"/>" rel="stylesheet" type="text/css">
        <script src="<c:url value="/resources/js/javascript.js" />"></script>

    </head>
    <body onload="oculta(1);" >


        <%@include file="/resources/include/templateSeccionista.jsp" %>

        <!-- Page content -->

        <Div  class = "cabecalho da pagina" > 
            <h1> Recursos humanos<small> Registar Utilizadores </small>  </h1> 
        </div>

        <form:form  id="contactform" class="rounded" name="register" method="post" action="/insereutilizador" modelAttribute="utilizador"  >
          <img  class="foto" src="<c:url value="/resources/images/register.jpg" />" />
            <div class="field">
                <label>Perfil : </label>
                <form:select  id="perfil" path = "idPerfil"  onchange="oculta(this.value)">
                    <c:forEach items='${map.lp}' var='lp'>
                        <form:option value ="${lp.idPerfil}">${lp.designacao}</form:option>
                    </c:forEach>
                </form:select>
            </div><br> 
            <div  class="field" id="1">
                <label>Sexo :</label>
                <form:radiobutton path="sexo" value="M" required="required"/>Masculino 
                <form:radiobutton path="sexo" value="F" required="required"/>Feminino
            </div><br>
            <div class="field" id="2">
                <label>Nome:</label>
                <form:input class="input" name="nome" path="nome"/>
            </div>     
            <div class="field" id="3">
                <label>Password :</label>
                <form:input type="password" class="input" name="password" path="password"  />
            </div>
            <div class="field" id="4">
                <label>Data de Nascimento :</label>
                <form:input class="input" type="date" path="dataNascimento" required="required"/>
            </div>
            <div class="field" id="5">
                <label>Morada :</label>
                <form:input class="input" id="morada" name="morada" path="morada" />
            </div>

            <div class="field" id="6">
                <label>Telefone :</label>
                <form:input type="tel" class="input" name="telefone" path="telefone"/>
            </div>
            <div class="field" id="7">
                <label>Email :</label>
                <form:input type="email" class="input" path="email" required="required"/>
            </div>
            <div class="field" id="8">
                <label>Altura :</label>
                <form:input type="number" step="0.01" min="0" class="input" name="altura" path="altura" />
            </div>
            <div class="field" id="9">
                <label>Peso :</label>
                <form:input type="number" step="0.01" min="0" name="peso" class="input"  path="peso" />
            </div>
            <div class="field" id="10">
                <label>Salto Vertical :</label>
                <form:input type="number" step="0.01" min="0" name="saltoVertical" class="input"  path="saltoVertical" />
            </div>
            <div class="field" id="11">
                <label>Velocidade Deslocamento:</label>
                <form:input type="number" step="0.01" min="0" class="input" path="velocidadeDeslocamento" />
            </div>
            <div class="field" id="12">
                <label>Alcance Ataque:</label>
                <form:input type="number" step="0.01" min="0" class="input"  path="alcanceAtaque" />
            </div>
            <div class="field" id="13">
                <label>Alcance Bloco:</label>
                <form:input type="number" step="0.01" min="0" class="input"  path="alcanceBloco" />
            </div>          
            <div class="field" id="14">
                <label>Exames Clinicos: </label>
                <form:select  class="input" path="examesClinicos" >
                    <form:option value ="false">Nao Concluido</form:option>
                    <form:option value ="true">Concluido</form:option>
                </form:select>
            </div>  
            <div class="field" id="15">
                <label>Estatura:</label>
                <form:select class="input" path="estatura"  >
                    <form:option value ="media">media</form:option>
                    <form:option value ="alta">alta</form:option>
                    <form:option value ="baixa">baixa</form:option>
                </form:select>
            </div>
            <div class="field" id="16">
                <label>Envergadura:</label>
                <form:input type="number" step="0.01" min="0" class="input"  path="envergadura" />
            </div>
            <div class="field" id="17">
                <label>Estado:</label>
                <form:select  class="input"  path="estado" >
                    <form:option value ="false">Desativo</form:option>
                    <form:option value ="true">Ativo</form:option>
                </form:select>
            </div>
            <div class="field" id="18">
                <label>Escalao :</label>
                <form:select class="input" path = "idEscalao" name="idEscalao">
                    <c:forEach items='${map.li}' var='li'>
                        <form:option class="input" value ="${li.idEscalao}">${li.designacao}</form:option>
                    </c:forEach>
                </form:select>
            </div>

            <div id="19">
                <div id="texto" style="color:red"><h2></h2></div>
                <label>&nbsp;</label>
                <input onClick="return validacao();" type="submit" value="Guardar" />  
            </div>
        </form:form>

    </body>

>>>>>>> origin/teste:SpringJDBCTemplate/WebContent/WEB-INF/jsp/register.jsp
</html>