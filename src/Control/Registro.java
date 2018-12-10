package Control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ContactoDAO;
import Dao.TipoQuejaDAO;
import Dao.UsuarioDAO;
import model.Contacto;
import model.TipoQueja;
import model.Usuario;

/**
 * Servlet implementation class Registro
 */
@WebServlet("/Registro")
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registro() {
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
		SimpleDateFormat formato = new SimpleDateFormat("yyyy-mm-dd");
		
		String nombre = request.getParameter("nombre");
		String correo = request.getParameter("correo");
		
		String telefono = request.getParameter("telefono");
		String genero = request.getParameter("genero");
		String edad=request.getParameter("edad");
		String clave=request.getParameter("clave");
		String fecha=request.getParameter("fecha");
		String usuario=request.getParameter("usuario");
		Usuario nuevo=new Usuario();
		UsuarioDAO agregar = new UsuarioDAO();
		nuevo=agregar.find(usuario);
		Date fechaA = null;
		try {
			fechaA =formato.parse(fecha);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(nuevo==null) {
			Usuario nuev=new Usuario();
			nuev.setCorreo(correo);
			nuev.setGenero(genero);
			nuev.setFechaN(fechaA);
			nuev.setUsuario(usuario);
			int ed=Integer.parseInt(edad);
			int et=Integer.parseInt(telefono);
			nuev.setEdad(ed);
			nuev.setNombre(nombre);
			nuev.setClave(clave);
			nuev.setTelefono(et);
			agregar.insert(nuev);
			request.setAttribute("mensaje", "Ingreso correctamente");
	        response.sendRedirect("Inicio.jsp");
		}else{
			request.setAttribute("mensaje", "Verifique datos");
	        response.sendRedirect("Inicio.jsp");
		}
		
	}

}
