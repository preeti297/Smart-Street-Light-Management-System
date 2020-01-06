import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class LoginServlet extends HttpServlet
{
 
	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
 {
	//res.setContentType("text,html");
	 String username=req.getParameter("username");
	 String password=req.getParameter("password");
	 if(password.equals("vnrvjiet")&& username.equals("fms")){
			HttpSession session=req.getSession();
			session.setAttribute("username",username);
			req.getRequestDispatcher("/Home.html").include(req, res);
			}
			else{
			    req.setAttribute("message", "Invalid Username/Password"); 
				req.getRequestDispatcher("/Login.jsp").forward(req,res);
			}
 }
}
