/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xyz.codenine.controlador;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;
import xyz.codenine.dto.Imagen;
import xyz.codenine.modelo.ImagenDAO;

/**
 *
 * @author ninus69
 */
@WebServlet(name = "CasaControl", urlPatterns = {"/Casa"})
@MultipartConfig(maxFileSize = 1617721544) 
public class CasaControl extends HttpServlet {

private static String LISTAR = "listar.jsp";
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
        
        //
          String forward="";
        ImagenDAO dao = new ImagenDAO();
        
        Imagen imagenvo = new Imagen();
        ImagenDAO imagendao = new ImagenDAO();
        imagenvo.setTipo_doc(request.getParameter("tipoDoc"));
        imagenvo.setNombre(request.getParameter("nombre"));
        imagenvo.setPaterno(request.getParameter("paterno"));
        imagenvo.setMaterno(request.getParameter("materno"));
        imagenvo.setNacimiento(request.getParameter("nacimiento"));
        imagenvo.setTelefono(request.getParameter("telefono"));
        imagenvo.setIdPersona(request.getParameter("dni"));
        imagenvo.setHabitacion(Integer.parseInt(request.getParameter("idhabitacion")));
        imagenvo.setFecha_ingreso(request.getParameter("fechaIngreso"));
        imagenvo.setTipoPersona(Integer.parseInt(request.getParameter("tipoPersona")));
        imagenvo.setIdContacto(Integer.parseInt(request.getParameter("contacto")));
        imagenvo.setTelefono2(request.getParameter("telefonoCon"));
        
        InputStream inputStream = null;
        try {
            Part filePart = request.getPart("imagen");
            if (filePart.getSize() > 0) {
                System.out.println(filePart.getName());
                System.out.println(filePart.getSize());
               
                System.out.println(filePart.getContentType());
                System.out.println(filePart.getSubmittedFileName());
                String n = String.valueOf(filePart.getContentType());
                inputStream = filePart.getInputStream();
            }
        } catch (Exception ex) {
            System.out.println("fichero: " + ex.getMessage());
        }

        try {
//                imagenvo.setCodImg(nuevoid);
            if (inputStream != null) {
                imagenvo.setArchivoimg(inputStream);
            }
            imagendao.Agregar_ImagenVO(imagenvo);

        } catch (Exception ex) {
            System.out.println("errores malditos: " + ex.getMessage());
        }
        
        //
      
        forward = LISTAR;
        request.setAttribute("persona", dao.listarPersona());

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
