package com.bgs.cocktailparty.interceptor;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserLoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
//		//判断请求路径
//        //先获取url中的uri如果包含login放行
//        String uri = request.getRequestURI();
//
//        if(!uri.contains("login")) {
//            //如果不包含login那么就需要判断session中的用户信息
//            SecUser userSession = (SecUser) request.getSession().getAttribute("user");
//            if(userSession==null) {
//                //转到登录页面
//                response.sendRedirect("/jsps/login.jsp");
//                //不放行
//                return false;
//            }
//        }
//        //放行
//        return true;
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
	
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
		
	}

	
	
	

}
