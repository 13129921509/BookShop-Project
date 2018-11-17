package com.school.bookshop.service.impl;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.bookshop.dao.SearchDao;
import com.school.bookshop.service.SearchService;
import com.school.bookshop.test.BaseSpringTest4;


@Service
public class SearchServiceImpl implements SearchService{
	@Autowired
	private SearchDao searchDao;

	public List<Map<String, Object>> getTop10BookInfo(Map<String, Object> para) {
		// TODO Auto-generated method stub
		return searchDao.getPre10BookByBookPara(para);
	}
	
}
