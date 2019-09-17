package com.kimsfamily.moneybook;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kimsfamily.util.IsDevice;
import com.kimsfamily.util.RequestUtil;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response) {
		logger.info("-----------------------------------------------------------------");
		logger.info("@RequestMapping /");
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
			logger.info("@RequestMapping / Catch");
			logger.error(e.getMessage());
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/2", method = RequestMethod.GET)
	public ModelAndView index2(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response) {
		logger.info("-----------------------------------------------------------------");
		logger.info("@RequestMapping /2");
		if(!reqmap.isEmpty()) {
			logger.info("@RequestParam reqmap ==> ");
			logger.info(reqmap.toString());
		}
		new RequestUtil(request);
		logger.info("-----------------------------------------------------------------");
		
		ModelAndView mav = null;
		
		try {
			mav = new ModelAndView("/member/login_bak");
			
			String userAgent = request.getHeader("User-Agent").toUpperCase();
			IsDevice isDevice = new IsDevice();
			
			reqmap.put("curDevice", isDevice.returnDevice(userAgent));
			
			mav.addObject("map",reqmap);
		} catch (Exception e) {
			logger.info("@RequestMapping /2 Catch");
			logger.error(e.getMessage());
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public ModelAndView calendar(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response) {
		logger.info("-----------------------------------------------------------------");
		logger.info("@RequestMapping /main");
		if(!reqmap.isEmpty()) {
			logger.info("@RequestParam reqmap ==> ");
			logger.info(reqmap.toString());
		}
		new RequestUtil(request);
		logger.info("-----------------------------------------------------------------");
		
		ModelAndView mav = null;
		
		try {
			mav = new ModelAndView("/main/index");
			//mav = new ModelAndView("/test");
			//mav = new ModelAndView("/moneybook/calendar");
			
			String userAgent = request.getHeader("User-Agent").toUpperCase();
			IsDevice isDevice = new IsDevice();
			
			reqmap.put("curDevice", isDevice.returnDevice(userAgent));
			
			mav.addObject("map",reqmap);
		} catch (Exception e) {
			logger.info("@RequestMapping /test Catch");
			logger.error(e.getMessage());
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/modalContent.do", method = RequestMethod.GET)
	public ModelAndView modalContent(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response) {
		logger.info("-----------------------------------------------------------------");
		logger.info("@RequestMapping /main");
		if(!reqmap.isEmpty()) {
			logger.info("@RequestParam reqmap ==> ");
			logger.info(reqmap.toString());
		}
		new RequestUtil(request);
		logger.info("-----------------------------------------------------------------");
		
		ModelAndView mav = null;
		
		try {
			mav = new ModelAndView("/moneybook/modalContent");
			
			mav.addObject("map",reqmap);
		} catch (Exception e) {
			logger.info("@RequestMapping /test Catch");
			logger.error(e.getMessage());
		}
		return mav;
	}
	
	@RequestMapping(value = "/calendarControls.html", method = RequestMethod.GET)
	public ModelAndView calendarControls(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response) {
		logger.info("-----------------------------------------------------------------");
		logger.info("@RequestMapping /main");
		if(!reqmap.isEmpty()) {
			logger.info("@RequestParam reqmap ==> ");
			logger.info(reqmap.toString());
		}
		new RequestUtil(request);
		logger.info("-----------------------------------------------------------------");
		
		ModelAndView mav = null;
		
		try {
			mav = new ModelAndView("/moneybook/calendarControls");
			
			mav.addObject("map",reqmap);
		} catch (Exception e) {
			logger.info("@RequestMapping /test Catch");
			logger.error(e.getMessage());
		}
		return mav;
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ModelAndView test(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response) {
		logger.info("-----------------------------------------------------------------");
		logger.info("@RequestMapping /main");
		if(!reqmap.isEmpty()) {
			logger.info("@RequestParam reqmap ==> ");
			logger.info(reqmap.toString());
		}
		new RequestUtil(request);
		logger.info("-----------------------------------------------------------------");
		
		ModelAndView mav = null;
		
		try {
			//mav = new ModelAndView("/main/index");
			mav = new ModelAndView("/test");
			//mav = new ModelAndView("/moneybook/calendar");
			
			String userAgent = request.getHeader("User-Agent").toUpperCase();
			IsDevice isDevice = new IsDevice();
			
			reqmap.put("curDevice", isDevice.returnDevice(userAgent));
			
			mav.addObject("map",reqmap);
		} catch (Exception e) {
			logger.info("@RequestMapping /test Catch");
			logger.error(e.getMessage());
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public ModelAndView test2(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response) {
		logger.info("-----------------------------------------------------------------");
		logger.info("@RequestMapping /main2");
		if(!reqmap.isEmpty()) {
			logger.info("@RequestParam reqmap ==> ");
			logger.info(reqmap.toString());
		}
		new RequestUtil(request);
		logger.info("-----------------------------------------------------------------");
		
		ModelAndView mav = null;
		
		try {
			//mav = new ModelAndView("/main/index");
			mav = new ModelAndView("/test2");
			//mav = new ModelAndView("/moneybook/calendar");
			
			String userAgent = request.getHeader("User-Agent").toUpperCase();
			IsDevice isDevice = new IsDevice();
			
			reqmap.put("curDevice", isDevice.returnDevice(userAgent));
			
			mav.addObject("map",reqmap);
		} catch (Exception e) {
			logger.info("@RequestMapping /test2 Catch");
			logger.error(e.getMessage());
		}
		
		return mav;
	}
	
}
