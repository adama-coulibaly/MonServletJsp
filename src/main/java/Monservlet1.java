/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import baseDeDonne.Utilisateurs;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author adcoulibaly
 */
public class Monservlet1 extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Monservlet1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Monservlet1 at " + request.getContextPath() + "</h1>");
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
       request.getRequestDispatcher("WEB-INF/Inscrire.jsp").forward(request, response);
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
      
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String pseudo = request.getParameter("pseudo");
        String email = request.getParameter("email");
        String passe1 = request.getParameter("passe1");
        String passe2 = request.getParameter("passe2");
        String erreurs = "";
        
        if(
                !"".equals(nom) && !"".equals(prenom) && 
                !"".equals(pseudo) && !"".equals(email) &&
                !"".equals(passe1) && !"".equals(passe2)
           )
            
        {
           if(passe1.equals(passe2))
           {
                  
               HttpSession session = request.getSession();
               
               List<Utilisateurs> myArrayList = (List)session.getAttribute("liste");
               if(myArrayList == null) {
                   
                   myArrayList=new ArrayList<Utilisateurs>();
               }
               Utilisateurs user = new Utilisateurs(nom, prenom, pseudo, email, passe2);
               
               myArrayList.add(user);
//                            
                 request.setAttribute("nom", nom);
                 request.setAttribute("prenom", prenom);
               session.setAttribute("liste", myArrayList);
               request.getRequestDispatcher("WEB-INF/Accueil.jsp").forward(request, response);
           }
           else
           {
                erreurs = "Les mots de passe ne correspondent pas ";
                request.setAttribute("erreurs", erreurs);
               request.getRequestDispatcher("WEB-INF/Inscrire.jsp").forward(request, response);
           }
            
            }
        
        else
        {
            erreurs = "Veuillez remplir tous les champs";
           request.setAttribute("erreurs", erreurs);
           request.getRequestDispatcher("WEB-INF/Inscrire.jsp").forward(request, response);     
        }

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
