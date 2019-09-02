package com.kimsfamily.util;

public class IsDevice {

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
