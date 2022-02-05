import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Registerone")
public class Registerone extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public Registerone() {
		super();
	}	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String email = request.getParameter("email");
		String registeras = request.getParameter("registeras");
		String password = request.getParameter("password");
		Memberone memberone = new Memberone(uname, email,registeras, password);
		RegisteroneDao rDao = new RegisteroneDao();
		String result=rDao.insert(memberone);
		response.getWriter().print(result);
	}
}
