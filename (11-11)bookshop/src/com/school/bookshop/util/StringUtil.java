package com.school.bookshop.util;

public class StringUtil {
	/*
	 * ȥ�������ַ������еĿո�ͻس����Ʊ��
	 */
	public String trim(String str){
		String str_now = str.trim();
		str_now.replace("\\s", "");
		str_now.replace("\n", "");
		return str_now;
	}
}
