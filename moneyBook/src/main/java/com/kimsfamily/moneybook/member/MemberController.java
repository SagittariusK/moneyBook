package com.kimsfamily.moneybook.member;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kimsfamily.moneybook.member.service.MemberService;
import com.kimsfamily.util.IsDevice;
import com.kimsfamily.util.KISA_SHA256;
import com.kimsfamily.util.RequestUtil;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Resource
	private MemberService mService;
	
	@RequestMapping(value = "/member/login.do", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		logger.info("-----------------------------------------------------------------");
		logger.info("@RequestMapping /member/login.do");
		if(!reqmap.isEmpty()) {
			logger.info("@RequestParam reqmap ==> ");
			logger.info(reqmap.toString());
		}
		new RequestUtil(request);
		logger.info("-----------------------------------------------------------------");
		
		ModelAndView mav = null;
		
		try {
			mav = new ModelAndView("/member/login");
			
			String userAgent = request.getHeader("User-Agent").toUpperCase();
			IsDevice isDevice = new IsDevice();
			
			reqmap.put("curDevice", isDevice.returnDevice(userAgent));
			
			mav.addObject("map",reqmap);
		} catch (Exception e) {
			logger.info("@RequestMapping member/login.do Catch");
			logger.error(e.getMessage());
		}
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "member/ajax/loginAction.do", method = RequestMethod.POST)
	public void loginAction(@RequestParam HashMap<String, Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		logger.info("-----------------------------------------------------------------");
		logger.info("@RequestMapping member/ajax/loginAction.do");
		if(!reqmap.isEmpty()) {
			new RequestUtil(reqmap);
		}
		new RequestUtil(request);
		logger.info("-----------------------------------------------------------------");
		
		JSONObject obj = new JSONObject();
		
		try {
			String user_password = KISA_SHA256.getEncCode(reqmap.get("user_pwd").toString());
			reqmap.put("user_password", user_password);
		} catch (UnsupportedEncodingException e) {
			logger.info("@RequestMapping member/ajax/loginAction.do KISA_SHA256.getEncCode(user_pwd)");
			logger.error(e.getMessage());
		}
		
		int resultFlag = mService.r_member_login(session, reqmap);
		
		try {
			obj.put("resultFlag", resultFlag);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8"); 
			response.getWriter().print(obj);
		} catch (Exception e) {
			logger.info("@RequestMapping member/ajax/loginAction.do");
			logger.error(e.getMessage());
		}
		
	}
	
	@RequestMapping(value = "/member/joinForm.do", method = RequestMethod.GET)
	public ModelAndView join(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		logger.info("-----------------------------------------------------------------");
		logger.info("@RequestMapping /member/joinForm.do");
		if(!reqmap.isEmpty()) {
			logger.info("@RequestParam reqmap ==> ");
			logger.info(reqmap.toString());
		}
		new RequestUtil(request);
		logger.info("-----------------------------------------------------------------");
		
		ModelAndView mav = new ModelAndView("/member/joinForm");
		
		if(null != reqmap && !reqmap.isEmpty()) {
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/ajax/realTimeIDCheck.do", method = RequestMethod.POST)
	public void realTimeIDCheck(@RequestParam HashMap<String, Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		logger.info("-----------------------------------------------------------------");
		logger.info("@RequestMapping member/ajax/realTimeIDCheck.do");
		if(!reqmap.isEmpty()) {
			new RequestUtil(reqmap);
		}
		new RequestUtil(request);
		logger.info("-----------------------------------------------------------------");
		
		JSONObject obj = new JSONObject();
		
		int resultFlag = mService.realTimeIDCheck(reqmap);
		
		try {
			obj.put("resultFlag", resultFlag);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8"); 
			response.getWriter().print(obj);
		} catch (Exception e) {
			logger.info("@RequestMapping member/ajax/realTimeIDCheck.do");
			logger.error(e.getMessage());
		}
		
	}
}
