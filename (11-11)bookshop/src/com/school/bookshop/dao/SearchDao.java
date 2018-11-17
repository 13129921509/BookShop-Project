package com.school.bookshop.dao;

import java.util.*;

public interface SearchDao {
	public List<Map<String,Object>> getPre10BookByBookPara(Map<String,Object> map);
}
