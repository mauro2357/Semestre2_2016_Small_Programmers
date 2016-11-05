/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;
import Repositorios.FacadeAdministrador;
import Repositorios.RegistroRepositorio;
import entidadesdominio.Administrador;
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
 * @author jhon
 */
public class AdministradorControlador extends HttpServlet {

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		try {
        PrintWriter out = response.getWriter();    
          
        String usu_correo =request.getParameter("email");    
        RegistroRepositorio regRep = new RegistroRepositorio();
            //Administrador admi = new Administrador();
        Usuario admi = new Usuario();
        admi = regRep.getDatosAdministradorBD(usu_correo);
        String contraseña =request.getParameter("contrasena");        
        
        HttpSession session = request.getSession(false);  
        if(session!=null)  
        session.setAttribute("name", usu_correo); 
        
        Login nusuario = new Login(usu_correo, contraseña);
 		
            if (FacadeAdministrador.orquestador(nusuario).equals("Ingreso")){  
                request.getSession().setAttribute("admi", admi);
                RequestDispatcher rd=request.getRequestDispatcher("indexAdministrador.jsp");    
                rd.forward(request,response);
            } 
            else{		
		if(FacadeAdministrador.orquestador(nusuario).equals("NoIngreso")){    
		    out.print("<p style=\"color:red\">Usuario y/o Contraseña Invalidos</p>");
                    
                    
		    RequestDispatcher rd=request.getRequestDispatcher("administradorLogin.jsp");    
		    rd.include(request,response);    
		}   
		out.close();
            }
	} 
        catch (Exception e) {
	// TODO Auto-generated catch block
            e.printStackTrace();
        }
    }        		
}