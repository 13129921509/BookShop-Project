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
	 * �û���¼
	 * @see com.school.bookshop.service.UserService#esitUser(javax.servlet.http.HttpServletRequest)
	 */
	public int loginUser(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Map<String,Object> map = HttpUtil.getQueryMap(request);
		if(usersDao.esitUsers(map).size() == 0){
			return 0;//�޴��û�
		}
		
		if(usersDao.judgeUsersPassword(map).size() == 0){
			return 1;//���벻��ȷ
		}
		
		if(!usersDao.judgeUsersPassword(map).get(0).get("userStatus").equals("����")){
			return 3;//�˺ų����쳣����ֹ��½
		}
		return 2;//��ȷ��¼
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
