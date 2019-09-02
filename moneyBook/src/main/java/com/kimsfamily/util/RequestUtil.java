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
	
	public RequestUtil(HttpServletRequest request) {
		requestParam_output(request);
	}
	
	public RequestUtil(Map<String, Object> reqmap) {
		requestPramMap_output(reqmap);
	}
	
	public RequestUtil(HashMap<String, Object> reqmap) {
		requestPramHashMap_output(reqmap);
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
