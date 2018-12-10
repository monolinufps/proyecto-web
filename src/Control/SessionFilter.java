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
 * Servlet Filter implementation class SessionFilter
 */
@WebFilter("/private/*")
public class SessionFilter implements Filter {

    /**
     * Default constructor. 
     */
    public SessionFilter() {
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
		// TODO Auto-generated method stub
		// place your code here
		HttpServletRequest hrq = (HttpServletRequest)request;
		// pass the request along the filter chain
		if(hrq.getSession().getAttribute("Usuario")!=null) {
        System.err.println("ok");
        System.err.println(hrq.getSession().getAttribute("Usuario"));
		chain.doFilter(request, response);}
		else if(hrq.getSession().getAttribute("Administrador")!=null) {
	        System.err.println("ok");
	        System.err.println(hrq.getSession().getAttribute("Administrador"));
			chain.doFilter(request, response);}
		else {
			HttpServletResponse fg = (HttpServletResponse)response;
			fg.setStatus(401);
			fg.sendRedirect("../Inicio.jsp");
			System.err.println("error");}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
