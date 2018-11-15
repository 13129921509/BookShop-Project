package com.school.bookshop.util;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

public class HttpUtil {
	public static Map<String, Object> getQueryMap(HttpServletRequest request) {
		Map<String, Object> bm = new HashMap<String, Object>();
		Map<String, String[]> tmp = request.getParameterMap();
		if (tmp != null) {
			for (String key : tmp.keySet()) {
				Object[] values = tmp.get(key);
				Object o = values.length == 1 ? values[0].toString().trim()
						: values;
					bm.put(key, o);
			}
		}
		return bm;
	}
	
	public static Map<String, Object> getQueryMap2(HttpServletRequest request) {
		Map<String, Object> bm = new HashMap<String, Object>();
		Map<String, String> tmp = request.getParameterMap();
		if (tmp != null) {
			for (String key : tmp.keySet()) {
				Object values = tmp.get(key);
				//Object o = values.length == 1 ? values[0].toString().trim()
						//: values;
					bm.put(key, values);
			}
		}
		return bm;
	}
	
	public static Object isType(Object o) {
		Object object = o;
		try {
			object = Integer.parseInt(o.toString());
		} catch (Exception e) {
			try {
				object = Double.parseDouble(o.toString());
			} catch (Exception e1) {
//				if(o.toString().indexOf("?")!=-1){
					object=o.toString();
//				}
				
			}
		}
		return object;

	
	}	
}
