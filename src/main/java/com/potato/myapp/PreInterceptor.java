package com.potato.myapp;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.potato.myapp.money.model.vo.UserTotalDepositVO;
import com.potato.myapp.money.service.SimpleService;
import com.potato.myapp.user.model.vo.UserVO;

public class PreInterceptor extends HandlerInterceptorAdapter {
	
	@Resource(name = "simpleService")
	private SimpleService simpleService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handle) throws Exception {
		HttpSession session = request.getSession();
		
		UserTotalDepositVO deposit = (UserTotalDepositVO) session.getAttribute("depositMoney");
		UserVO user = (UserVO) session.getAttribute("loginUser");
		
		if(user == null) {
			response.sendRedirect("/");
			return false;
		}else if(deposit != null) {
			simpleService.updateUserTotalDeposit(user);
			session.removeAttribute("depositMoney");
			session.setAttribute("depositMoney" , simpleService.selectDeposit(user) );
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
}
