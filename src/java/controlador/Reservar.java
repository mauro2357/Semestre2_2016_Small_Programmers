/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import Repositorios.ReservarRepositorio;
import entidadesdominio.Economico;
import entidadesdominio.Ejecutivo;
import entidadesdominio.Familiar;
import entidadesdominio.Planes;
import entidadesdominio.Reserva;
import entidadesdominio.Romantico;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario JohnConnor
 */
public class Reservar extends HttpServlet {

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
        request.getRequestDispatcher("pago.jsp").forward(request, response);
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
        boolean validar = false;

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String codigo = request.getParameter("codigo");
        int camas = Integer.parseInt(request.getParameter("camas"));
        String fechaEntrada = request.getParameter("fechaEntrada");
        String fechaSalida = request.getParameter("fechasalidad");
        String tipo = request.getParameter("tipo");
        int precio = 0;
        Planes usr = null;

        if ("normal".equals(tipo)) {
            usr = new Reserva(codigo, camas, fechaEntrada, fechaSalida, tipo, precio);
            validar = usr.ValidarCompra(camas);
        }
        if ("romantico".equals(tipo)) {
            usr = new Romantico(codigo, camas, fechaEntrada, fechaSalida, tipo, precio);
            validar = usr.ValidarCompra(camas);
        }

        if ("familiar".equals(tipo)) {
            usr = new Familiar(codigo, camas, fechaEntrada, fechaSalida, tipo, precio);
            validar = usr.ValidarCompra(camas);
        }

        if ("ejecutivo".equals(tipo)) {
            usr = new Ejecutivo(codigo, camas, fechaEntrada, fechaSalida, tipo, precio);
            validar = usr.ValidarCompra(camas);
        }

        if ("Economico".equals(tipo)) {
            usr = new Economico(codigo, camas, fechaEntrada, fechaSalida, tipo, precio);
            validar = usr.ValidarCompra(camas);
        }

        int a = usr.precio(fechaEntrada, fechaSalida);
        usr.setPrecio(a);
        System.out.println(a + "esta es la diferencia");
        try {
            usr.Reservar();
            request.getSession().setAttribute("msg", "Reserva exitosa del plan " + tipo + "para la fecha " + fechaEntrada);
            request.getRequestDispatcher("CuentaUsuario.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Reservar.class.getName()).log(Level.SEVERE, null, ex);
            request.getSession().setAttribute("msg", "error al reservar el plan " + tipo +" verifique sus datos");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        //out.print("Reserva exitosa del plan " + tipo + "para la fecha " + fechaEntrada);       
        //out.print("error al reservar el plan " + tipo +" verifique sus datos");
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
