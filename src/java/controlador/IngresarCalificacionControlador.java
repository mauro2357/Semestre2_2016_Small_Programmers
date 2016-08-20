/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import Repositorios.CalificacionRepositorio;
import entidadesdominio.Calificacion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sebastian
 */
public class IngresarCalificacionControlador extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        
        int item1 =  Integer.parseInt(request.getParameter("Item1"));
        int item2 =  Integer.parseInt(request.getParameter("Item2"));
        int item3 =  Integer.parseInt(request.getParameter("Item3"));
        int item4 =  Integer.parseInt(request.getParameter("Item4"));
        int item5 =  Integer.parseInt(request.getParameter("Item5"));
        String comentarios = request.getParameter("Comentarios");
        Calificacion calificacion=new Calificacion();
        calificacion.setCalificacionItem1(item1);
        calificacion.setCalificacionItem2(item2);
        calificacion.setCalificacionItem3(item3);
        calificacion.setCalificacionItem4(item4);
        calificacion.setCalificacionItem5(item5);
        calificacion.setComentarios(comentarios);
        String mensaje=calificacion.calificar(); 
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Calificacion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>");
            out.println(mensaje);
            out.print("</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
