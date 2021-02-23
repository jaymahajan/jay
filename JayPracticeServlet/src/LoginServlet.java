import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

           Student stu = new Student();
           
           stu.setRollno(1);
           stu.setName("Jayesh");
           
           request.setAttribute("data", stu);
           
           RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
           rd.forward(request, response);
	}

}
