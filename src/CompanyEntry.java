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
@WebServlet(name="CompanyEntry", urlPatterns={"/CompanyEntry"})
public class CompanyEntry extends HttpServlet {
   
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
         String name=request.getParameter("name");
         String addr=request.getParameter("addr");
         String cdetails=request.getParameter("cdetails");
         String url=request.getParameter("url");
         String query1="update CompanyProfile set NameOfCompany = '"+name+"'"
                 +",CompanyAddress = '"+addr+"'"
                 +",ContactDetails = '"+cdetails+"'"
                 +",CompanySite ='"+url+"'"
                 +" where CompanyId = '"+regId+"'";
         int n=ConnPack.ConnectionFactory.getInstance().setData(query1, "JOBDSN");
     response.sendRedirect("Company/Home.jsp");
    
        }catch(Exception e)  {
          response.sendRedirect("index.jsp");
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
