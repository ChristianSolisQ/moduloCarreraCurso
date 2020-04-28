<%-- 
    Document   : NuevaCarrera
    Created on : 01/03/2020, 11:34:47 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="login.css" rel="stylesheet" type="text/css"/>
        <title>Nueva Carrera</title>
    </head>
    <body>
        <center>
            <header>
                 <nav>
                <p class="hI" style="text-align: center;">Ingresar una Nueva Carrera </p>
             <section class="MenuPrincipal">
                 <%-- <a href="MenuPrincipal.jsp">Volver al menu</a>  --%>            
            </section>
        </nav>
            </header>
        <h3 class="h2" style="text-align: left;">  
             <a href="MenuPrincipal.jsp" class="a"> Volver al Menu</a>
            </h3>
        <div>
            <form action="Controlador" method="POST">
                <br>
                  <br>
                <div class="labl">
                Codigo:
               
                </div>
                  <%--<input type="text" name="txtCodigo" class="campo2" > --%>
                <select name="txtCodigo" class="campo2">
                     <option value=""> Seleccione un Codigo</option>
                    <option value="EIF"> EIF - Informatica </option>
                    <option value="LIX"> LIX - Ingles</option>
                    <option value="MAT">MAT - Matematica</option>
                    <option value="ACA">ACA - Agronomia</option>
                    <option value="BIF">BIF - Biologia</option>
                    <option value="ECB">ECB - Economia</option>
                    <option value="GEI">GEI - Geografia</option>
                    <option value="MVA">MVA - Veterinaria</option>
                    <option value="PSD">PSD - Psicologia</option>
                    <option value="QUC">QUC - Quimica</option>
                    <option value="TGC">TGC - Topografia</option>
                    <option value="SOF">SOF - Sociologia</option>

                </select>
                <div class="labl">
                 Nombre:
                </div>
                  <%-- <input type="text" name="txtNombre" class="campo2"> --%>
                <select name="txtNombre" class="campo2">
                     <option value=""> Seleccione una Carrera</option>
                    <option value="Informatica"> Informatica </option>
                    <option value="Ingles"> Ingles </option>
                    <option value="Matematica">Matematica</option>
                    <option value="Agronomia">Agronomia</option>
                    <option value="Biologia">Biologia</option>
                    <option value="Economia">Economia</option>
                    <option value="Geografia">Geografia</option>
                    <option value="Veterinaria">Veterinaria</option>
                    <option value="Psicologia">Psicologia</option>
                    <option value="Quimica">Quimica</option>
                    <option value="Topografia">Topografia</option>
                    <option value="Sociologia">Sociologia</option>

                </select>
                <div class="labl">
                 Titulo:
                 </div>
                <input type="text" name="txtTitulo" class="campo2"> 
                
                <br>
                <br>
                <input type="submit" name="accion" value="Guardar Carrera" style="background-color: #68f048; height: 30px; border: 3px solid black;">
                
            </form>
        </div>
    </center>
    </body>
</html>
