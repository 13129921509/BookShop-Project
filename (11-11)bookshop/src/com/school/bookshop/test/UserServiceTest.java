package com.school.bookshop.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletInputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.test.context.ContextConfiguration;

import com.school.bookshop.service.UserService;
@ContextConfiguration(classes={RootConfig.class})
public class UserServiceTest extends BaseSpringTest4{
	Logger logger = Logger.getLogger(UserServiceTest.class);
	@Autowired
	private UserService userService;
	
	/*
	 * 测试1.注入是否成功
	 * 		2.直接实现接口的某个方法
	 */
	@Test
	public void test_login(){

		System.out.println("结果="+userService.loginUser(new HttpServletRequest() {
		
			public Map getParameterMap() {
				// TODO Auto-generated method stub
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("userName", "1");
				map.put("possword", "1");
				return map;
			}

			public Object getAttribute(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}

			public Enumeration getAttributeNames() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getCharacterEncoding() {
				// TODO Auto-generated method stub
				return null;
			}

			public int getContentLength() {
				// TODO Auto-generated method stub
				return 0;
			}

			public String getContentType() {
				// TODO Auto-generated method stub
				return null;
			}

			public ServletInputStream getInputStream() throws IOException {
				// TODO Auto-generated method stub
				return null;
			}

			public Locale getLocale() {
				// TODO Auto-generated method stub
				return null;
			}

			public Enumeration getLocales() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getParameter(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}

			public Enumeration getParameterNames() {
				// TODO Auto-generated method stub
				return null;
			}

			public String[] getParameterValues(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}

			public String getProtocol() {
				// TODO Auto-generated method stub
				return null;
			}

			public BufferedReader getReader() throws IOException {
				// TODO Auto-generated method stub
				return null;
			}

			public String getRealPath(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}

			public String getRemoteAddr() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getRemoteHost() {
				// TODO Auto-generated method stub
				return null;
			}

			public RequestDispatcher getRequestDispatcher(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}

			public String getScheme() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getServerName() {
				// TODO Auto-generated method stub
				return null;
			}

			public int getServerPort() {
				// TODO Auto-generated method stub
				return 0;
			}

			public boolean isSecure() {
				// TODO Auto-generated method stub
				return false;
			}

			public void removeAttribute(String arg0) {
				// TODO Auto-generated method stub
				
			}

			public void setAttribute(String arg0, Object arg1) {
				// TODO Auto-generated method stub
				
			}

			public void setCharacterEncoding(String arg0)
					throws UnsupportedEncodingException {
				// TODO Auto-generated method stub
				
			}

			public String getAuthType() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getContextPath() {
				// TODO Auto-generated method stub
				return null;
			}

			public Cookie[] getCookies() {
				// TODO Auto-generated method stub
				return null;
			}

			public long getDateHeader(String arg0) {
				// TODO Auto-generated method stub
				return 0;
			}

			public String getHeader(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}

			public Enumeration getHeaderNames() {
				// TODO Auto-generated method stub
				return null;
			}

			public Enumeration getHeaders(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}

			public int getIntHeader(String arg0) {
				// TODO Auto-generated method stub
				return 0;
			}

			public String getMethod() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getPathInfo() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getPathTranslated() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getQueryString() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getRemoteUser() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getRequestURI() {
				// TODO Auto-generated method stub
				return null;
			}

			public StringBuffer getRequestURL() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getRequestedSessionId() {
				// TODO Auto-generated method stub
				return null;
			}

			public String getServletPath() {
				// TODO Auto-generated method stub
				return null;
			}

			public HttpSession getSession() {
				// TODO Auto-generated method stub
				return null;
			}

			public HttpSession getSession(boolean arg0) {
				// TODO Auto-generated method stub
				return null;
			}

			public Principal getUserPrincipal() {
				// TODO Auto-generated method stub
				return null;
			}

			public boolean isRequestedSessionIdFromCookie() {
				// TODO Auto-generated method stub
				return false;
			}

			public boolean isRequestedSessionIdFromURL() {
				// TODO Auto-generated method stub
				return false;
			}

			public boolean isRequestedSessionIdFromUrl() {
				// TODO Auto-generated method stub
				return false;
			}

			public boolean isRequestedSessionIdValid() {
				// TODO Auto-generated method stub
				return false;
			}

			public boolean isUserInRole(String arg0) {
				// TODO Auto-generated method stub
				return false;
			}

		}));
	}


}
