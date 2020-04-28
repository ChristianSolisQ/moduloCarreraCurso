<%-- 
    Document   : NuevaCarrera
    Created on : 01/03/2020, 11:34:47 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="login.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Curso</title>
    </head>
    <body>
    <center>
        <header>
            <nav>
                <p class="hI" style="text-align: center;">Ingresar un Nuevo Curso </p>
                <section class="MenuPrincipal">
                    <%--  <a href="MenuPrincipal.jsp">Volver al menu</a>    --%>            
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
                <input type="text" name="txtCodigo" class="campo2">
                <div class="labl">
                    <br> Nombre:
                </div>
                <input type="text" name="txtNombre" class="campo2">
                <div class="labl">
                    <br>Creditos:
                </div>
                <input type="number" name="txtCreditos" class="campo2"> 
                <div class="labl" style="height: 50px;">
                    <br> Horas Semanales:
                    <br>
                </div>
                <input type="number" name="txtHoras_semanales" class="campo2">
                <div class="labl">
                    <br> Ciclo:
                </div>
                <select name="txtCiclo" class="campo2">
                    <option value=""> Seleccione un Ciclo </option>
                    <option value="I"> I </option>
                    <option value="II"> II </option>
                    <option value="III">III</option> 
                </select>
                <%-- <input type="text" name="txtCiclo" class="campo2"> --%>
                <div>
                    <br class="labl"> Nivel:
                </div>
                <select name="txtNivel" class="campo2">
                    <option value=""> Seleccione un Nivel </option>
                    <option value="I"> I </option>
                    <option value="II"> II </option>
                    <option value="III">III</option>
                   <option value="IV">IV</option>
                </select>
                <%--<input type="text" name="txtNivel" class="campo2"> --%>
                <div class="labl"style="height: 50px;">
                    <br> Nombre de Carrera:
                    <br>
                    <br>
                </div>
                <select name="select_Codigo_carrera" class="campo2">
                     <option value=""> Seleccione una Carrera</option>
                    <option value="EIF"> Informatica </option>
                    <option value="LIX"> Ingles </option>
                    <option value="MAT">Matematica</option>
                    <option value="ACA">Agronomia</option>
                    <option value="BIF">Biologia</option>
                    <option value="ECB">Economia</option>
                    <option value="GEI">Geografia</option>
                    <option value="MVA">Veterinaria</option>
                    <option value="PSD">Psicologia</option>
                    <option value="QUC">Quimica</option>
                    <option value="TGC">Topografia</option>
                    <option value="SOF">Sociologia</option>

                </select>

                <br>
                <br>
                <input type="submit" name="accion" value="Guardar Curso" style="background-color: #68f048; height: 30px; border: 3px solid black;">

            </form>
        </div>
    </center>
</body>
</html>
