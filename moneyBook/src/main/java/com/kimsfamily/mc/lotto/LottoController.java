package com.kimsfamily.mc.lotto;

import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kimsfamily.mc.lotto.service.LottoService;
import com.kimsfamily.util.CatchUtils;
import com.kimsfamily.util.IsDevice;
import com.kimsfamily.util.LottoUtils;
import com.kimsfamily.util.RequestUtil;
import com.kimsfamily.util.StrUtils;

@Controller
public class LottoController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Resource
	private LottoService lottoService;
	
//	private final static String USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36";
	
	@RequestMapping(value = "/lotto/lotto_select.do", method = RequestMethod.GET)
	public ModelAndView lotto_select(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		List<LottoVO> lottoNumList = new ArrayList<LottoVO>();
		try {
			lottoNumList = lottoService.r_lotto_log(request, reqmap);
			
			mav.addObject("lottoNumList", lottoNumList);
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			logger.error("response Error");
			new CatchUtils(e);
		}finally {
			IsDevice isDevice = new IsDevice();
			reqmap = isDevice.DevicehashMapReturn(request, reqmap);
			
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/lotto/lotto_statistics.do", method = RequestMethod.GET)
	public ModelAndView lotto_statistics(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		List<HashMap<String, Object>> statisticsList = new ArrayList<HashMap<String, Object>>();
		List<LottoVO> lottoNumList = new ArrayList<LottoVO>();
		try {
			statisticsList = lottoService.r_statistics_lotto(request);
			mav.addObject("statisticsList", statisticsList);
			
			lottoNumList = lottoService.r_lotto_log(request, reqmap);
			mav.addObject("lottoNumList", lottoNumList);
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			logger.error("response Error");
			new CatchUtils(e);
		}finally {
			IsDevice isDevice = new IsDevice();
			reqmap = isDevice.DevicehashMapReturn(request, reqmap);
			
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/lotto/popup/lotto_statisticsDetail.do", method = RequestMethod.GET)
	public ModelAndView lotto_statisticsDetail(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		List<HashMap<String, Object>> statisticsList = new ArrayList<HashMap<String, Object>>();
		List<LottoVO> lottoNumList = new ArrayList<LottoVO>();
		try {
			statisticsList = lottoService.r_statistics_lotto(request);
			mav.addObject("statisticsList", statisticsList);
			
			lottoNumList = lottoService.r_lotto_log(request, reqmap);
			mav.addObject("lottoNumList", lottoNumList);
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			logger.error("response Error");
			new CatchUtils(e);
		}finally {
			IsDevice isDevice = new IsDevice();
			reqmap = isDevice.DevicehashMapReturn(request, reqmap);
			
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/lotto/ajax/lotto_select.do", method = RequestMethod.GET)
	public ModelAndView ajax_lotto_select(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		
		try {
	        URL result;
             
            List<LottoVO> reqList = new ArrayList<LottoVO>();
            LottoVO lottoVO = new LottoVO();
            
            List<LottoVO> lottoNumList = new ArrayList<LottoVO>();
            lottoNumList = lottoService.r_lotto_log(request, reqmap);
            
            int resultFlag = 0;
            
            int loopTurn = 1;
            while (true) {
            	String turn = String.valueOf(loopTurn);
            	logger.info(turn + "회차 검색");
            	// 로또 추첨 결과 조회 URL
                result = new URL("https://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=" + turn);
                
                InputStreamReader isr = new InputStreamReader(result.openConnection().getInputStream(), "UTF-8");
                
                // JSON 형식 읽기
                JSONObject object = (JSONObject)JSONValue.parse(isr);
                
                
            	// 성공인 경우
            	if ("success".equals(object.get("returnValue"))) {
            		boolean insertFlag = true;
            		String drwNo = object.get("drwNo").toString(); 
            		for (LottoVO lottoVO2 : lottoNumList) {
            			if(drwNo.equals("" + lottoVO2.getDrwNo())) {
            				insertFlag = false;
            				break;
            			}
					}
            		
            		if(insertFlag) {
	            		LottoUtils lottoUtils = new LottoUtils();
	            		lottoVO = lottoUtils.lottoCollection(request, object);
	            		reqList.add(lottoVO);
	            		if(0 != loopTurn && (loopTurn % 100) == 0) {
	            			resultFlag = lottoService.c_lotto_log(request, reqList);
	            			reqList = new ArrayList<LottoVO>();
	            			if(0 == resultFlag) {
	            				break;
	            			}
	            		}
	            		loopTurn++;
            		}else {
            			if(!reqList.isEmpty()) {
                        	lottoService.c_lotto_log(request, reqList);
                        	reqList = new ArrayList<LottoVO>();
                        }
            			loopTurn++;
            		}
            	} else {
            		if(!reqList.isEmpty()) {
                    	lottoService.c_lotto_log(request, reqList);
                    }
            		logger.info(turn + "회차 로또 정보 읽기를 실패하였습니다.");
            		break;
            	}
			}
            
            mav.addObject("resultFlag", resultFlag);
            mav.addObject("reqList", reqList);
		} catch (Exception e) {
			logger.error(new CatchUtils().catchString(request));
			new CatchUtils(e);
		}finally {
			IsDevice isDevice = new IsDevice();
			reqmap = isDevice.DevicehashMapReturn(request, reqmap);
			
			mav.addObject("map",reqmap);
		}
		
		return mav;
	}
	
}