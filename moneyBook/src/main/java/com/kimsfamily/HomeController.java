package com.kimsfamily;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kimsfamily.util.CatchUtils;
import com.kimsfamily.util.IsDevice;
import com.kimsfamily.util.RequestUtil;
import com.kimsfamily.util.StrUtils;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		System.out.println("test git c01");
		try {

		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			logger.error("response Error");
			new CatchUtils(e);

		}finally {
			IsDevice isDevice = new IsDevice();
			reqmap = isDevice.DevicehashMapReturn(request, reqmap);
			
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/calendar.do", method = RequestMethod.GET)
	public ModelAndView calendar(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView("/main/index");
		//ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		
		try {
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			logger.error("response Error");
			new CatchUtils(e);
		}finally {
			IsDevice isDevice = new IsDevice();
			reqmap = isDevice.DevicehashMapReturn(request, reqmap);
			
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/modalContent.do", method = RequestMethod.GET)
	public ModelAndView modalContent(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView("/moneybook/modalContent");
		//ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		
		try {
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			logger.error("response Error");
			new CatchUtils(e);
		}finally {
			IsDevice isDevice = new IsDevice();
			reqmap = isDevice.DevicehashMapReturn(request, reqmap);
			
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/calendarControls.html", method = RequestMethod.GET)
	public ModelAndView calendarControls(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView("/moneybook/calendarControls");
		//ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		
		try {
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			logger.error("response Error");
			new CatchUtils(e);
		}finally {
			IsDevice isDevice = new IsDevice();
			reqmap = isDevice.DevicehashMapReturn(request, reqmap);
			
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/test.do", method = RequestMethod.GET)
	public ModelAndView test(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView("/test");
		//ModelAndView mav = new ModelAndView("/main/index");
		//ModelAndView mav = new ModelAndView("/moneybook/calendar");
		//ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		
		try {
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			logger.error("response Error");
			new CatchUtils(e);
		}finally {
			IsDevice isDevice = new IsDevice();
			reqmap = isDevice.DevicehashMapReturn(request, reqmap);
			
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public ModelAndView register(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		
		try {
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			logger.error("response Error");
			new CatchUtils(e);
		}finally {
			IsDevice isDevice = new IsDevice();
			reqmap = isDevice.DevicehashMapReturn(request, reqmap);
			
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
}