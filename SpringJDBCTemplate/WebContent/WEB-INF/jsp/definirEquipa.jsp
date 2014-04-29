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
  
<h1>Definir Equipa</h1>

<form method="post" name ="">
            
<label for="util_newsletter">Equipa:</label>
            <select id="" name="" value=""/>
                 <option value="0">A</option>
                 <option value="1">B</option>
</select></br>
<tr>
    <td>Data:
    <input type="date" name="nome" value="" size="30"></td>
</tr></br>
<td><input type="submit" value="Save" /></td>
    				
</form>
	


      

        </body>

</html>