<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <script src="<c:url value="/resources/js/jquery.validate.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
       
 
     <!-- Validacao do formulario -->
        <script >
            $(document).ready(function() {

                $('#ppp').validate({
                   
                    rules: {
                       
                        nome: {required: true}},
                    messages: {
                     
                        nome: {required: '⌦ Este campo é de preenchimento obrigatório!'}},
//					email:{ required: 'Este campo é de preenchimento obrigatório!', remote: 'O E-mail inserido já existe!' },
//                                                 Nif:{ required: 'Este campo é de preenchimento obrigatório' remote: 'O E-mail inserido já existe!' }},
                });
            });


        </script>  
        
        
    </head>
  
    
    <body>
      
        
        <form id="ppp" action="null" method="POST" >

            <input type="text" name="nome" /><br>
            <input type="submit" value="sumbmeter" name="submeter" />
        </form>
        
    </body>
</html>
