package servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class HeaderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy tham số lang từ URL và lưu trong session
        String lang = request.getParameter("lang");
        if (lang != null) {
            request.getSession().setAttribute("lang", lang);  // Lưu ngôn ngữ vào session
        }
        response.sendRedirect(request.getHeader("Referer"));  // Quay lại trang hiện tại
    }
}
