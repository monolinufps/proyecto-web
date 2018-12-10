	package Control;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import Dao.MusicaDAO;
import model.Musica;

/**
 * Servlet implementation class MusicaAg
 */
@WebServlet("/MusicaAg")
@MultipartConfig
public class MusicaAg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MusicaAg() {
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
	private String invertir(String ruta) {
		String g="";
		for(int y=0;y<ruta.length();y++) {
			String b=ruta.charAt(y)+"";
			if(b.equals("\\")) {
				g=g+"/";
			}
			else {
				g=g+""+b;
			}
		}
		return g;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String Nombre = request.getParameter("id");
		 String Descripcion = request.getParameter("descr");
		 String n=request.getParameter("nombre");
		 String n1=request.getParameter("nombre1");
		 String ruta2 = getServletContext().getRealPath("/");
		 String ruta1=invertir(ruta2);
		 String au=ruta1+"private/music/"+n1;
		 String img =ruta1+"private/img/"+n;
		 
		 System.out.println(ruta1);
		 String aux="music/"+n1;
		 String img1 ="img/"+n;
		 MusicaDAO numero=new MusicaDAO();
		 
		 if(numero.find(Nombre)==null) {

		 
		 // una imagen a la carpeta img
		 Part file = request.getPart("img");
		 InputStream is=file.getInputStream();
		 File f=new File(img);
		 FileOutputStream us= new FileOutputStream(f);
	 
		 
		 
		 int dato =is.read();
		 while(dato!=-1) {
			 us.write(dato);
			 dato =is.read();
		 }
		 us.close();
		 is.close();
		 
		 
		 // un audio en la carpeta music
		 Part fil = request.getPart("audio");
		 InputStream i=fil.getInputStream();
		 File fa=new File(au);
		 FileOutputStream u= new FileOutputStream(fa);
	
		 int dat =i.read();
		 while(dat!=-1) {
			 u.write(dat);
			 dat =i.read();
		 }
		 u.close();
		 i.close();
		 Musica numer=new Musica();
	     numer.setAudio(aux);
	     numer.setDescripcion(Descripcion);
	     numer.setId(Nombre);
	     numer.setImg(img1);
	     System.out.println(numer.getAudio()+" "+numer.getDescripcion()+" "+numer.getId()+" "+numer.getImg());
	     numero.insert(numer);
		 response.sendRedirect("private/Administrador.jsp"); 
		 
		 }
	}
		
		
	

}
