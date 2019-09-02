package com.kimsfamily.moneybook.member.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimsfamily.moneybook.dao.CommonDao;
import com.kimsfamily.moneybook.member.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	private CommonDao oDao;
	
	private static String namespace = "kr.co.eduhansol.dpsi.member";
	
	public MemberVO r_member_login(HashMap<String, Object> reqmap) {
		return oDao.selectOne(namespace + ".r_member_login", reqmap);
	}
}
