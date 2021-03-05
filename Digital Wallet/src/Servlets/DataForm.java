package Servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.websocket.Decoder.Binary;
import javax.websocket.Decoder.BinaryStream;

/**
 * Servlet implementation class DataForm
 */
@WebServlet("/DataForm")
@MultipartConfig(maxFileSize=16177216) //1.5mb
public class DataForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DataForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		Part filePart=request.getPart("file");
		Part filePa=request.getPart("Profile");
		String fileName=Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
		InputStream fileContent=filePart.getInputStream();
		InputStream fileCon=filePa.getInputStream();
		
	    
		String fname,lnm,pass,age,pass1;
		String email,bio,gen;        
		fname=request.getParameter("Fname");
		lnm=request.getParameter("Lname");
		pass=request.getParameter("pass");
		pass1=request.getParameter("Cpass");
		age=request.getParameter("age");
		email=request.getParameter("email");
		bio=request.getParameter("bio");
		gen=request.getParameter("gender");
	    
	        
		Connection con;
		PreparedStatement pst;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/walletdb?user=root&password=Hello@dude1");
			if(pass.equals(pass1))
			{
			pst=con.prepareStatement("insert into rgusers(name,age,gen,eml,kyc,pimage,bio) values(?,?,?,?,?,?,?);");
			pst.setString(1, fname);
			pst.setString(2, age);
			pst.setString(3, gen);
			pst.setString(4, email);
			pst.setBlob(5, fileContent);
			pst.setBlob(6, fileCon);
			pst.setString(7, bio);
			int res=pst.executeUpdate();
			
			if(res>=0)
			{
				res=0;
				pst=con.prepareStatement("insert into users(usernm,pswd) values(?,?);");
				pst.setString(1, fname);
				pst.setString(2, pass);
				res=pst.executeUpdate();
			if(res>=0)
				response.sendRedirect("Success.jsp");
			else
				out.println("ERROR 802.....");
			}
			}
			else
			{
				out.println("Password does bot math");
			}
			con.close();
		 }
			catch(Exception e)
			{
				out.println(e.getMessage());
			}
		}
	}
