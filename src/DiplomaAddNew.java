import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Praveenraj
 */
@WebServlet(name="DiplomaAddNew", urlPatterns={"/DiplomaAddNew"})
public class DiplomaAddNew extends HttpServlet {
   
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
        try {
             javax.servlet.http.HttpSession session=request.getSession();
             String regId=session.getAttribute("regId").toString();
             String Degree = request.getParameter("degree");
            String Field = request.getParameter("field");
            String Organisation =request.getParameter("org");
            String YOP = request.getParameter("yop");
            String Desc = request.getParameter("desc");
             String query1 = "insert into Diploma values('"+regId+"'"
                      + ",'" + Degree+ "'"
                      + ",'" + Field +"'"
                      + ",'" +Organisation + "'"
                      + ",'" + YOP + "'"
                      + ",'" +Desc  + "')";
              int n=ConnPack.ConnectionFactory.getInstance().setData(query1,"JOBDSN");
              if(n==-1 || n==0 )
                  out.println("query not executed");
              else
                response.sendRedirect("Student/Profile.jsp?N="+n);
     }catch(Exception e){
                   out.println("Some error has occurred : "+ e.getMessage());

        } finally { 
            out.close();
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
