/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;
import Repositorios.FacadeLogin;
import entidadesdominio.Login;
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
   
    private void processRequest(HttpServletRequest request, HttpServletResponse response){
       	response.setContentType("text/html");
		try {
        PrintWriter out = response.getWriter();    
          
        String usuario =request.getParameter("email");    
        String contraseña =request.getParameter("contrasena");        
        
        HttpSession session = request.getSession(false);  
        if(session!=null)  
        session.setAttribute("name", usuario); 
        
        Login nusuario = new Login(usuario, contraseña);
         		
            if (FacadeLogin.orquestador(nusuario).equals("Ingreso")){  
                
                request.getSession().setAttribute("usr", nusuario);
                request.getRequestDispatcher("Login_linkcode.jsp").forward(request, response);
                RequestDispatcher rd=request.getRequestDispatcher("CuentaUsuario.jsp");    
                rd.forward(request,response);
            } 
            else{		
		if(FacadeLogin.orquestador(nusuario).equals("NoIngreso")){    
		    out.print("<p style=\"color:red\">Usuario y/o Contraseña Invalidos</p>");    
		    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");    
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
   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       processRequest(request, response);
   }

    private String Login() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}