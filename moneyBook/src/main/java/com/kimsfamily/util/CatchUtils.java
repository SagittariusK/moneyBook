package com.kimsfamily.util;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.exception.ExceptionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CatchUtils {
	
	private static final Logger logger = LoggerFactory.getLogger(CatchUtils.class);
	
	public CatchUtils() {}
	
	public CatchUtils(Exception e) {
		for(final String element : ExceptionUtils.getRootCauseStackTrace(e)) {
			logger.error(element);
		}
	}
	
	public String catchString(HttpServletRequest request) {
		return new ClassUtils().beforStackString(2) + " @RequestMapping " + request.getRequestURI().toString() + " Error catch";
	}
}
