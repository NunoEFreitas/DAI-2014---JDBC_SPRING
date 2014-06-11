	 <div id="wrapper">
    <%@include file="/resources/include/templateAtleta.jsp" %>
       
        <!-- Page content -->
       
        <h1> ${resultado}</h1> 
                    
                   <% 
          out.print("<h4> Id:" + session.getAttribute("user") + " Perfil: " + session.getAttribute("perfil"));
          
       
       %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Informação - SCB</title>
    </head>
    <body>
        <FORM ENCTYPE="multipart/form-data" method="POST" 
  action="C:\\">
  Video name: <INPUT TYPE="text" NAME="name" value="video name"/><br/>
  Description: <INPUT TYPE="text" NAME="desc" value="description"/><br/>
  File:	<INPUT TYPE="file" NAME="file" />
  <INPUT TYPE="submit" VALUE="Upload"/>
</FORM>
    </body>
</html>
