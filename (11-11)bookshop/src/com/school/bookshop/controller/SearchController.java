package com.school.bookshop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sun.print.resources.serviceui;

import com.school.bookshop.service.SearchService;
import com.school.bookshop.util.HttpUtil;

@Controller
@RequestMapping("search")
public class SearchController {
	@Autowired
	private SearchService searchService;
	
	@ResponseBody
	@RequestMapping(value = "book_10",method=RequestMethod.POST)
	public List<Map<String,Object>> getSearchBook(HttpServletRequest request){
		Map<String,Object> map = new HashMap<String,Object>();
		map = HttpUtil.getQueryMap(request);
		return searchService.getTop10BookInfo(map);
	}
}
