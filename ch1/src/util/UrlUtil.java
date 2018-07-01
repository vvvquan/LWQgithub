package util;
import java.util.Enumeration;
import javax.servlet.http.HttpServletRequest;
public class UrlUtil {
	//自动从request中读出url，格式如：http://localhost:8080/login/UserDetail.jsp?userId=1
	public static String getURL(HttpServletRequest request){
		String url = "";
		url = "" + request.getRequestURL();
		url += param(request);
		return url;
	}
	
	public static String param(HttpServletRequest request) {
		String url = "";
		Enumeration param = request.getParameterNames(); //得到参数名
		
		while(param.hasMoreElements()){
			String pname = param.nextElement().toString();
			url += pname + "=" + request.getParameter(pname) + "&";
		}
		
		if(url.endsWith("&")){
			url = url.substring(0, url.lastIndexOf("&"));
		}
		
		if(url.length() > 0) url = "?" + url; //有参数时才需要在前面加上'?'来隔开
		
		return url;
	}
}
