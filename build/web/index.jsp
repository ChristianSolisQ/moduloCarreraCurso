<%-- 
    Document   : index
    Created on : 01/03/2020, 10:42:55 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="login.css" rel="stylesheet" type="text/css"/>
        <title>Laboratorio 01 Matricula</title>
    </head>
    <body>
    <center>
        <header class="hI">
            <p>EIF411 Diseño y programación de palataformas móviles Laboratorio 1 <br/> I Ciclo 2020  </p>
        </header> 
        <div >
            <h3 class="subTitulo"> Iniciar Sesion </h3>
            <form action="Controlador" method="POST">
                <table id="tablaLogin">
                    <tr>
                        <td>Id Usuario: </td>
                        <td>
                            <input type="text" name="txtcedula"  placeholder="username" style="border: solid 3px #c0fcfb;"/>
                        </td>
                    </tr>         
                    <tr>                 
                        <td>Clave de Acceso: &nbsp; &nbsp; &nbsp; </td>
                        <td>
                            <input type="password" name="txtclave" placeholder="password" style="border: solid 3px #c0fcfb;" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">
                            <input type="submit" name="accion" value="Ingresar" style= "background-color:lightgreen; 
                                   border-radius: 15px; font-weight: 300;
                                   font-size: 15px;
                                   font-style: italic;" >
                        </td>

                    </tr>                        


                </table>

            </form>
        </div>
    </center>
</body>
</html>
