package com.school.bookshop.service;

import java.util.List;
import java.util.Map;

import com.school.bookshop.model.Book;

public interface BookService {
	public List<Book> getBookofCategory(Map<String,Object> map);
	public List<Book> getBoosCategory_next(Map<String,Object> map,int page);
	public int getBookCategoryCount(Map<String, Object> map);
}
