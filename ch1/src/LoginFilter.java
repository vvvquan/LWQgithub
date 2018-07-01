/*过滤器自动判断用户请求的URL是否是xxx/login/xxx，是的话判断用户是否已经登录，
 *没有登录则转移到登录页面，已登录则到达用户的请求页面
 */

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
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/*")
public class LoginFilter implements Filter {
	String LOGIN_URL = "/login/";
    /**
     * Default constructor. 
     */
    public LoginFilter() {
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
		System.out.println("-------- Login Filter ---------");
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpServletResponse httpResponse = (HttpServletResponse)response;
		HttpSession session = httpRequest.getSession();
		
		System.out.println(util.UrlUtil.getURL(httpRequest));
		////////
		System.out.println("::"+httpRequest.getRequestURI());
		////////
		if(isLoginUrl(httpRequest.getRequestURI())) { //如果是需要校验登录的页面
			System.out.println("带有login的URL");
			if(session.getAttribute("User") == null) { //用户没登录
				session.setAttribute("forwardURL",util.UrlUtil.getURL(httpRequest)); //保存url
				System.out.println(httpRequest.getRequestURL()+"未登录");
				httpResponse.sendRedirect(httpRequest.getContextPath()+"/result/user-non-login.jsp"); //保存url
				return;
			} else {
				System.out.println(httpRequest.getRequestURL()+"已经登录");
				chain.doFilter(request, response); //到达用户请求页面
			}
		} else { //不需要登录权限就可以登录的页面		
			// pass the request along the filter chain
			System.out.println("没有login的URL");
			chain.doFilter(request, response);  //直接到达用户请求页面
			///
			System.out.println("ok");
			////
		}
	}

	//判断是否符合条件：url中是否包含/login/
	boolean isLoginUrl(String strURL){
		return strURL.contains(LOGIN_URL);
	}
	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
