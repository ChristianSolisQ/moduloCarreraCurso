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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="login.css" rel="stylesheet" type="text/css"/>
        <title> Carreras </title>
    </head>
    <body>
       
       <center>
            <header>
                <nav>
                    <p class="hI" style="text-align: center;">Administracion de Carreras
                      <%--  <a href="MenuPrincipal.jsp" class="a"> Volver al Menu</a> --%>  
                    </p>
                    <section class="MenuPrincipal">
                         <%-- <a href="MenuPrincipal.jsp">Volver al menu</a>   --%>                   
                    

                </nav>
            </header>
        <div>
            
            <h3 class="h2" style="text-align: left;"> Opciones: 
             <a href="MenuPrincipal.jsp" class="a"> Volver al Menu</a>
            </h3>
            <form action="Controlador" method="POST">
                <input type="text" name="txtBuscar" placeholder="Buscar Carrera" > 
                <input type="submit" name="accion" value="Buscar Carrera" style= "background-color:#f5c187; border: 2px solid black;">
                <br>
                <br>
                <input type="submit" name="accion" value="Nueva Carrera" style= "background-color:lightgreen;  border: 2px solid black; height:40px;  margin-top: 20px;">
                  
                
            </form>
        </div>
        <div>
            <table border="1" class="tableC" style="margin-top: 20px;">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Titulo</th>
                       
                         <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="carrera" items="${carreras}">
                       <tr>
                        <td>${carrera.getCodigo()}</td>
                        <td>${carrera.getNombre()}</td>
                        <td>${carrera.getTitulo()}</td>
                        <td>
                            <form action="Controlador" method="POST">
                                <input type="hidden" name="id" value="${carrera.getCodigo()}">
                                <input type="submit" name="accion" value="Editar Carrera" style= "background-color:yellow; font-weight: bold;">
                                <input type="submit" name="accion" value="Eliminar Carrera" style=" background-color:red; font-weight: bold;">
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
