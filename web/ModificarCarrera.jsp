<%-- 
    Document   : ModificarCarrera
    Created on : 01/03/2020, 11:58:59 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="login.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
             <header>
                 <nav>
                <p class="hI" style="text-align: center;">Modificar una Carrera </p>
             <section class="MenuPrincipal">
                 <%-- <a href="MenuPrincipal.jsp">Volver al menu</a> --%>               
            </section>
        </nav>
            </header>
        <h3 class="h2" style="text-align: left;">  
             <a href="MenuPrincipal.jsp" class="a"> Volver al Menu</a>
            </h3>
        <div>
            <form action="Controlador" method="POST">
                
              <div class="labl">
                Codigo:
                 </div>
                <input type="text" name="txtCodigo" value="${carrera.getCodigo()}" class="campo2">
                  <div class="labl">
                Nombre:
                 </div>
               
                      <input type="text" name="txtNombre" value="${carrera.getNombre()}" class="campo2" >
                  <div class="labl">
                 Titulo:
                  </div>
                      <input type="text" name="txtTitulo" value="${carrera.getTitulo()}" class="campo2">
                 
                <br>
                <br>
                 <input type="submit" name="accion" value="Actualizar Carrera" style="background-color: #68f048; height: 30px; border: 3px solid black;">
                
            </form>
        </div>
    </center>
    </body>
</html>
