package com.school.bookshop.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.school.bookshop.model.Users;

public interface UserService {
	public int loginUser(HttpServletRequest request);
	public Users getUsersByUserNameAndPassword(HttpServletRequest request);
	public void addUser(Map<String,Object> map);
}
