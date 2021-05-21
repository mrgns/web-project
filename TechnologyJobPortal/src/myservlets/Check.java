package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import mybeans.Users;


/**
 * Servlet implementation class Check
 */
@WebServlet("/Check")
public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		int id=0;
		String usnm=request.getParameter("usnm");
		String pswd=request.getParameter("pswd");
		String usertype="";
		
		try {
			Session ses;
			Configuration cfg=new Configuration().configure();
			SessionFactory sf=cfg.addAnnotatedClass(Users.class).buildSessionFactory();
			ses=sf.getCurrentSession();
			ses.beginTransaction();
			
			Query q=ses.createQuery("from Users where usnm=:usnm and pswd=:ps");
			q.setParameter("usnm", usnm);
			q.setParameter("ps", pswd);
			
			List lst=q.getResultList();
			
			for(int i=0; i<lst.size();i++)
			{
				Users obj=(Users) lst.get(i);
				usertype=obj.getUsertype();
				if(usertype.equals("User"))
				{
					response.sendRedirect("Homepage.jsp");
				}
				else if(usertype.equals("Admin"))
				{
					response.sendRedirect("Admin.jsp");
				}
			else
			{
				response.sendRedirect("Failure.jsp");
			}	
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}
	}
