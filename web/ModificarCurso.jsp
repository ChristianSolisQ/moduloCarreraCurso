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
        <title>Modificar Curso</title>
    </head>
    <body>
    <center>
        <header>
            <nav>
                <p class="hI" style="text-align: center;">Modificar los Cursos </p>
                <section class="MenuPrincipal">
                    <%--  <a href="MenuPrincipal.jsp">Volver al menu</a>  --%>              
                </section>
            </nav>
        </header>
        <div>
            <h3 class="h2" style="text-align: left;" > 
                <a href="MenuPrincipal.jsp" class="a"> Volver al Menu</a>
            </h3>
        </div>
        <div>
            <form action="Controlador" method="POST">


                <div class="labl">
                    Codigo:
                </div>
                <input type="text" name="txtCodigo" value="${curso.getCodigo()}" class="campo2">
                <div class="labl">
                    <br> Nombre:
                </div>
                <input type="text" name="txtNombre" value="${curso.getNombre()}" class="campo2">
                <div class="labl">
                    <br>Creditos:
                </div>
                <input type="number" name="txtCreditos" value="${curso.getCreditos()}" class="campo2"> 
                <div class="labl" style="height: 50px;">
                    <br> Horas Semanales:
                    <br>
                </div>
                <input type="number" name="txtHoras_semanales" value="${curso.getHoras_semanales()}" class="campo2">
                <div class="labl">
                    <br> Ciclo:
                </div>
                <input type="text" name="txtCiclo" value="${curso.getCiclo()}" class="campo2">
                <div>
                    <br class="labl"> Nivel:
                </div>
                <input type="text" name="txtNivel" value="${curso.getNivel()}" class="campo2">
                <div class="labl"style="height: 50px;">
                    <br> Nombre de la Carrera:
                    <br>
                    <br>
                </div>
                <%--   <input type="text" name="select_Codigo_carrera" value="${curso.getCodigo_carrera()}" disabled="disabled" > --%>
                <select  name="select_Codigo_carrera" value="${curso.getCodigo_carrera()}" class="campo2" style="width: 200px;">
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

                <input type="submit" name="accion" value="Actualizar Curso" style="background-color: #68f048; height: 30px; border: 3px solid black;">

            </form>
        </div>
    </center>
</body>
</html>
