package com.kimsfamily.mc.duty;

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
public class DutyController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value = "/duty/duty.do", method = RequestMethod.GET)
	public ModelAndView index(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		System.out.println(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
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
	
}