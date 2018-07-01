/*�������Զ��ж��û������URL�Ƿ���xxx/login/xxx���ǵĻ��ж��û��Ƿ��Ѿ���¼��
 *û�е�¼��ת�Ƶ���¼ҳ�棬�ѵ�¼�򵽴��û�������ҳ��
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
		if(isLoginUrl(httpRequest.getRequestURI())) { //�������ҪУ���¼��ҳ��
			System.out.println("����login��URL");
			if(session.getAttribute("User") == null) { //�û�û��¼
				session.setAttribute("forwardURL",util.UrlUtil.getURL(httpRequest)); //����url
				System.out.println(httpRequest.getRequestURL()+"δ��¼");
				httpResponse.sendRedirect(httpRequest.getContextPath()+"/result/user-non-login.jsp"); //����url
				return;
			} else {
				System.out.println(httpRequest.getRequestURL()+"�Ѿ���¼");
				chain.doFilter(request, response); //�����û�����ҳ��
			}
		} else { //����Ҫ��¼Ȩ�޾Ϳ��Ե�¼��ҳ��		
			// pass the request along the filter chain
			System.out.println("û��login��URL");
			chain.doFilter(request, response);  //ֱ�ӵ����û�����ҳ��
			///
			System.out.println("ok");
			////
		}
	}

	//�ж��Ƿ����������url���Ƿ����/login/
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
