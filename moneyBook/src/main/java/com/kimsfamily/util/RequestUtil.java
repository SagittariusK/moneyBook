package com.kimsfamily.util;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class RequestUtil {
	
	private static final Logger logger = LoggerFactory.getLogger(RequestUtil.class);
	
	public RequestUtil() {}
	
	public RequestUtil(HttpServletRequest request, String controllerFlag) {
		if("Y".equals(controllerFlag.toUpperCase())) {
			String beforStack = new ClassUtils().beforStackString(2);
			String intro = beforStack + " @RequestMapping " + request.getRequestURI().toString();
			logger.info("-----------------------------------------------------------------");
			logger.info(intro);
			requestParam_output(request);
			logger.info("-----------------------------------------------------------------");
		}else {
			requestParam_output(request);
		}
	}
	
	public RequestUtil(Map<String, Object> reqmap) {
		requestPramMap_output(reqmap);
	}
	
	public RequestUtil(HashMap<String, Object> reqmap) {
		requestPramHashMap_output(reqmap);
	}
	
	public RequestUtil(HttpServletRequest request, Map<String, Object> reqmap) {
		String beforStack = new ClassUtils().beforStackString(2);
		String intro = beforStack + " @RequestMapping " + request.getRequestURI().toString();
		logger.info("-----------------------------------------------------------------");
		logger.info(intro);
		requestPramMap_output(reqmap);
		logger.info("-----------------------------------------------------------------");
	}
	
	public RequestUtil(HttpServletRequest request, HashMap<String, Object> reqmap) {
		String beforStack = new ClassUtils().beforStackString(2);
		String intro = beforStack + " @RequestMapping " + request.getRequestURI().toString();
		logger.info("-----------------------------------------------------------------");
		logger.info(intro);
		requestPramHashMap_output(reqmap);
		logger.info("-----------------------------------------------------------------");
	}
	
	public String beforStackString() {
		String beforStack = new Throwable().getStackTrace()[2].getClassName();
		int beforlastindex = beforStack.lastIndexOf(".");
		
		beforStack = beforStack.substring(beforlastindex + 1);
		return beforStack;
	}

	public void requestParam_output(HttpServletRequest request) {
		Enumeration<?> params = request.getParameterNames();
		if(params.hasMoreElements()) {
			logger.info("request Parameter ==>");
			while (params.hasMoreElements()){
			    String name = (String)params.nextElement();
			    if(!"".equals("" + request.getParameter(name)) && null != request.getParameter(name)) {
			    	String resultStr = name + ": " +request.getParameter(name);
			    	logger.info(resultStr);
			    }
			}
		}
	}
	
	public void requestPramMap_output(Map<String, Object> reqmap) {
		if(!reqmap.isEmpty()) {
			logger.info("@RequestParam reqmap ==>");
			logger.info("{");
			for (String mapkey : reqmap.keySet()) {
				if(!"".equals("" + reqmap.get(mapkey)) && null != reqmap.get(mapkey)) {
					String resultStr = mapkey + "=" + reqmap.get(mapkey);
					logger.info(resultStr);
				}
			}
			logger.info("}");
		}
	}
	
	public void requestPramHashMap_output(HashMap<String, Object> reqmap) {
		if(!reqmap.isEmpty()) {
			logger.info("@RequestParam reqmap ==>");
			logger.info("{");
			for (String mapkey : reqmap.keySet()) {
				if(!"".equals("" + reqmap.get(mapkey)) && null != reqmap.get(mapkey)) {
					String resultStr = mapkey + "=" + reqmap.get(mapkey);
					logger.info(resultStr);
				}
			}
			logger.info("}");
		}
	}
}
