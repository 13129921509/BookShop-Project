package com.school.bookshop.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.bookshop.dao.BookDao;
import com.school.bookshop.model.Book;
import com.school.bookshop.service.BookService;
@Service
public class BookServiceImpl implements BookService{
	@Autowired
	private BookDao bookDao;
	public List<Book> getBookofCategory(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return bookDao.selectBookListByQuery(map);
	}
	public List<Book> getBoosCategory_next(Map<String, Object> map, int page) {
		// TODO Auto-generated method stub
		map.put("page", page);
		Book map2 = bookDao.selectBookListByQueryAndNext(map).get(0);
		return bookDao.selectBookListByQueryAndNext(map);
	}
	
	
	public int getBookCategoryCount(Map<String, Object> map){
		return bookDao.selectBookCount(map);
	}
	
}
