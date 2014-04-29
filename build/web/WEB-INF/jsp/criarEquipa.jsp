

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Definir Equipa</title>
	      
        
        <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
       <script src="<c:url value="/resources/js/jquery.validate.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
         <script src="<c:url value="/resources/js/javascript.js" />"></script>
           
      
        
</head>
<body onload="oculta(1);" >
	
<%@include file="/resources/include/templateTreinador.jsp" %>
  
<h1>Criar Equipa</h1>

<form method="post" name ="">
    <tr>
    Nome:
    <td><input type="" size="20" value=""></td>
    </tr>
    <tr></br>
    Morada:
    <td><input type="" size="20" value=""></td>
    </tr></br>
    

<td><input type="submit" value="Save" /></td>
    				
</form>
	


      

        </body>

</html>
