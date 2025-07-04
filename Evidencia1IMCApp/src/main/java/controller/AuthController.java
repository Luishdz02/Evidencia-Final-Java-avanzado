package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import model.Usuario;
import service.AuthService;

@WebServlet("/auth")
public class AuthController extends HttpServlet {
    
    @Inject
    private AuthService authService;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        if ("login".equals(action)) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            try {
                Usuario usuario = authService.autenticar(username, password);
                request.getSession().setAttribute("usuario", usuario);
                response.sendRedirect("dashboard.jsp");
            } catch (Exception e) {
                request.setAttribute("error", e.getMessage());
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
            
        } else if ("register".equals(action)) {
            // Lógica de registro completa
        }
    }
}