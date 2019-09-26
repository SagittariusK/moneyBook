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
import com.kimsfamily.util.CatchUtils;
import com.kimsfamily.util.IsDevice;
import com.kimsfamily.util.KISA_SHA256;
import com.kimsfamily.util.RequestUtil;
import com.kimsfamily.util.StrUtils;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Resource
	private MemberService mService;
	
	@RequestMapping(value = "/member/login.do", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		System.out.println("git test member");
		try {
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			new CatchUtils(e);

		}finally {
			IsDevice isDevice = new IsDevice();
			reqmap = isDevice.DevicehashMapReturn(request, reqmap);
			
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "member/ajax/loginAction.do", method = RequestMethod.POST)
	public void loginAction(@RequestParam HashMap<String, Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		JSONObject obj = new JSONObject();
		
		try {
			String user_password = KISA_SHA256.getEncCode(reqmap.get("user_pwd").toString());
			reqmap.put("user_password", user_password);
		} catch (UnsupportedEncodingException e) {
			logger.error(new CatchUtils().catchString(request));
			logger.error("KISA_SHA256.getEncCode(user_pwd) Error");
			new CatchUtils(e);
		}
		
		int resultFlag = mService.r_member_login(session, reqmap);
		
		try {
			obj.put("resultFlag", resultFlag);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8"); 
			response.getWriter().print(obj);
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			new CatchUtils(e);
		}
		
	}
	
	@RequestMapping(value = "/member/joinForm.do", method = RequestMethod.GET)
	public ModelAndView join(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		
		if(null != reqmap && !reqmap.isEmpty()) {
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/ajax/realTimeIDCheck.do", method = RequestMethod.POST)
	public void realTimeIDCheck(@RequestParam HashMap<String, Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		JSONObject obj = new JSONObject();
		
		int resultFlag = mService.realTimeIDCheck(reqmap);
		
		try {
			obj.put("resultFlag", resultFlag);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8"); 
			response.getWriter().print(obj);
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			new CatchUtils(e);
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/ajax/joinAction.do", method = RequestMethod.POST)
	public void joinAction(@RequestParam HashMap<String, Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		JSONObject obj = new JSONObject();
		
		try {
			String user_password = KISA_SHA256.getEncCode(reqmap.get("user_password").toString());
			reqmap.put("user_password", user_password);
		} catch (UnsupportedEncodingException e) {
			logger.error(new CatchUtils().catchString(request));
			logger.info("KISA_SHA256.getEncCode(user_pwd) Error");
			new CatchUtils(e);
		}
		reqmap.put("user_gubun", "1000000");
		int resultFlag = mService.c_member_join(reqmap);
		
		try {
			obj.put("resultFlag", resultFlag);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8"); 
			response.getWriter().print(obj);
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			new CatchUtils(e);
		}
		
	}
}
