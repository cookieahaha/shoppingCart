package me.kukkii.shoppingcart;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  public Controller(){
    super();
  }
  
  public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    String action = request.getParameter("action");
    
    if((action == null) || (action.equals("list"))){
      ServletContext sc = getServletContext();
      RequestDispatcher rd = sc.getRequestDispatcher("/list.jsp");
      rd.forward(request,response);
    }
    else if(action.equals("detail")){
      String id = request.getParameter("id");
      Product p = ProductManager.getManager().lookUp("id");
      
      request.setAttribute("product", p);
      ServletContext sc = getServletContext();
      RequestDispatcher rd = sc.getRequestDispatcher("/detail.jsp");
      rd.forward(request,response);
    }
  }
  
}
