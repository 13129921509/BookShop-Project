package com.school.bookshop.dao;

import java.util.*;

import com.school.bookshop.model.Users;

public interface UsersDao {
	public List<Map<String,Object>> esitUsers(Map<String,Object> map);
	public List<Map<String,Object>> judgeUsersPassword(Map<String,Object> map);
	public Users getUser(Map<String,Object> map);
}
