package com.school.bookshop.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.filefilter.FalseFileFilter;
import org.junit.runners.Parameterized.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.school.bookshop.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	@Autowired
	private UserService userService;
	@ResponseBody
	@RequestMapping(value="/login",method=RequestMethod.POST,produces="application/json;charset=UTF-8")
	public Map<String,Object> loginUser(HttpServletRequest request,HttpSession session){
		int flog = userService.loginUser(request);
		Map<String,Object> map = new HashMap<String, Object>();
		if(flog == 0){
			map.put("content", "�˻�������");
			map.put("code", 0);
			return map;
		}else if(flog == 1){
			map.put("content", "�������");
			map.put("code", 0);
			return map;
		}else if(flog == 3){
			map.put("content", "�˺ų����쳣����ֹ��½");
			map.put("code", 0);
			return map;
		}
		map.put("content", "��½�ɹ�");
		map.put("code", 1);
		session.setAttribute("user", userService.getUsersByUserNameAndPassword(request));
		return map;
	}
	/*
	 * �����ǰuser
	 */
	@RequestMapping(value="/clearUser")
	public String reloadAndEliminate(HttpSession session,HttpServletRequest request){
		session.removeAttribute("user");
		String key = request.getParameter("key");
		if("hall".equals(key)){
			return "../hall.jsp";
		}else if(key != null){
			if("listBook".equals(key.split("_")[0])){
				return "../book/"+key.split("_")[1]+".action";
			}
		}
		return "../hall.jsp";
	}
}
