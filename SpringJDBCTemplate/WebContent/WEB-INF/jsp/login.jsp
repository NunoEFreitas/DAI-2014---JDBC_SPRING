<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Login - Sistema de Informação - SCB</title>



        <!-- Bootstrap core CSS -->
        <link href="<c:url value= "resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"/>

        <!-- Add custom CSS here -->
        <link href="<c:url value="resources/css/landing-page.css"/>" rel="stylesheet" type="text/css">

      <script>
         
function valida(form) {
    
    function IsNum(v){
   var ValidChars = "0123456789";
   var IsNumber=true;
   var Char;

 
   for (i = 0; i < v.length && IsNumber == true; i++) 
      { 
      Char = v.charAt(i); 
      if (ValidChars.indexOf(Char) == -1) 
         {
         IsNumber = false;
         }
      }
   return IsNumber;
   
}
    
    if (form.username.value==""|| !IsNum(form.username.value)) {
alert("Peencha o campo username com valor numérico.");
form.username.focus();
return false;
}
if (form.password.value=="") {
alert("O campo password não pode estar vazio.");
form.password.focus();
return false;
}

}

      </script>   
       
</head>
<body>
	 <div class="intro-header">

        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h1>SCB</h1>

                        <form onsubmit="return valida(this);" autocomplete="on" method="post" action="login">
                            <center>
                                <div  class= "input-group input-group-lg" >  
                                    <input  type= "text" name="username" class= "form-control"  placeholder= "Username" required="required" > 
                                    <input  type ="password" name="password" class= "form-control"  placeholder= "Password" required="required" > 
                                </div>
                            </center>

                            <hr class="intro-divider">

                            <button type="submit" class="btn btn-default">Entrar</button>
                        </form>
                    </div>                  

                    </div>
                </div>
            </div>

        </div>
      

    
   
</body>

</html>


