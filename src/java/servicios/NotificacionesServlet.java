/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servicios;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author julianbautista87
 */
@WebServlet(name = "NotificacionesServlet", urlPatterns = {"/NotificacionesServlet"})
public class NotificacionesServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Collection<Notificacion> notificaciones=new ArrayList<Notificacion>();
        Notificacion notificacionFromDB1 =new Notificacion();
        notificacionFromDB1.setFecha("10 de Enero de 2016");
        notificacionFromDB1.setDescripcion("El servicio de piscina ha sido suspendido temporalmente.");
        Notificacion notificacionFromDB2=new Notificacion();
        notificacionFromDB2.setFecha("11 de Enero de 2016");
        notificacionFromDB2.setDescripcion("El servicio de piscina ha sido reestablecido.");  
        Notificacion notificacionFromDB3=new Notificacion();
        notificacionFromDB3.setFecha("12 de Enero de 2016");
        notificacionFromDB3.setDescripcion("Hoy hay servicio de agua hasta las 8pm.");  
        Notificacion notificacionFromDB4=new Notificacion();
        notificacionFromDB4.setFecha("12 de Enero de 2016");
        notificacionFromDB4.setDescripcion("Todos los clientes recibirán cena gratis a cortesía del Hotel.");  
        
        notificaciones.add(notificacionFromDB1);
        notificaciones.add(notificacionFromDB2);
        notificaciones.add(notificacionFromDB3);
        notificaciones.add(notificacionFromDB4);
        
        request.setAttribute("notificaciones", notificaciones);
        request.getRequestDispatcher("consultaNotificaciones.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
