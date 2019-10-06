package com.kimsfamily.mc.sms.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimsfamily.dao.CommonDao;

@Service
public class SmsService {
	
	@Autowired
	private CommonDao Dao;
	
	private static String namespace = "kr.co.eduhansol.dpsi.member";
	
	public HashMap<String, Object> testLogin() {
		System.out.println("MemberService testLogin 진입");
		return Dao.selectOne(namespace + ".testLogin");
	}
}
