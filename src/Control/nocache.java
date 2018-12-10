package Control;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class nocache
 */
@WebFilter("/*")
public class nocache implements Filter {

    /**
     * Default constructor. 
     */
    public nocache() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		  try{
		       HttpServletResponse httpResponse = (HttpServletResponse)response;
		       HttpServletRequest httpRequest = (HttpServletRequest)request;
		       httpResponse.addHeader("Pragma", "no-cache");
		       httpResponse.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		       httpResponse.addHeader("Cache-Control", "pre-check=0, post-check=0");
		       httpResponse.setDateHeader("Expires", 0L);
		       System.out.println("Se aplicó el filtro a " + httpRequest.getRequestURI());
		      }
		      catch(Exception e){
		        System.err.println("Error en Filtro No Cache");
		        e.printStackTrace();
		      }
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
