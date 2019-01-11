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
import javax.swing.JOptionPane;
import xyz.codenine.dto.Historial;
import xyz.codenine.modelo.HabitacionDAO;
import xyz.codenine.modelo.PerfilDAO;

/**
 *
 * @author ninus69
 */
@WebServlet(name = "HistorialControl", urlPatterns = {"/Historial"})
public class HistorialControl extends HttpServlet {

    private static final String VISTA = "perfil.jsp";
    private static final String PAGO = "pago.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String forward = "";

        String action = request.getParameter("action");
        HabitacionDAO dao = new HabitacionDAO();
        PerfilDAO daoPerfil = new PerfilDAO();
        
        Historial historial = new Historial();
        
        historial.setIdPersona(Integer.parseInt(request.getParameter("cod")));
        historial.setIdHabitacion(Integer.parseInt(request.getParameter("idhabitacion")));
     
        historial.setFecha_pago(request.getParameter("fecha"));
        historial.setCantidad(Double.parseDouble(request.getParameter("cantidad")));
        historial.setDetalle(request.getParameter("detalle"));
        
        if (action.equalsIgnoreCase("registrar")) {

            dao.registrarPago(historial);

            forward = PAGO;
            int cod = Integer.parseInt(request.getParameter("cod"));
            request.setAttribute("per", daoPerfil.listarPersona(cod));
           request.setAttribute("hab", dao.listarHistorial(cod));

        } else if (action.equalsIgnoreCase("hola")) {
            JOptionPane.showMessageDialog(null, "hola");
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
