package Servlets;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WalletToWallet
 */
@WebServlet("/WalletToWallet")
public class WalletToWallet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WalletToWallet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("walletid"));
		int id1=Integer.parseInt(request.getParameter("walletid1"));
		double bal=Double.parseDouble(request.getParameter("amount"));

		Connection con;
		PreparedStatement pst;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/walletdb?user=root&password=Hello@dude1");

			pst=con.prepareStatement("update wallet set balance=balance-? where walletid=?;");
			pst.setDouble(1, bal);
			pst.setInt(2, id);
			int res=pst.executeUpdate();
			if(res>=0)
			{
				res=0;
				pst=con.prepareStatement("update wallet set balance=balance+? where walletid=?;");
				pst.setDouble(1, bal);
				pst.setInt(2, id1);
				res=pst.executeUpdate();
				if(res>=0)
				{
					System.out.println("Money added Successfully.....");
				}
				else
				{
					System.out.println("process failed .....");
				}
			}
			else
			{
				System.out.println("process failed .....?");
			}
			
		}
		catch(Exception ex)
		{
			System.out.println("Error : "+ex);
			}
	}

}
