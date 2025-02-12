package com.learn.mycart.servlets;

import com.learn.mycart.entities.OrderDetails;
import com.learn.mycart.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class OrderServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            try {

                String userName = request.getParameter("user_name");
                String userEmail = request.getParameter("user_email");
                String userPhone = request.getParameter("user_phone");
                String userAddress = request.getParameter("user_address");

//                String productName = request.getParameter("productName");
//                int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
//                double productPrice = Double.parseDouble(request.getParameter("productPrice"));
//                
                //creating order obj to store data
//                OrderDetails orderd = new OrderDetails(userName,userEmail, userPhone, userAddress, productName, productQuantity, productPrice);
                OrderDetails orderd = new OrderDetails(userName,userEmail, userPhone, userAddress);
                Session hibernateSession = FactoryProvider.getFactory().openSession();
                Transaction tx = hibernateSession.beginTransaction();
                
                int orderID = (int) hibernateSession.save(orderd);
                
                tx.commit();
                
                hibernateSession.close();
                
//                out.println("Success");
//                out.println("<br> Order Id is"+orderID);
                response.sendRedirect("payment.jsp");
                
            } catch (Exception e) {
                e.printStackTrace();
            }

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
