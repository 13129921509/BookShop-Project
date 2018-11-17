package com.school.bookshop.test;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.school.bookshop.dao.SearchDao;
import com.school.bookshop.service.SearchService;

public class SearchServiceTest extends BaseSpringTest4{
	Logger logger = Logger.getLogger(SearchServiceTest.class);
	@Autowired
	private SearchService searchService;
	
	
	@Test
	public void Test_01(){
		Map<String,Object> para = new HashMap<String,Object>();
		para.put("bookmohutitle", "%Èý%");
		System.out.println(searchService.getTop10BookInfo(para));
	}
}
