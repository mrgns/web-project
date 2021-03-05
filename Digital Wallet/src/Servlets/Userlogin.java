package Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.DBConnection;

/**
 * Servlet implementation class Userlogin
 */
@WebServlet("/Userlogin")
public class Userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
		String usernm,pass;
		String utype;
		int walletid = 0;
		usernm=request.getParameter("usnm");
		pass=request.getParameter("pswd");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/walletdb?user=root&password=Hello@dude1");
		
			pst=con.prepareStatement("select * from users where usernm=? and pswd=? and userstatus='Active';");
			pst.setString(1, usernm);
			pst.setString(2, pass);
			rs=pst.executeQuery();  
			if(rs.next())
			{
				
			HttpSession sec=request.getSession(true);
			sec.setAttribute("walletid", rs.getString("walletid"));
			sec.setAttribute("usernm", usernm);
			sec.getId();
			utype=rs.getString("usertype");
			if(utype.equals("Admin"))
				response.sendRedirect("Admin.jsp");
			else
				response.sendRedirect("User.jsp");
			}
			else
				response.sendRedirect("Error.jsp");
			con.close();
		 }
			catch(Exception e)
			{
				out.println(e);
			}
		}
	}