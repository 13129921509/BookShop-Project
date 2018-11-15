package com.school.bookshop.dao;

import java.util.*;

import com.school.bookshop.model.Book;

public interface BookDao {
	public List<Book> selectBookListByQuery(Map<String,Object> map);
	public List<Book> selectBookListByQueryAndNext(Map<String,Object> map);
	public int selectBookCount(Map<String,Object> map);
}
