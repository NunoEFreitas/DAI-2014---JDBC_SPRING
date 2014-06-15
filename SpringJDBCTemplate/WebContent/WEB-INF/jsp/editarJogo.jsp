<%-- 
    Document   : editarJogo
    Created on : 10/Jun/2014, 20:45:45
    Author     : Nuno
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form:form method="post" action="/updateJogo" modelAttribute="jogo">
				<table>
					<tr>
						<td>Local :</td>
						<form:input path="local" class="input" value="${map.lj.local}" />
					</tr>
					<tr>
						<td>Data :</td>
						<td><form:input path="data" value="${map.lj.data}" />
						</td>
					</tr>
					<tr>
						<td>Hora :</td>
						<td><form:input path="hora" value="${map.lj.hora}" />
						</td>
					</tr>
                                        
                                      
                                        <tr>
                                                 <td>&nbsp;</td>
						<td><input type="submit" value="Save" />
						</td>
					</tr>
                                        	
				</table>
				
             
			</form:form>
    </body>
</html>
