<%-- 
    Document   : editarJogo
    Created on : 10/Jun/2014, 20:45:45
    Author     : Nuno
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form:form method="post" action="/updateJogo" modelAttribute="jogo">
				
            
            <label>Local :</label>
            <form:input path="local" class="input" value="${map.lj.get(0).local}" />
            <label>Data :</label>
            <td><form:input path="data" value="${map.lj.get(0).data}" />
            <label>Hora :</label>
            <td><form:input path="hora" value="${map.lj.get(0).hora}" />				
            
            <label>Competição :</label>
                <form:select   path = "idCompeticao" name="idCompeticao">
                    <c:forEach items='${map.competicao}' var='lc'>
                        <form:option class="input" value ="${lc.idCompeticao}">${lc.designacao}</form:option>
                    </c:forEach>
                </form:select>
            <label>Equipa Adversaria :</label>
                <form:select   path = "idEquipaAdversaria" name="idEquipaAdversaria">
                    <c:forEach items='${map.ea}' var='lea'>
                        <form:option class="input" value ="${lea.idEquipaAdversaria}">${lea.nome}</form:option>
                    </c:forEach>
                </form:select>     
            <form:hidden path="idJogo" value="${map.lj.get(0).idJogo}" />		
                 <input type="submit" value="Save" />                     
            </form:form>                      
                            
		
             
			
    </body>
</html>
