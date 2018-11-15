package com.school.bookshop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.school.bookshop.model.Book;
import com.school.bookshop.service.BookService;
import com.school.bookshop.util.HttpUtil;

@Controller
@RequestMapping(value="/book")
public class BookController {
	int book_count;
	@Autowired
	private BookService bookService;
	
	@RequestMapping(value="/{index}",produces="application/json;charset=UTF-8")
	public String getBoosCategory(@PathVariable int index,Model model,HttpServletRequest request){
		model.addAttribute("category", index);
		//Map<String,Object> map = new HashMap<String, Object>();
		return "../book_list.jsp";
	}
	
	/*
	 * 有条件的查询(价钱，书名，出版社)
	 */
	
	@ResponseBody
	@RequestMapping(value="{index}/select/{page}")
	public List<Book> getBoosCategory_value(@PathVariable("index") int index,@PathVariable("page") int page,HttpServletRequest request){
//		if(null != request.getParameter("min") && null != request.getParameter("max")){
//			request.setAttribute("sell_min", request.getParameter("min"));
//			request.setAttribute("sell_max", request.getParameter("max"));
//		}
		Map<String,Object> map = new HashMap<String, Object>();
		map = HttpUtil.getQueryMap(request);
		map.put("bookCateGoryId", index);
		return bookService.getBoosCategory_next(map,page);
	}
	/*
	@ResponseBody
	@RequestMapping(value="/{index}/{page}",produces="application/json;charset=UTF-8")
	public List<Book> getBoosCategory_next(@PathVariable("index") int index,@PathVariable("page") int page){
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("bookCateGoryId", index);
		return bookService.getBoosCategory_next(map, page);
	}
	*/
	
	@ResponseBody
	@RequestMapping(value="/{index}/{page}",produces="application/json;charset=UTF-8",method=RequestMethod.POST)
	public List<Book> getBoosCategory_next(@PathVariable("index") int index,@PathVariable("page") int page,HttpServletRequest request){
		Map<String,Object> map = new HashMap<String, Object>();
		map = HttpUtil.getQueryMap(request);
		map.put("bookCateGoryId", index);
		return bookService.getBoosCategory_next(map, page);
	}
	
	
	@ResponseBody
	@RequestMapping(value="/{index}/countAndCategory",produces="application/json;charset=UTF-8")
	public Map<String,Object> getBookCountAndCategory(@PathVariable("index") int index,HttpServletRequest request){
		Map<String,Object> map = new HashMap<String, Object>();
		Map<String,Object> new_map = new HashMap<String, Object>();
		map = HttpUtil.getQueryMap(request);
		map.put("bookCateGoryId", index);
		new_map.put("count", bookService.getBookCategoryCount(map));
		new_map.put("category", index);
		return new_map;
	}
}
