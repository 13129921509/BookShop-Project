<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    <meta content="text/html" charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>登录</title>
    <link rel="stylesheet" type="text/css" href="http://localhost:7890/11-11bookshop/css/css_login.css">
    <script type="text/javascript" src="http://localhost:7890/11-11bookshop/js/jquery.min.js"></script>
    <script type="text/javascript" src="../11-11bookshop/js/js_login.js"></script>
  </head>
  
  <body onload="init()">
  
    <div class="loginHead">
        <div class="logoBar">
            <div class="logoBarInner">
                <div class="logo">
                    <a> <img src="http://localhost:7890/11-11bookshop/img/logo0508.png"> </a>
                </div>
                <div class="ad">
                    <span class="zhengbang">正版好图书</span>
                    <span class="liujiu">全场满69包邮</span>
                    <span class="yizhe">特价书一折起</span>
                </div>
            </div>
        </div>
    </div>


    <div class="loginWrap">
        <div class="w1000">
            <div class="loginForm">
            <form action="user/login.action" id="forms">
                <div class="loginTitle">
                    <b>用户登录</b>
                </div>
                <div class="loginInputWrap">
                    <div class="loginusername">
                        <a>用户名:</a>
                        <input placeholder="用户名/邮箱/已验证手机" name="userName" class="inputusername" type="text"/>
                    </div>
                    <a id="msg_username"></a>
                    <div class="loginpassword">
                        <a>密码:</a>
                        <input placeholder="密码" name="password" class="inputpassword" type="text"/>
                    </div>
                    <a id="msg_password"></a>
                    <div class="labInpWr">
                        <div class="logincodewrap">
                        <a>验证码:</a>
                        <input placeholder="图片验证码" class="inputyzm" type="text"/>
                    </div>
                        <div class="LoginYzm">
                        <img src="http://localhost:7890/11-11bookshop/img/YzmCode.jpg" alt="验证码">
                    </div>
                        <div class="changeimgCoad"><a>换一换</a></div>
                    </div>
                    <a id="msg_yzm"></a>
                </div>
                <div class="loginButton">
                    <div class="loginButtonInner">
                        <a class="loginEnter">登录</a>
                    </div>
                </div>
                <div class="otherLink">
                    <a class="fogotPas">忘记密码</a>
                    <a class="newUserReg" href="register.jsp">新用户注册>></a>
                </div>
            </form>
            </div>
        </div>

    </div>

    <div class="loginRegistFoot">
        <div class="footNav">
            <ul>
                <li><a href="/adservice/about.asp" target="_blank">本站简介</a></li>
                <li><a href="/adservice/about.asp" target="_blank">帮助中心</a></li>
                <li><a href="/adservice/about2.asp" target="_blank">联系我们</a></li>
                <li style="background:no-repeat;"><a href="/adservice/bookshr.asp" target="_blank">招聘英才</a></li>
            </ul>
        </div>

    </div>
  </body>
  <input type="hidden" id="redirect" value="<%=request.getParameter("redirect")%>">
  </html>
