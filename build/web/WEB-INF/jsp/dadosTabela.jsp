<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
	<title>Sistema de Informação - SCB</title>
	
                
        <!-- Bootstrap core CSS -->
        <link href="<c:url value ="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
</head>
<body>
    <%@include file="/resources/include/templateTreinador.jsp" %>
    </br>
<a href="#"  style="background-color: #b92c28;font-weight:bold;color:#ffffff;" class="btn"><i class="icon-align-justify"></i> <strong>AnalisarTendênciaPasse</strong></a>
<a href="#"  style="background-color:#b92c28;font-weight:bold;color:#ffffff;" class="btn"><i class="icon-align-justify"></i> <strong>AnalisarTendênciaServiço</strong></a>
<a href="#"  style="background-color:#b92c28;font-weight:bold;color:#ffffff;" class="btn"><i class="icon-align-justify"></i> <strong>AnalisarTendênciaAtaque</strong></a>
<a href="#"  style="background-color:#b92c28;font-weight:bold;color:#ffffff;" class="btn"><i class="icon-align-justify"></i> <strong>AnalisarPiorRecetora</strong></a>
</body>
</html>