package com.school.bookshop.util;

import java.util.Random;

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
	
	
	/*
	 * ������֤��
	 */
	public static String getYZM(){
		Random random = new Random();
		String yzm = "";
		for(int i = 0 ; i <  5; i++){
			yzm+=(char)(48 + random.nextInt(10));
		}
		for(int i = 0 ; i <  5; i++){
			yzm+=(char)(65 + random.nextInt(24));
		}
		return yzm;
	} 
	
}


