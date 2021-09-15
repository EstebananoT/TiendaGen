
<%@page import="com.mycompany.tiendagen.validarLog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Tienda generica</title>
	<link href="index_css.css" rel="stylesheet" />
</head>
<body>
	<div class="form">
	    <h1 class="titulo">Bienvenidos a la tienda Genérica</h1>
            
	    <form class="form_et">
	    	<!-- Username -->
	        <label for="name">Username:</label>
	        <input class="answer" type="text" name="name" >
	        <br>
	        
	        <!-- Password -->
	        <label for="username">Password:</label>
	        <input class="answer" type="text" name="password">
	        <br>
	        
	        <div class="bottoms">      
		        <!-- Submit Button -->
		        <input class="login_b" type="submit" value="Login">
		        
		        <!-- Cancel Button --> 
		        <a class="cancel_b" href="index.jsp">
		        	<input type="submit" value="Cancelar">
		        </a>
	        </div>
	    </form>
	    <%
                //String user = request.getParameter("user");
                //String pass = request.getParameter("password");
                validarLog.validar();
            %>
	     
	           
	</div>
</body>
</html>
