/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Exceptions.GlobalException;
import Exceptions.NoDataException;
import Gestores.GestorCarreras;
import Gestores.GestorCursos;
import Gestores.GestorUsuarios;
import LogicaNegocios.Carrera;
import LogicaNegocios.Curso;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    GestorUsuarios gestorUsuarios = new GestorUsuarios();
    Carrera carrera = new Carrera();
    GestorCarreras gestorCarreras = new GestorCarreras();
    Curso curso = new Curso();
    GestorCursos gestorCursos = new GestorCursos();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doGet(request, response); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        switch (accion) {
            //Login
            case "Ingresar":
                boolean usuarioValido = false;
                String cedula = request.getParameter("txtcedula");
                String clave = request.getParameter("txtclave");
                if (cedula != null && clave != null) {

                    try {
                        usuarioValido = gestorUsuarios.verificarUsuario(cedula, clave);
                    } catch (GlobalException ex) {
                        Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (NoDataException ex) {
                        Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (SQLException ex) {
                        Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }

                if (usuarioValido) {

                    request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);

                } else {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }

                break;
            //Salir de la aplicacion
            case "Salir":
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            //Opciones de carreras
            //Pantalla de Carreras
            case "Carreras":

                try {
                    List<Carrera> carreras = gestorCarreras.listar_carrera();
                    request.setAttribute("carreras", carreras);
                    request.getRequestDispatcher("Carreras.jsp").forward(request, response);
                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                }

                break;
            //Ir al fomulario Agregar Carrera
            case "Nueva Carrera":
                request.getRequestDispatcher("NuevaCarrera.jsp").forward(request, response);
                break;

            case "Guardar Carrera":
                String codigo = request.getParameter("txtCodigo");
                String nombre = request.getParameter("txtNombre");
                String titulo = request.getParameter("txtTitulo");

                carrera.setCodigo(codigo);
                carrera.setNombre(nombre);
                carrera.setTitulo(titulo);

                try {
                    gestorCarreras.insertar_carrera(carrera);
                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                }
                request.getRequestDispatcher("Controlador?accion=Carreras").forward(request, response);
                break;

            //ir a la pantalla editar con campos llenos
            case "Editar Carrera":
                String ide = request.getParameter("id");

                try {
                    Carrera c = gestorCarreras.buscar_carrera(ide);
                    request.setAttribute("carrera", c);

                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                }

                request.getRequestDispatcher("ModificarCarrera.jsp").forward(request, response);
                break;
            //Actualizar la carrera
            case "Actualizar Carrera":
                String codigo1 = request.getParameter("txtCodigo");
                String nombre1 = request.getParameter("txtNombre");
                String titulo1 = request.getParameter("txtTitulo");

                carrera.setCodigo(codigo1);
                carrera.setNombre(nombre1);
                carrera.setTitulo(titulo1);

                try {
                    gestorCarreras.modificar_carrera(carrera);
                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                }
                request.getRequestDispatcher("Controlador?accion=Carreras").forward(request, response);
                break;
            //Eliminar una carrera
            case "Eliminar Carrera":
                String ide2 = request.getParameter("id");

                try {
                    gestorCarreras.eliminar_carrera(ide2);
                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                }
                request.getRequestDispatcher("Controlador?accion=Carreras").forward(request, response);
                break;
            //Buscar 
            case "Buscar Carrera":
                String codigo_busqueda_Carrera = request.getParameter("txtBuscar");
                GestorCarreras.codigo = codigo_busqueda_Carrera;
                GestorCursos.codigo_carrera = codigo_busqueda_Carrera;
                List<Carrera> carreras2;
                List<Curso> cursos3;

                try {
                    carreras2 = gestorCarreras.listarTodosPorCodigo();
                    request.setAttribute("carreras2", carreras2);
                    cursos3 = gestorCursos.listarTodosPorCarrera();
                    request.setAttribute("cursos3", cursos3);
                    request.getRequestDispatcher("BuscarCarrera.jsp").forward(request, response);
                } catch (SQLException ex) {
                    Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                }

                break;
            //Cursos
            //Pantalla Cursos
            case "Cursos":

                try {
                    List<Curso> cursos = gestorCursos.listar_curso();
                    request.setAttribute("cursos", cursos);
                    request.getRequestDispatcher("Cursos.jsp").forward(request, response);
                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            //Ir al fomulario Agregar Carrera
            case "Nuevo Curso":
                request.getRequestDispatcher("NuevoCurso.jsp").forward(request, response);
                break;
            //Guaradr el curso con la informacion
            case "Guardar Curso":
               

                String codigo2 = request.getParameter("txtCodigo");
                String nombre2 = request.getParameter("txtNombre");
                int creditos = Integer.parseInt(request.getParameter("txtCreditos"));
                int horas_semanales = Integer.parseInt(request.getParameter("txtHoras_semanales"));
                String ciclo = request.getParameter("txtCiclo");
                String nivel = request.getParameter("txtNivel");
                String codigo_carrera = request.getParameter("select_Codigo_carrera");

                if ((creditos > 0 && horas_semanales > 0) && !codigo_carrera.isEmpty()) {
                    curso.setCodigo(codigo2);
                    curso.setNombre(nombre2);
                    curso.setCreditos(creditos);
                    curso.setHoras_semanales(horas_semanales);
                    curso.setCiclo(ciclo);
                    curso.setNivel(nivel);
                    curso.setCodigo_carrera(codigo_carrera);
                    try {
                        gestorCursos.insertar_curso(curso);
                    } catch (GlobalException | NoDataException ex) {
                        Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }

                request.getRequestDispatcher("Controlador?accion=Cursos").forward(request, response);
                break;
            //Ir al formulario de editar
            //ir a la pantalla editar con campos llenos
            case "Editar Curso":
                String ide3 = request.getParameter("id");

                try {
                    Curso cu = gestorCursos.buscar_curso(ide3);
                    request.setAttribute("curso", cu);

                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                }

                request.getRequestDispatcher("ModificarCurso.jsp").forward(request, response);
                break;
            case "Actualizar Curso":
                String codigo3 = request.getParameter("txtCodigo");
                String nombre3 = request.getParameter("txtNombre");
                int creditos1 = Integer.parseInt(request.getParameter("txtCreditos"));
                int horas_semanales1 = Integer.parseInt(request.getParameter("txtHoras_semanales"));
                String ciclo1 = request.getParameter("txtCiclo");
                String nivel1 = request.getParameter("txtNivel");
                String codigo_carrera1 = request.getParameter("select_Codigo_carrera");

                if (creditos1 > 0 && horas_semanales1 > 0) {
                    curso.setCodigo(codigo3);
                    curso.setNombre(nombre3);
                    curso.setCreditos(creditos1);
                    curso.setHoras_semanales(horas_semanales1);
                    curso.setCiclo(ciclo1);
                    curso.setNivel(nivel1);
                    curso.setCodigo_carrera(codigo_carrera1);
                    try {
                        gestorCursos.modificar_curso(curso);
                    } catch (GlobalException | NoDataException ex) {
                        Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                request.getRequestDispatcher("Controlador?accion=Cursos").forward(request, response);
                break;
            //Eliminar un curso
            case "Eliminar Curso":
                String ide4 = request.getParameter("id");

                try {
                    gestorCursos.eliminar_curso(ide4);
                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                }
                request.getRequestDispatcher("Controlador?accion=Cursos").forward(request, response);
                break;
            //Buscar un curso
            case "Buscar Curso":
                String codigo_busqueda_Curso = request.getParameter("txtBuscar");
                GestorCursos.codigo = codigo_busqueda_Curso;
                List<Curso> cursos2;
                try {
                    cursos2 = gestorCursos.listarTodosPorCodigo();
                    request.setAttribute("cursos2", cursos2);
                    request.getRequestDispatcher("BuscarCurso.jsp").forward(request, response);
                } catch (SQLException ex) {
                    Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
                }

                break;

            default:
                throw new AssertionError();
        }
    }

    @Override
    public String getServletInfo() {
        return super.getServletInfo(); //To change body of generated methods, choose Tools | Templates.
    }

}
