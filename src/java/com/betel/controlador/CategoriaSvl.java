
package com.betel.controlador;

import com.betel.dao.CategoriaDaoImpl;
import com.betel.modelo.Categoria;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "CategoriaSvl", urlPatterns = {"/CategoriaSvl"})
public class CategoriaSvl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            CategoriaDaoImpl catgDao = new CategoriaDaoImpl();
            Categoria categoria = new Categoria();
           
            String respuesta = null;
            RequestDispatcher rd = null;
            
            try {
                  if(request.getParameter("btnRegistrar")!=null){
//                      categoria.setIdCategoria(request.getParameter("id"));
                      categoria.setNombre(request.getParameter("nombre"));
                     // categoria.setEstado(request.getParameter("estado"));
                     categoria.setEstado("Activo");
                     respuesta = catgDao.insertar(categoria);
                     request.setAttribute("respuesta", respuesta);
                     rd = request.getRequestDispatcher("tablaCategoria.jsp");
                     
                  }
            } catch (Exception e) {
              System.out.println("Problemas en el server: " + e.toString());

            }
            rd.forward(request, response);  
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
