/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SG_SEGURIDAD;

import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Achury
 */
@WebServlet(name = "SV_SG_LOGIN", urlPatterns = {"/SV_SG_LOGIN"})
public class SG_SV_Login extends HttpServlet {

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
        
            /* TODO output your page here. You may use following sample code. */

            String Usuario = request.getParameter("TxtUsername");
            String Password = request.getParameter("TxtPassword");
            String TipoUser = request.getParameter("CboxTipoUser");

            String Crprcion_Nmbre = "";
            String Ssion_Tpo = "";
            String Ssion_Nmbre = "";
            String Ssion_Clve = "";
            
            SG_Login verificar = new SG_Login();
          //  verificar.ValidarUsuario(Crprcion_Nmbre,Ssion_Tpo, Ssion_Nmbre,Ssion_Clve);

            if (verificar.getNmbre_usrio() == null) {
                response.sendRedirect("index.jsp?login=failure");
            } else {
                request.getSession().setAttribute("ssion_nmbre", verificar.getSsion_nmbre());
                request.getSession().setAttribute("ssion_clve", verificar.getSsion_clve());
                request.getSession().setAttribute("ssion_cdgo", verificar.getSsion_cdgo());
                request.getSession().setAttribute("nmbre_usrio", verificar.getNmbre_usrio());
                response.sendRedirect("principal.jsp");
            }

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SV_SG_LOGIN</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SV_SG_LOGIN at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");

         
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
