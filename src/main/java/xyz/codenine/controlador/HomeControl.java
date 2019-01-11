/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xyz.codenine.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import xyz.codenine.modelo.HabitacionDAO;
import xyz.codenine.modelo.ImagenDAO;

/**
 *
 * @author ninus69
 */
@WebServlet(name = "HomeControl", urlPatterns = {"/Home"})
public class HomeControl extends HttpServlet {

    private static final String LISTAR = "registro.jsp";
    private static final String VISTA = "listar.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String forward = "";
        ImagenDAO dao = new ImagenDAO();
        
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("listar")) {
            forward = LISTAR;
            HabitacionDAO daoHab = new HabitacionDAO();
            request.setAttribute("hab", daoHab.listarHabitacion());
            request.setAttribute("tipo", daoHab.listarTipoPersona());
            request.setAttribute("con", daoHab.listarContacto());
        } else if (action.equalsIgnoreCase("vista")) {
            forward = VISTA;
            request.setAttribute("persona", dao.listarPersona());
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
