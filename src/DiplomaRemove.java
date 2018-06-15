import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Praveenraj
 */
@WebServlet(name="DiplomaRemove", urlPatterns={"/DiplomaRemove"})
public class DiplomaRemove extends HttpServlet {
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         HttpSession session=request.getSession();
       String regId=session.getAttribute("regId").toString();
        String Deg=request.getParameter("Degree");
        String Field=request.getParameter("Field");
        String Coll=request.getParameter("Coll");
        try
        {
            String query="delete from Diploma where StudentID='"+regId+"' and DiplomaDegree='"+Deg+"' and Field='"+Field+"' and Organisation='"+Coll+"'";
            int n=ConnPack.ConnectionFactory.getInstance().setData(query, "JOBDSN");
            if(n ==-1 || n==0 )
                out.println("Query not executed");
            else
            response.sendRedirect("Student/Profile.jsp");
        }
        catch(Exception e)
        {
            out.println(e);
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
