package com.kimsfamily.mc.lotto.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimsfamily.dao.CommonDao;
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
			logger.error(new CatchUtils().catchString(request));
			new CatchUtils(e);
		}
		return resultFlag;
	}
}
