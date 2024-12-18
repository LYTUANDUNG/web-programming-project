package sendFeedBack;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/submitReview")
public class SubmitReview extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String rating = request.getParameter("rating");
		String customerFeedBack=request.getParameter("comment");
		if ( rating != null&& !rating.isBlank()) {
			System.out.println("Người dùng đã chọn " + rating + " sao.");
			request.setAttribute("message", "\r\n"
					+ "Thank you for your " + rating + " star review !");
			request.setAttribute("feedback",customerFeedBack);
			request.getRequestDispatcher("/views/History.jsp").forward(request, response);
		} else {
			System.out.println("Không có đánh giá!");
			response.sendRedirect("error.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
