package com.kimsfamily.mc.lotto.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimsfamily.dao.CommonDao;
import com.kimsfamily.mc.lotto.LottoVO;
import com.kimsfamily.mc.member.MemberVO;
import com.kimsfamily.util.CatchUtils;

@Service
public class LottoService {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private CommonDao oDao;
	
	private static String namespace = "com.kimsfamily.mc.lotto";
	
	public int c_lotto_log(HttpServletRequest request, List<?> reqList) {
		
		int resultFlag = -1;
		try {
			resultFlag = oDao.batchInsert(namespace + ".c_lotto_log", reqList);
		} catch (Exception e) {
			new CatchUtils(e);
			resultFlag = -1;
		}
		
		return resultFlag;
	}

	public List<LottoVO> r_lotto_log(HttpServletRequest request, HashMap<String, Object> reqmap) {
		
		List<LottoVO> loginList = new ArrayList<LottoVO>();
		try {
			loginList = oDao.selectList(namespace + ".r_lotto_log", reqmap); 
		} catch (Exception e) {
			new CatchUtils(e);
		}
		
		return loginList;
	}
}
