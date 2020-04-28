<%-- 
    Document   : BuscarCarrera
    Created on : 01/03/2020, 12:29:38 PM
    Author     : Usuario
--%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="login.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Carrera</title>
    </head>
    <body>
    <center>
         <header>
                <nav>
                      <p class="hI" style="text-align: center;">Buscador de Carreras </p>
                    <section class="MenuPrincipal">
                        <%-- <a href="MenuPrincipal.jsp">Volver al menu</a>    --%>            
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
                        <th>Titulo</th>
                       
                         <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="carreraB" items="${carreras2}">
                       <tr>
                        <td>${carreraB.getCodigo()}</td>
                        <td>${carreraB.getNombre()}</td>
                        <td>${carreraB.getTitulo()}</td>
                        <td>
                            <form action="Controlador" method="POST">
                                <input type="hidden" name="id" value="${carreraB.getCodigo()}">
                                <input type="submit" name="accion" value="Editar Carrera" style=" background-color:yellow; font-weight: bold;">
                                <input type="submit" name="accion" value="Eliminar Carrera" style= "background-color:red; font-weight: bold;">
                            </form>
                        </td>
                    </tr> 
                    </c:forEach>
                    
                </tbody>
                
                
            </table>
            
        </div>
         <div>
            <h3 class="h2"> Cursos de la Carrera Seleccionada</h3>
            <form action="Controlador" method="POST">
                
                <input type="submit" name="accion" value="Nuevo Curso" style= "background-color:lightgreen;  border: 2px solid black; height:40px;  margin-top: 20px;">
                  
                
            </form>
        </div>
        <div>
            <table border="1" class="tableC" style="margin-top: 20px;">
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
                <c:forEach var="curso3" items="${cursos3}">
                       <tr>
                        <td>${curso3.getCodigo()}</td>
                        <td>${curso3.getNombre()}</td>
                        <td>${curso3.getCreditos()}</td>
                        <td>${curso3.getHoras_semanales()}</td>
                        <td>${curso3.getCiclo()}</td>
                        <td>${curso3.getNivel()}</td>
                        <td>${curso3.getCodigo_carrera()}</td>
                       
                        
                        <td>
                            <form action="Controlador" method="POST">
                                <input type="hidden" name="id" value="${curso3.getCodigo()}">
                                <input type="submit" name="accion" value="Editar Curso" style= background-color:yellow;>
                                <input type="submit" name="accion" value="Eliminar Curso" style= background-color:red;>
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
