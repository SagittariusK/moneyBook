package com.kimsfamily.util;

public class ClassUtils {
	
	public String beforStackString(int index) {
		String beforStack = new Throwable().getStackTrace()[index].getClassName();
		int beforlastindex = beforStack.lastIndexOf(".");
		
		beforStack = beforStack.substring(beforlastindex + 1);
		return beforStack;
	}
}
