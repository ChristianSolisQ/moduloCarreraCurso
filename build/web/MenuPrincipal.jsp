<%-- 
    Document   : MenuPrincipal
    Created on : 01/03/2020, 11:01:38 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="login.css" rel="stylesheet" type="text/css"/>
    <img class="profile-img-card" src="image/obs_-_carreras_del_futuro.jpeg" alt=""/>
        <title>Menu Principal</title>
    </head>
    <body>
    <center>
        <div>
            <h3 class="hI"> Menu Principal </h3>
            <form action="Controlador" method="POST">

                <input type="submit" name="accion" value="Salir" class="menu" >
                <input type="submit" name="accion" value="Carreras" class="menu" > 
                <input type="submit" name="accion" value="Cursos" class="menu"> 

            </form>
            
        </div>
    </center>
</body>
</html>