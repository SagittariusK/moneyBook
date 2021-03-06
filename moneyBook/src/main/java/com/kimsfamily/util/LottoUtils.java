package com.kimsfamily.util;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.kimsfamily.mc.lotto.LottoVO;

public class LottoUtils {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public LottoVO lottoCollection(HttpServletRequest request, JSONObject object) {
		LottoVO lottoVO = new LottoVO();
		try {
//			System.out.println("읽기 결과 : " + object.toJSONString());
			
//			Class<?> targetClass = Class.forName("com.kimsfamily.mc.lotto.LottoVO");
//	        Method methods[] = targetClass.getDeclaredMethods();
//	        lottoVO.setDrwNo(object.get("drwNo").toString());
	        
	        String loggerStr = object.get("drwNo").toString() + "회차 로또 번호 :";
	        
            for (int i = 1; i <= 6; i++) {
            	loggerStr += " " + object.get("drwtNo" + i);
            	/*
                for(int j = 0; j < methods.length; j++) {
                    String mIndexStr = methods[j].toString();
                    int setDrwtNoIndex = mIndexStr.indexOf("setDrwtNo");
                    if(-1 != setDrwtNoIndex) {
                    	mIndexStr = mIndexStr.substring(setDrwtNoIndex, mIndexStr.length() - 5);
    	            	int mIndex = mIndexStr.lastIndexOf("No") + 2;
    	            	int index = Integer.parseInt(mIndexStr.substring(mIndex));
    	            	if(i == index) {
    	            		methods[j].invoke(lottoVO,object.get("drwtNo" + i).toString());
    	            	}
                    }
                }
                */
            }
//            lottoVO.setBnusNo(object.get("bnusNo").toString());
            
            HashMap<String, Object> lottoMap = new HashMap<String, Object>();
	        
	        lottoMap = ObjectUtils.getMapFromJsonObjectHashMap(object);
	        ObjectUtils.ConvertHashMapToObject(lottoMap, lottoVO);
            
            loggerStr += " (보너스 : " + object.get("bnusNo") + ")";
            logger.info(loggerStr);
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			new CatchUtils(e);
		}
		
        
		return lottoVO;
	}
	
}
