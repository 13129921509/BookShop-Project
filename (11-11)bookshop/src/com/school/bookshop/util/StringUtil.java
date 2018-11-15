package com.school.bookshop.util;

public class StringUtil {
	/*
	 * 去除返回字符串所有的空格和回车和制表符
	 */
	public String trim(String str){
		String str_now = str.trim();
		str_now.replace("\\s", "");
		str_now.replace("\n", "");
		return str_now;
	}
}
