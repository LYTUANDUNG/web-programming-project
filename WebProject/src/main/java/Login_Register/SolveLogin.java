package Login_Register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import data.DateJava;
import data.Users;

/**
 * Servlet implementation class SolveLogin
 */
@WebServlet("/SolveLogin")
public class SolveLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			Context initContext = new InitialContext();
			DataSource ds = (DataSource) initContext.lookup("java:comp/env/jdbc/sql");
			conn = ds.getConnection();
			String userName = request.getParameter("userName");
			String userPassword = request.getParameter("password");
			String SQL = "select top  (1) * from users where UserName = ? and Password= ? ;";

			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userName);
			pstmt.setString(2, userPassword);
			ResultSet result = pstmt.executeQuery();
			if (result.next()) {
				// Tạo đối tượng Student
				Users user = new Users();

				// Set giá trị trực tiếp từ ResultSet
				user.setId(result.getInt("UserID"));
				user.setUserName(result.getString("UserName"));
				user.setFullName(result.getString("FullName"));
				user.setPassword(result.getString("Password"));
				user.setId(Integer.parseInt(result.getString("RoleID")));
				user.setImage(result.getString("Image"));
				user.setEmail(result.getString("Email"));
				user.setAddress(result.getString("address"));

				java.sql.Date sqlDate = result.getDate("BirthDay");
				if (sqlDate != null) {
					user.setBirthday(DateJava.fromSQLDate(sqlDate));
				}

				// Đặt đối tượng Student vào request
				request.setAttribute("user", user);
				request.getRequestDispatcher("/views/Home.jsp").forward(request, response);
			} else {
				String error = " Your userName or Password is incorrect ! ";
				request.setAttribute("message", error);
				request.getRequestDispatcher("/views/login.jsp").forward(request, response);
			}

		} catch (NamingException e) {
			e.printStackTrace();
			System.out.println("Error: " + e.getMessage());
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Error: " + e.getMessage());
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
