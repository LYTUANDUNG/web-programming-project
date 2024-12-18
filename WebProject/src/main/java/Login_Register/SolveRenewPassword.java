package Login_Register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


/**
 * Servlet implementation class SolveRenewPassword
 */
@WebServlet("/SolveRenewPassword")
public class SolveRenewPassword extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = null;
        PreparedStatement psmt = null;

        try {
            Context initialContext = new InitialContext();
            DataSource ds = (DataSource) initialContext.lookup("java:comp/env/jdbc/sql");
            conn = ds.getConnection();
            String userName = request.getParameter("name");
            String userPassword = request.getParameter("password");

            String SQL = "SELECT TOP (1) * FROM users WHERE UserName = ?  ";
            psmt = conn.prepareStatement(SQL);
            psmt.setString(1, userName);
            ResultSet term = psmt.executeQuery();

            String message = "The username does not exist";
            if (!term.next()) {
                request.setAttribute("message", message);
                request.getRequestDispatcher("/views/RenewPassword.jsp").forward(request, response);
            } else {
                String SQL1 = "UPDATE users SET Password = ? WHERE UserName = ? ";
                psmt = conn.prepareStatement(SQL1);
                psmt.setString(1, userPassword);
                psmt.setString(2, userName);
                int rowsAffected = psmt.executeUpdate();  

                message = "You have successfully changed your password.";
                request.setAttribute("message", message);
                request.getRequestDispatcher("/views/login.jsp").forward(request, response);
            }
        } catch (NamingException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
