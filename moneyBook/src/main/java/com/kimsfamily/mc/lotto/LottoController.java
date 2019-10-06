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
	
	@RequestMapping(value = "/lotto/lotto.do", method = RequestMethod.GET)
	public ModelAndView index(@RequestParam HashMap<String,Object> reqmap, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		new RequestUtil(request, reqmap);
		
		ModelAndView mav = new ModelAndView(new StrUtils().replaceLast(request.getRequestURI().toString(), ".do", ""));
		
		try {
			// 로또 회차
//	        String turn = "879";
	        
	        URL result;
             
             
//            System.out.println("읽기 결과 : " + object.toJSONString());\
            List<LottoVO> reqList = new ArrayList<LottoVO>();
            LottoVO lottoVO = new LottoVO();
            
            int loopTurn = 1;
            while (true) {
            	String turn = String.valueOf(loopTurn);
            	// 로또 추첨 결과 조회 URL
                result = new URL("https://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=" + turn);
                
                InputStreamReader isr = new InputStreamReader(result.openConnection().getInputStream(), "UTF-8");
                
                // JSON 형식 읽기
                JSONObject object = (JSONObject)JSONValue.parse(isr);
                
            	// 성공인 경우
            	if ("success".equals(object.get("returnValue"))) {
            		LottoUtils lottoUtils = new LottoUtils();
            		lottoVO = lottoUtils.lottoCollection(request, object);
            		reqList.add(lottoVO);
            		if(0 != loopTurn && (loopTurn % 100) == 0) {
            			lottoService.c_lotto_log(request, reqList);
            			reqList = new ArrayList<LottoVO>();
            		}
            		loopTurn++;
            	} else {
            		logger.info(turn + "회차 로또 정보 읽기를 실패하였습니다.");
            		break;
            	}
			}
            
            lottoService.c_lotto_log(request, reqList);
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