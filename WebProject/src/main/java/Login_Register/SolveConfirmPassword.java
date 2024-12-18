package Login_Register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SolveConfirmPassword
 */
@WebServlet("/SolveConfirmPassword")
public class SolveConfirmPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String codeFromUser = (String) session.getAttribute("code");
		String typeByUser = request.getParameter("userCode");

		if (codeFromUser.equals(typeByUser)) {
			session.removeAttribute("code");
			response.sendRedirect(request.getContextPath() + "/views/RenewPassword.jsp");
		} else {
			String message = " Your code are incorrect ! ";
			request.setAttribute("message",message);
			request.getRequestDispatcher("/views/Confirm.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
