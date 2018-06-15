import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
/**
 *
 * @author Praveenraj
 */
@WebServlet(name="RemoveDocs", urlPatterns={"/RemoveDocs"})
public class RemoveDocs extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       HttpSession session=request.getSession();
        String regId=session.getAttribute("regId").toString();
        String name=request.getParameter("name");
        try {

            String query="delete from Documents where StudentID='"+regId+"' and DocName='"+name+"' and DocDesc not in ('Image') ";
            int i=ConnPack.ConnectionFactory.getInstance().setData(query,"JOBDSN");
           if(i != -1){
            File f=new File("F:/MS/OnlineJobPortal/WebContent/RootDocs/"+regId+"/"+name);
              boolean b=f.delete();
              if(b)
               response.sendRedirect("Student/Home.jsp");
              else
               out.print("Document not deleted from the folder but deleted from the database");
            }
            else
                out.println("query not executed");
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
