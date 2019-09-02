package com.kimsfamily.moneybook.member.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimsfamily.moneybook.dao.CommonDao;
import com.kimsfamily.moneybook.member.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	private CommonDao oDao;
	
	private static String namespace = "kr.co.eduhansol.dpsi.member";
	
	public int r_member_login(HttpSession session, HashMap<String, Object> reqmap) {
		
		int resultFlag = 0;
		List<MemberVO> loginList = oDao.selectList(namespace + ".r_member_login", reqmap); 
		
		if(0 == loginList.size()) {
			resultFlag = 0;
		}else if(1 < loginList.size()) {
			resultFlag = 2;
		}else {
			resultFlag = 1;
			session.setAttribute("memberInfo", (MemberVO) loginList.get(0));
		}
		
		return resultFlag;
	}
	
	public int realTimeIDCheck(HashMap<String, Object> reqmap) {
		
		int resultFlag = 0;
		List<Integer> loginList = oDao.selectList(namespace + ".realTimeIDCheck", reqmap); 
		System.out.println("#### " + loginList.get(0));
		if(0 == loginList.get(0)) {
			resultFlag = 0;
		}else {
			resultFlag = 1;
			System.out.println("loginList ==> " + loginList.toString());
		}
		
		return resultFlag;
	}
}
