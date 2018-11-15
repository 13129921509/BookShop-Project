package com.school.bookshop.test;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import sun.util.logging.resources.logging;

import com.school.bookshop.service.BookService;

public class BookServiceTest extends BaseSpringTest4{
	@Autowired
	private BookService bookService;
	Logger logging = Logger.getLogger(BookServiceTest.class);
	
	@Test
	public void Test_01(){
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("bookCateGoryId", "1");
		System.out.println(bookService.getBookofCategory(map).size());
	}
	
	@Test
	public void Test_02(){
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("bookCateGoryId", "1");
		System.out.println(bookService.getBoosCategory_next(map,0).get(0).getBookId());
	}
	
	@Test
	public void Tets_03(){
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("bookCateGoryId", "7");
		System.out.println(bookService.getBookCategoryCount(map));
	}
}
