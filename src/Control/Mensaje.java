package Control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ContactoDAO;
import Dao.TipoQuejaDAO;
import model.Contacto;
import model.TipoQueja;

/**
 * Servlet implementation class Mensaje
 */
@WebServlet("/Mensaje")
public class Mensaje extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mensaje() {
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
		String nombre = request.getParameter("nombre");
		String correo = request.getParameter("correo");
		String telefono = request.getParameter("telefono");
		String descr = request.getParameter("subject");
		Contacto nuevo=new Contacto();
		TipoQuejaDAO buscar=new TipoQuejaDAO();
		TipoQueja n=new TipoQueja();
		n=buscar.find("tipo1");
		nuevo.setNombre(nombre);
		nuevo.setId(telefono+"1"+nombre);
		nuevo.setCorreo(correo);
		nuevo.setDescr(descr);
		nuevo.setTelefono(telefono);
		nuevo.setTipoQueja(n);
		ContactoDAO agregar = new ContactoDAO();
		agregar.insert(nuevo);
        response.sendRedirect("Inicio.jsp");

		
	}

}
