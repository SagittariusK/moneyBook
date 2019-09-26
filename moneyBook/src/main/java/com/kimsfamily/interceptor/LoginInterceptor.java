package com.kimsfamily.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	// Controller에 보내기 전에 처리하는 실행되는 메서드
	// false가 리턴이 되면 처리를 계속 진행하지 않는다. true가 return이 되면 계속진행한다.
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		System.out.println(getClass().getSimpleName() + ".preHandle()");

		if ("yes".equals(request.getParameter("yesNo")))
			return true;
		else
			return false;
	}
	
	// Controller 처리를 하고 난 뒤에 실행되는 메서드
	@Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		System.out.println(getClass().getSimpleName() + ".postHandle()");
        super.postHandle(request, response, handler, modelAndView);
    }
	
	// View까지 처리가 끝난 후에 처리됨
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }

}
