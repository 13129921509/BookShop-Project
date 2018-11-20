<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta content="text/html" charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 	<title>注册</title>
    <script type="text/javascript" src="../11-11bookshop/js/jquery.min.js"></script>
    <script type="text/javascript" src="../11-11bookshop/js/js_register.js"></script>

    <link rel="stylesheet" type="text/css" href="../11-11bookshop/css/css_register.css">
  </head>
  
 <body onload="init()">
<!-- 头部（logo，修饰） -->
<div class="loginHead">
    <div class="logoBar">
        <div class="logoBarInner">
            <div class="logo">
                <a> <img src="../11-11bookshop/Image/logo0508.png"> </a>
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
            <div class="loginTitle">
                <b>用户注册</b>
                <span>注册即送19减5优惠券，首单成功后再返一张49减10五折以下图书优惠券</span>
                <div class="loginhref">已有账号<a href="login.jsp">请登录</a></div>
            </div>
            <div class="loginInputWrap">
                <div class="loginusername">
                    <a>手机号码:</a>
                    <input placeholder="请输入你的常用手机号码" id="inputusernameid" type="text" onfocus="show(this.id)" onblur="check(this.id)"/>
                </div>
                <div class="loginusernameerror" id="loginusernameerror" data-defaultmeg="请输入常用手机号码">
                </div>
                <div class="loginpassword">
                    <a>设置密码:</a>
                    <input placeholder="请输入密码"  class="inputpassword" id="inputpasswordid" type="text" onfocus="showPassWord()" onblur="checkPassWord()"/>
                </div>
                <div class="loginpasswroderror" id="loginpasswroderrorid" data-defaultmeg="请输入密码">
                </div>
                <div class="loginpassword">
                    <a>确认密码:</a>
                    <input placeholder="请再次输入密码"  class="inputpassword" id="inputRepasswordid"type="text" onfocus="showRePassWord()" onblur="checkRePassWord()"/>
                </div>
                <div class="loginrepasswrodeerror" id="loginrepasswrodeerrorid" data-defaultmeg="请再次输入密码">
                </div>
                <div class="labInpWr">
                    <div class="logincodewrap">
                        <a>验证码:</a>
                        <input placeholder="图片验证码" class="inputyzm"  id="inputyzmid" type="text" onfocus="showYanZhengMa()" onblur="checkYanZhenMa()"/>
                    </div>
                    <div class="LoginYzm">
                        <img src="Image/YzmCode.jpg" alt="验证码">
                    </div>
                    <div class="changeImgCoad"><a>换一换</a></div>
                </div>
                <div class="loginyanzhenerror" id="loginyanzhenerrorid"  data-defaultmeg="请输入验证码">
                </div>
                <div class="loginphone">
                    <div class="labelphone">
                        <a>手机验证码：</a>
                        <input placeholder="请输入验证码" class="phone" id="Phoneid" type="textg" onfocus="showPhone()" onblur="checkPhone()" />
                        <div class="vertical">
                            获取验证码</div>
                    </div>
                </div>
                <div class="loginphoneerror" id="loginphoneerrorid" data-defaultmeg="请输入手机验证码">
                </div>
            </div>
            <div class="loginButton">
                <div class="loginButtonInner">
                    <a class="loginEnter" onclick="reonclick()">注册</a>
                </div>
            </div>
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
</html>
