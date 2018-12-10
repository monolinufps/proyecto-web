package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.AdministradorDAO;
import Dao.UsuarioDAO;
import model.Administrador;
import model.Usuario;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
				String usuario= request.getParameter("usuario");
				String clave= request.getParameter("clave");
				
				Usuario n1=new Usuario();
				Administrador n2=new Administrador();
				UsuarioDAO prueba=new UsuarioDAO();
				AdministradorDAO prueba1=new AdministradorDAO();
				if(prueba.find(usuario)!=null ) {
					 n1=prueba.find(usuario);
					 if(n1.getClave().equals(clave)) {
					 HttpSession session = request.getSession();
					 session.setAttribute("Usuario",n1); //setting session attribute
					 //request.getRequestDispatcher("Usuario.jsp").forward(request, response);	
					 response.sendRedirect("private/Usuario.jsp");}
					 else {
					 response.sendRedirect("Inicio.jsp");
					 }
				 }
				
				
				else if(prueba1.find(usuario)!=null) {
					 n2=prueba1.find(usuario);
					 if(n2.getContraseña().equals(clave)) {
					 HttpSession session1 = request.getSession();
					 n2=prueba1.find(usuario);
					 session1.setAttribute("Administrador",n2); //setting session attribute
					 //request.getRequestDispatcher("Usuario.jsp").forward(request, response);	
					 response.sendRedirect("private/Administrador.jsp"); }
					 else {
					        response.sendRedirect("Inicio.jsp");
					 }
				 }
				else {
					request.setAttribute("error","<script>alert(usuario o contraseña ya existe)</script>");
			        response.sendRedirect("Inicio.jsp");
			        }
	
	}
	

}
