

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloAppEngine
 */
@WebServlet("/HelloAppEngine")
public class HelloAppEngine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	/**
	 * @throws ServletException 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
		      throws IOException, ServletException {
		     
		    response.setContentType("text/plain");
		    response.setCharacterEncoding("UTF-8");

		    //response.getWriter().print("Hello App Engine!\r\n");
		    RequestDispatcher dispatcher
	        = request.getRequestDispatcher("/moguratop.jsp");
	dispatcher.forward(request, response);
		    

		  }
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher
        = request.getRequestDispatcher("/moguratop.jsp");
dispatcher.forward(request, response);
	}

}
