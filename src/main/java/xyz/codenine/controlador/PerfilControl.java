/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xyz.codenine.controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import xyz.codenine.modelo.HabitacionDAO;
import xyz.codenine.modelo.PerfilDAO;

/**
 *
 * @author ninus69
 */
@WebServlet(name = "PerfilControl", urlPatterns = {"/Perfil"})
public class PerfilControl extends HttpServlet {

    private static final String VISTA = "perfil.jsp";

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
        String forward = "";

        String action = request.getParameter("action");
        PerfilDAO dao = new PerfilDAO();
        HabitacionDAO daoHab = new HabitacionDAO();
        HttpSession sesion = request.getSession();
        if (action.equalsIgnoreCase("vista")) {
            int cod = Integer.parseInt(request.getParameter("cod"));
            int id = Integer.parseInt(request.getParameter("idhab"));
            forward = VISTA;
            request.setAttribute("per", dao.listarPersona(cod));
            request.setAttribute("pers", dao.listarPersona2(id));
            request.setAttribute("conteo", dao.contarAmigos(id));
//            sesion.setAttribute("conteo", dao.contarAmigos(id));

            request.setAttribute("hab", daoHab.listarHistorial(cod));
        }
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);

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
