package com.kimsfamily.util;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

public class IsDevice {
	
	public HashMap<String,Object> DevicehashMapReturn(HttpServletRequest request, HashMap<String,Object> hashmap){
		
		String userAgent = request.getHeader("User-Agent").toUpperCase();
		hashmap.put("curDevice", returnDevice(userAgent));
		
		return hashmap;
		
	}

	public String returnDevice(String userAgent) {
		
		 String Device ="";
		 if(userAgent.indexOf("MOBILE") > -1) {
			 if(userAgent.indexOf("PHONE") == -1) {
				 Device = "MOBILE";
			 }else {
				 Device = "TABLET";
			 }
		 }else {
			 Device = "PC";
		 }
		 
		 return Device;
	}

}
