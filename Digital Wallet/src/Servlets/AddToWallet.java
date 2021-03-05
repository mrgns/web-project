package Servlets;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import beans.DBConnection;

/**
 * Servlet implementation class AddToWallet
 */
@WebServlet("/AddToWallet")
public class AddToWallet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToWallet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("walletid"));
		int accno=Integer.parseInt(request.getParameter("accno"));
		double bal=Double.parseDouble(request.getParameter("amount"));

		Connection con;
		PreparedStatement pst;
		ResultSet result;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/walletdb?user=root&password=Hello@dude1");
		
			pst=con.prepareStatement("update accounts set balance=balance-? where accno=?;");
			pst.setDouble(1, bal);
			pst.setInt(2, accno);
			int res=pst.executeUpdate();
			if(res>0)
			{
				res=0;
				pst=con.prepareStatement("update wallet set balance=balance+? where walletid=?;");
				pst.setDouble(1, bal);
				pst.setInt(2, id);
				res=pst.executeUpdate();
				
				pst=con.prepareStatement("select * from wallet where walletid=?");
				pst.setInt(1, id);
				result=pst.executeQuery();
				if(result.next())
				{
					double amount=Double.parseDouble(result.getString("balance"));
					pst=con.prepareStatement("insert into transaction values(?,?,now(),'Deposit',?,?)");
					pst.setInt(1, id);
					pst.setNString(2, result.getNString("name"));
					pst.setDouble(3, bal);
					pst.setDouble(4, amount);
					int trans=pst.executeUpdate();
				}
				if(res>=0)
				{
					System.out.println("<h2 style=\"color:green;\">Status : Success\"</h2>\"");
					response.sendRedirect("Success.jsp");
				}
				else
				{
					System.out.println("<h2 style=\"color:red;\">Status : Failed\"</h2>\"");
				}
			}
			else
			{
				System.out.println("<h2 style=\"color:red;\">Status : failed\"</h2>\"");
			}
			
		}
		catch(Exception ex)
		{
			System.out.println("Error : "+ex);
			}
	}

}
