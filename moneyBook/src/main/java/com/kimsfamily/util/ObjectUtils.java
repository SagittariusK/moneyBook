package com.kimsfamily.util;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

public class ObjectUtils {
	public static Map<String, Object> ConvertObjectToMap(Object obj) {
		try {
			// Field[] fields = obj.getClass().getFields(); //private field는 나오지 않음.
			Field[] fields = obj.getClass().getDeclaredFields();
			Map<String, Object> resultMap = new HashMap<String, Object>();
			for (int i = 0; i <= fields.length - 1; i++) {
				fields[i].setAccessible(true);
				resultMap.put(fields[i].getName(), fields[i].get(obj));
			}
			return resultMap;
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static HashMap<String, Object> ConvertObjectToHashMap(Object obj) {
		try {
			// Field[] fields = obj.getClass().getFields(); //private field는 나오지 않음.
			Field[] fields = obj.getClass().getDeclaredFields();
			HashMap<String, Object> resultMap = new HashMap<String, Object>();
			for (int i = 0; i <= fields.length - 1; i++) {
				fields[i].setAccessible(true);
				resultMap.put(fields[i].getName(), fields[i].get(obj));
			}
			return resultMap;
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static Object ConvertMapToObject(Map<String, Object> map, Object objClass) {
		String keyAttribute = null;
		String setMethodString = "set";
		String methodString = null;
		Iterator<?> itr = map.keySet().iterator();
		while (itr.hasNext()) {
			keyAttribute = (String) itr.next();
			methodString = setMethodString + keyAttribute.substring(0, 1).toUpperCase() + keyAttribute.substring(1);
			try {
				Method[] methods = objClass.getClass().getDeclaredMethods();
				for (int i = 0; i <= methods.length - 1; i++) {
					if (methodString.equals(methods[i].getName())) {
						// System.out.println("invoke : " + methodString);
						methods[i].invoke(objClass, map.get(keyAttribute));
					}
				}
			} catch (SecurityException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		}
		return objClass;

	}
	
	public static Object ConvertHashMapToObject(HashMap<String, Object> map, Object objClass) {
		String keyAttribute = null;
		String setMethodString = "set";
		String methodString = null;
		Iterator<?> itr = map.keySet().iterator();
		while (itr.hasNext()) {
			keyAttribute = (String) itr.next();
			methodString = setMethodString + keyAttribute.substring(0, 1).toUpperCase() + keyAttribute.substring(1);
			
			try {
				Method[] methods = objClass.getClass().getDeclaredMethods();
				for (int i = 0; i <= methods.length - 1; i++) {
					String methodName = methods[i].getName();
					if (methodString.equals(methodName)) {
						if("com.kimsfamily.mc.lotto.LottoVO".equals(objClass.getClass().getName())) {
							if("setDrwNo".equals(methodName)) {
								methods[i].invoke(objClass, Integer.parseInt(map.get(keyAttribute).toString()));
							}else {
								methods[i].invoke(objClass, map.get(keyAttribute).toString());
							}
						}else {
							methods[i].invoke(objClass, map.get(keyAttribute));
						}

					}
				}
			} catch (SecurityException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		}
		return objClass;
		
	}

	/**
     * Map을 json으로 변환한다.
     *
     * @param map Map<String, Object>.
     * @return JSONObject.
     */
    public static JSONObject getJsonStringFromMap( Map<String, Object> map ){
        JSONObject jsonObject = new JSONObject();
        for( Map.Entry<String, Object> entry : map.entrySet() ) {
            String key = entry.getKey();
            Object value = entry.getValue();
            jsonObject.put(key, value);
        }
        
        return jsonObject;
    }
    public static JSONObject getJsonStringFromHashMap( HashMap<String, Object> map ){
    	JSONObject jsonObject = new JSONObject();
    	for( Map.Entry<String, Object> entry : map.entrySet() ) {
    		String key = entry.getKey();
    		Object value = entry.getValue();
    		jsonObject.put(key, value);
    	}
    	
    	return jsonObject;
    }
    
    /**
     * List<Map>을 jsonArray로 변환한다.
     *
     * @param list List<Map<String, Object>>.
     * @return JSONArray.
     */
    public static JSONArray getJsonArrayFromListMap( List<Map<String, Object>> list ){
        JSONArray jsonArray = new JSONArray();
        for( Map<String, Object> map : list ) {
            jsonArray.add( getJsonStringFromMap( map ) );
        }
        
        return jsonArray;
    }
    public static JSONArray getJsonArrayFromListHashMap( List<HashMap<String, Object>> list ){
    	JSONArray jsonArray = new JSONArray();
    	for( HashMap<String, Object> map : list ) {
    		jsonArray.add( getJsonStringFromMap( map ) );
    	}
    	
    	return jsonArray;
    }
    
    /**
     * List<Map>을 jsonString으로 변환한다.
     *
     * @param list List<Map<String, Object>>.
     * @return String.
     */
    public static String getJsonStringFromListMap( List<Map<String, Object>> list ){
        JSONArray jsonArray = getJsonArrayFromListMap( list );
        return jsonArray.toJSONString();
    }
    public static String getJsonStringFromListHashMap( List<HashMap<String, Object>> list ){
    	JSONArray jsonArray = getJsonArrayFromListHashMap( list );
    	return jsonArray.toJSONString();
    }
 
    /**
     * JsonObject를 Map<String, String>으로 변환한다.
     *
     * @param jsonObj JSONObject.
     * @return Map<String, Object>.
     */
    @SuppressWarnings("unchecked")
    public static Map<String, Object> getMapFromJsonObjectMap( JSONObject jsonObj ){
        Map<String, Object> map = null;
        try {
            map = new ObjectMapper().readValue(jsonObj.toJSONString(), Map.class) ;
        } catch (JsonParseException e) {
            e.printStackTrace();
        } catch (JsonMappingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return map;
    }
	@SuppressWarnings("unchecked")
	public static HashMap<String, Object> getMapFromJsonObjectHashMap( JSONObject jsonObj ){
	HashMap<String, Object> map = null;
	try {
		map = new ObjectMapper().readValue(jsonObj.toJSONString(), HashMap.class) ;
	} catch (JsonParseException e) {
		e.printStackTrace();
	} catch (JsonMappingException e) {
		e.printStackTrace();
	} catch (IOException e) {
		e.printStackTrace();
	}
	return map;
	}
 
    /**
     * JsonArray를 List<Map<String, String>>으로 변환한다.
     *
     * @param jsonArray JSONArray.
     * @return List<Map<String, Object>>.
     */
    public static List<Map<String, Object>> getListMapFromJsonArrayMap( JSONArray jsonArray ){
        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        if( jsonArray != null )
        {
            int jsonSize = jsonArray.size();
            for( int i = 0; i < jsonSize; i++ )
            {
                Map<String, Object> map = ObjectUtils.getMapFromJsonObjectMap( ( JSONObject ) jsonArray.get(i) );
                list.add( map );
            }
        }
        return list;
    }
    public static List<HashMap<String, Object>> getListMapFromJsonArrayHashMap( JSONArray jsonArray ){
    	List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
    	if( jsonArray != null )
    	{
    		int jsonSize = jsonArray.size();
    		for( int i = 0; i < jsonSize; i++ )
    		{
    			HashMap<String, Object> map = ObjectUtils.getMapFromJsonObjectHashMap( ( JSONObject ) jsonArray.get(i) );
    			list.add( map );
    		}
    	}
    	return list;
    }

}
