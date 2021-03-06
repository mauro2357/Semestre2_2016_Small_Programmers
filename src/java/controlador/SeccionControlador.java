/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import Repositorios.FacadeLogin;
import Repositorios.RegistroRepositorio;
import entidadesdominio.Login;
import entidadesdominio.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author usuario
 */
public class SeccionControlador extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html");
        try {  
            PrintWriter out = response.getWriter();
            
            String usu_correo = request.getParameter("email");
            RegistroRepositorio regRep = new RegistroRepositorio();
            Usuario usu = new Usuario();           
            usu = regRep.getDatosUsuarioBD(usu_correo);
            String contraseña = request.getParameter("contrasena");
            
            
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.setAttribute("name", usu_correo);
            }

            Login nusuario = new Login(usu_correo, contraseña);

            if (FacadeLogin.orquestador(nusuario).equals("Ingreso")) {
                RequestDispatcher rd = request.getRequestDispatcher("CuentaUsuario.jsp");
                request.getSession().setAttribute("usuario", usu);
                rd.forward(request, response);
            } else {
                if (FacadeLogin.orquestador(nusuario).equals("NoIngreso")) {
                    out.print("<p style=\"color:red\">Usuario y/o Contraseña Invalidos</p>");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.include(request, response);
                }
                out.close();

            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
