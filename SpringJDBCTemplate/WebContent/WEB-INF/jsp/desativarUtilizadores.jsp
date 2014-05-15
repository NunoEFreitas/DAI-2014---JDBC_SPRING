<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
        <title>Login - Sistema de Informação - SCB</title>
         <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">

    </head>
    <body>
 
    <%@include file="/resources/include/templateSeccionista.jsp"%>

      
    <table border="1">
			<tr>
				<td class="heading">Id</td>
				<td class="heading">Nome</td>
				
				
				
			</tr>
			
				<tr>
					<td>1</td>
					<td>pedro</td>
					
					<td><select>
                                    <option value="ativo">Ativo</option>
                                    <option value="desativo">Desativo</option>                                
                                            </select>
                                               </td>
                                         
                        </tr>
			
		</table>

  

    </div>
</div>      
</div>

</body>

</html>

