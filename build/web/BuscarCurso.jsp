<%-- 
    Document   : Carreas
    Created on : 01/03/2020, 11:15:53 AM
    Author     : Usuario
--%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="login.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Cursos </title>
    </head>
    <body>

    <center>
        <header>
            <nav>
                <p class="hI" style="text-align: center;">Buscador de Cursos </p>
                <section class="MenuPrincipal">
                    <%--  <a href="MenuPrincipal.jsp">Volver al menu</a>   --%>             


            </nav>
        </header>
        <h3 class="h2" style="text-align: left;">  
            <a href="MenuPrincipal.jsp" class="a"> Volver al Menu</a>
        </h3>
        <div>
            <table border="1" class="tableB" style="margin-top: 20px;">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Creditos</th>
                        <th>Horas semanales</th>
                        <th>Ciclo lectivo</th>
                        <th>Nivel</th>
                        <th>Codigo Carrera</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cursoB" items="${cursos2}">
                        <tr>
                            <td>${cursoB.getCodigo()}</td>
                            <td>${cursoB.getNombre()}</td>
                            <td>${cursoB.getCreditos()}</td>
                            <td>${cursoB.getHoras_semanales()}</td>
                            <td>${cursoB.getCiclo()}</td>
                            <td>${cursoB.getNivel()}</td>
                            <td>${cursoB.getCodigo_carrera()}</td>


                            <td>
                                <form action="Controlador" method="POST">
                                    <input type="hidden" name="id" value="${cursoB.getCodigo()}">
                                    <input type="submit" name="accion" value="Editar Curso" style= "background-color:yellow; font-weight: bold">
                                    <input type="submit" name="accion" value="Eliminar Curso" style= "background-color:red; font-weight: bold;" >
                                </form>
                            </td>
                        </tr> 
                    </c:forEach>

                </tbody>


            </table>

        </div>

    </center>
</body>
</html>
