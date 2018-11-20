package com.school.bookshop.service.impl;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.bookshop.dao.UsersDao;
import com.school.bookshop.model.Users;
import com.school.bookshop.service.UserService;
import com.school.bookshop.util.HttpUtil;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UsersDao usersDao;
	/*
	 * 用户登录
	 * @see com.school.bookshop.service.UserService#esitUser(javax.servlet.http.HttpServletRequest)
	 */
	public int loginUser(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Map<String,Object> map = HttpUtil.getQueryMap(request);
		if(usersDao.esitUsers(map).size() == 0){
			return 0;//无此用户
		}
		
		if(usersDao.judgeUsersPassword(map).size() == 0){
			return 1;//密码不正确
		}
		
		if(!usersDao.judgeUsersPassword(map).get(0).get("userStatus").equals("正常")){
			return 3;//账号出现异常，禁止登陆
		}
		return 2;//正确登录
	}
	
	public Users getUsersByUserNameAndPassword(HttpServletRequest request){
		Map<String,Object> map = HttpUtil.getQueryMap(request);
		Users users = usersDao.getUser(map);
		return users;
	}

	public void addUser(Map<String, Object> map) {
		// TODO Auto-generated method stub
		usersDao.insertUser(map);
	}

}
