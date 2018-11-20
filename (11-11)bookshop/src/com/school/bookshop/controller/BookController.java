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
	
	@ResponseBody
	@RequestMapping(value="/select/{page}")
	public List<Book> getBoosCategory_value_search(@PathVariable("page") int page,HttpServletRequest request){
//		if(null != request.getParameter("min") && null != request.getParameter("max")){
//			request.setAttribute("sell_min", request.getParameter("min"));
//			request.setAttribute("sell_max", request.getParameter("max"));
//		}
		Map<String,Object> map = new HashMap<String, Object>();
		map = HttpUtil.getQueryMap(request);
		String content = map.get("value").toString().replace("_", "%");
		map.put((String) map.get("key"), content);
		map.remove("key");
		map.remove("value");
//		if(null!=map.get("bookmohutitle")){
//			map.put("bookmohutitle",map.get("bookmohutitle").toString().replace("_", "%"));
//		}
		
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
	
	
//	@ResponseBody
//	@RequestMapping(value="/select/{page}",produces="application/json;charset=UTF-8",method=RequestMethod.POST)
//	public List<Book> getBoosCategory_next_search(@PathVariable("page") int page,HttpServletRequest request){
//		Map<String,Object> map = new HashMap<String, Object>();
//		Map<String,Object> para = new HashMap<String, Object>();
//		map = HttpUtil.getQueryMap(request);
//		String content = map.get("value").toString().replace("_", "%");
//		para.put((String) map.get("key"), content);
//		return bookService.getBoosCategory_next(map, page);
//	}
	
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
	
	@ResponseBody
	@RequestMapping(value="/select/countAndCategory",produces="application/json;charset=UTF-8")
	public Map<String,Object> getBookCountAndCategory_search(HttpServletRequest request){
		Map<String,Object> map = new HashMap<String, Object>();
		Map<String,Object> new_map = new HashMap<String, Object>();
		Map<String,Object> para = new HashMap<String, Object>();
		map = HttpUtil.getQueryMap(request);
		String content = map.get("value").toString().replace("_", "%");
		para.put((String) map.get("key"), content);
//		if(null!=map.get("bookmohutitle")){
//			map.put("bookmohutitle",map.get("bookmohutitle").toString().replace("_", "%"));
//		}
		new_map.put("count", bookService.getBookCategoryCount(para));
		new_map.put("category", "null");
		return new_map;
	}
	
	
	@ResponseBody
	@RequestMapping(value="show/{index}",produces="application/json;charset=UTF-8",method=RequestMethod.GET)
	public List<Book> getBookInfo(@PathVariable int index){
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("bookId", index);
		List<Book> book = bookService.getBookofCategory(map);
		return book;
	}

}
