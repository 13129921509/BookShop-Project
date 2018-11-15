package com.school.bookshop.service;

import javax.servlet.http.HttpServletRequest;

import com.school.bookshop.model.Users;

public interface UserService {
	public int loginUser(HttpServletRequest request);
	public Users getUsersByUserNameAndPassword(HttpServletRequest request);
}
