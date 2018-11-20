<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hall.jsp' starting page</title>
    <meta content="text/html" charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link type="text/css" rel="stylesheet" href="css/css_topBar.css">
	<link type="text/css" rel="stylesheet" href="css/css_hall.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/js_hall.js"></script>
  </head>
  
  <input type="hidden" id="user_session" value="${user.userAccount}">
  <body onload="init()">
  	<div class="topBar">
        <div class="w1200 clearfix">
            <div class="loginArea">
                <b>欢迎光临中国图书网&nbsp;请</b>
                <a href="login.jsp?redirect=hall" target="_blank" class="login">登录</a>
                <span>|</span>
                <a href="register.jsp" target="_blank" class="regist">注册</a>
            </div>
            <div class="webTool">
                <ul class="clearfix">
                    <li>
                        <div class="dt">
                            <a href="" target="_blank">购物车</a>
                        </div>
                    </li>
                    <li>
                        <div class="dt">
                            <a href="" target="_blank">我的订单</a>
                        </div>
                    </li>
                    <li class="drop">
                        <div class="dt">
                            <a href="" target="_blank">我的账户</a>
                            <b class="icon"></b>
                        </div>
                        <div class="dropLayer" style="width: 162px;">
                            <a href="" target="_blank">我的收藏夹</a>
                            <a href="" target="_blank">账户余额</a>
                            <a href="" target="_blank">我的优惠券</a>
                            <a href="" target="_blank">我的积分</a>
                            <a href="" target="_blank">收货地址</a>
                            <a href="" target="_blank">我的书评</a>
                            <a href="" target="_blank">我的消息</a>
                            <a href="" target="_blank">积分换券</a>
                        </div>
                    </li>
                    <li>
                        <div class="dt">
                            <a href="" target="_blank">帮助中心</a>
                            <!--<a href="javascript:void(0);" target="_blank">联系客服</a>-->
                            <!--<b class="icon"></b>-->
                        </div>
                        <!--<div class="dropLayer">
                            <a href="/question/default1.asp" target="_blank">帮助中心</a>
                        </div>-->
                    </li>

                    <li class="drop">
                        <div class="dt">
                            <a href="" target="_blank">手机中图</a>
                            <b class="icon"></b>
                        </div>
                        <div class="dropLayer" style="right: 0; left: initial; width: 164px; padding-bottom: 7px; padding-left: 5px;">
                            <div class="erweimaWrap">
                                <div class="erweima">
                                    <img src="" alt="中图网微博">

                                </div>
                                <div class="text">
                                    <b>扫一扫</b>
                                    <span>
                                    关注中图网<br>
                                    官方微博
                                </span>
                                </div>
                            </div>
                            <div class="erweimaWrap">
                                <div class="erweima">
                                    <img src="" alt="中图网微信">
                                </div>
                                <div class="text">
                                    <b>扫一扫</b>
                                    <span>
                                    关注中图网<br>
                                    微信公众号
                                </span>
                                </div>
                            </div>
                            <div class="erweimaWrap">
                                <div class="erweima">
                                    <img src="" alt="手机中图">
                                </div>
                                <div class="text">
                                    <b>手机中图</b>
                                    <span>
                                    进入中图网<br>
                                    手机触屏版
                                </span>
                                </div>
                            </div>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
    </div>
<!--  头部 包括logo，搜索栏，二维码 -->
    <div class="main_clearfix">
        <div class="logo">
            <a> <img src="img/logo0508.png"> </a>
        </div>
        <div class="box_serach_bot">
            <div class="zp-searchbar__box">
                <div class="box-1"><a id="item_var">书籍</a>
                    <div class="box-1-content">
                        <ul>
                            <li>书籍</li>
                            <li>出版社</li>
                            <li>作者</li>
                        </ul>
                    </div>
                </div>
                <input type="text" class="zp-searchbar__box_input" placeholder="请输入关键词,例如:十万个为什么，歌德等">
                <a href="javascript:;" class="zp-searchbox__button">搜索</a>
                <div class="calean_float"></div>
            </div>
            <div class="box_serach_bot_info">
            	<table class="box_serach_bot_info_table">
            		<tr class="box_serach_bot_info_tr">
            			<td id="box_serach_bot_info_title" class="box_serach_bot_info_title">
            				<a id="box_serach_bot_info_title_a" class="box_serach_bot_info_title_a"></a></td>
            			<td id="box_serach_bot_info_Id" class="box_serach_bot_info_Id">
            				<a id="box_serach_bot_info_id_a" class="box_serach_bot_info_id_a"></a></td>
            		</tr>
            	</table>
            	<table id="box_serach_bot_info_more"><tr class="box_serach_bot_info_tr"><td><a id="box_serach_bot_info_title_all" class="box_serach_bot_info_title_all" onclick="click_more()">点击查看更多</a></td></tr></table>
    			
            	
            			
            	
            </div>	
        </div>
        <div class="calean_float"></div>


    </div>
    <!--用户信息，标签-->
    <div class="zp-main-container">
        <div class="zp-main-container-biaoqian">
            <ul class="zp-jobNavigater-list">
                <li class="zp-jobNavigater-item-title"><span></span><a class="p-jobNavigater-item-title-a">图书分类</a></li>
                <li class="zp-jobNavigater-item">
                    <div class="category-info">
                        <h3>互联网IT</h3>
                        <p>
                            <a href="book/1.action" target="_blank">小说</a>
                            <a href="book/2.action" target="_blank">青春文学</a>
                            <a href="book/3.action" target="_blank">中国散文</a>
                            <a href="book/4.action" target="_blank">外国散文</a>
                            <a href="book/5.action" target="_blank">悬疑推理</a>
                            <a href="book/6.action" target="_blank">文学理论</a>
                            <a href="book/7.action" target="_blank">文集</a>
                            <a href="book/8.action" target="_blank">世界名著</a>
                        </p>
                    </div>
                </li>
                <li class="zp-jobNavigater-item">
                    <div class="category-info list-nanz">
                        <h3 class="category-name">
                            <a href="/books/socialscience/" class="ml-22" target="_blank">社科</a>
                        </h3>
                        <p class="c-category-list">
                            <a href="/kinder/37000000/" target="_blank">历史</a>
                            <a href="/kinder/61000000/" target="_blank">哲学/宗教</a>
                            <a href="/kinder/48000000/" target="_blank">社会科学</a>
                            <a href="/kinder/62000000/" target="_blank">政治军事 </a>
                            <a href="/kinder/14000000/" target="_blank">传记</a>
                            <a href="/kinder/52000000/" target="_blank">文化</a>
                            <a href="/kinder/23000000/" target="_blank">古籍</a>
                            <a href="/kinder/24000000/" target="_blank">管理</a>
                            <a href="/kinder/34000000/" target="_blank">经济</a>
                            <a href="/kinder/12000000/" target="_blank">成功励志</a>
                            <a href="/kinder/18000000/" target="_blank">法律</a>
                            <a href="/kinder/48210000/" target="_blank">语言文字</a>
                        </p>
                    </div>
                    <div class="menu-item" style="top: -147.35px; display: none;">

                    </div>
                </li>

                <li class="zp-jobNavigater-item">
                    <div class="category-info list-tz">
                        <h3 class="category-name">
                            <a href="/books/children/" class="ml-22" target="_blank">少儿</a>
                        </h3>
                        <p class="c-category-list">
                            <a href="/kinder/47350000/" target="_blank">中国儿童文学</a>
                            <a href="/kinder/47330000/" target="_blank">外国儿童文学</a>
                            <a href="/kinder/36000000/" target="_blank">科普读物</a>
                            <a href="/kinder/47220000/" target="_blank">绘本</a>
                            <a href="/kinder/47150000/" target="_blank">动漫/卡通</a>
                            <a href="/kinder/47250000/" target="_blank">幼儿启蒙</a>
                        </p>
                    </div>
                </li>
                <li class="zp-jobNavigater-item">
                    <div class="category-info list-ny">
                        <h3 class="category-name">
                            <a href="/books/art/" class="ml-22" target="_blank">艺术</a>
                        </h3>
                        <p class="c-category-list">
                            <a href="/kinder/57120000/" target="_blank">绘画</a>
                            <a href="/kinder/57130000/" target="_blank">书法篆刻</a>
                            <a href="/kinder/57110000/" target="_blank">艺术理论</a>
                            <a href="/kinder/57200000/" target="_blank">摄影</a>
                            <a href="/kinder/57210000/" target="_blank">音乐</a>
                        </p>
                    </div>
                </li>
                <li class="zp-jobNavigater-item">
                    <div class="category-info list-xb">
                        <h3 class="category-name">
                            <a href="/books/life/" class="ml-22" target="_blank">生活</a>
                        </h3>
                        <p class="c-category-list">
                            <a href="/kinder/43000000/" target="_blank">美食</a>
                            <a href="/kinder/11000000/" target="_blank">保健/心理健康</a>
                            <a href="/kinder/39000000/" target="_blank">旅游</a>
                            <a href="/kinder/29000000/" target="_blank">家庭教育</a>
                            <a href="/kinder/28000000/" target="_blank">家居休闲</a>
                        </p>
                    </div>
                </li>
                <li class="zp-jobNavigater-item">
                    <div class="category-info">
                        <h3 class="category-name">
                            <a href="/books/culture/" class="ml-22" target="_blank">文教</a>
                        </h3>
                        <p class="c-category-list" style="border-bottom:none;">
                            <a href="/kinder/63000000/">中小学教辅</a>
                            <a href="/kinder/51000000/">外语</a>
                            <a href="/kinder/31000000/">教材</a>
                            <a href="/kinder/56000000/">医学</a>
                            <a href="/kinder/27000000/">计算机</a>
                            <a href="/kinder/64000000/">自然科学</a>
                        </p>
                    </div>
                </li>
            </ul>
        </div>

        <div class="swiper-container">
            <div id="swiper-container-imgs">
                <ul>
                    <li><img src="../11-11bookshop/img/990360%20(1).jpg"></li>
                    <li><img src="../11-11bookshop/img/990360%20(2).jpg"></li>
                    <li><img src="../11-11bookshop/img/9528_ad990.jpg"></li>
                    <li><img src="../11-11bookshop/img/9529_ad990.jpg"></li>
                    <li><img src="../11-11bookshop/img/9525_ad990.jpg"></li>
                </ul>
                <div class="bannerdot float5">
                    <a href="javascript: void(0)" class="on">
                        <span>七万种图书|满99减50满199减100</span>
                    </a>
                    <a href="javascript: void(0)" class="">
                        <span>缅怀金庸先生</span></a>
                    <a href="javascript: void(0)" class="">
                        <span>中国秘密社会研究文丛</span>
                    </a>
                    <a href="javascript: void(0)" class="">
                        <span>阿历克斯历险记</span>
                    </a>
                    <a href="javascript: void(0)" class="">
                        <span>金元明人论杜甫</span>
                    </a>
                </div>
            </div>
            <div class="tabCon">
                <div class="hotBook">
                <div class="tabTit">
                    <a href="javascript: void(0)" class="">新品特惠</a>
                    <a href="javascript: void(0)" class="">本周精选</a>
                    <a href="javascript: void(0)" class="cur">新书速递</a>
                    <a href="javascript: void(0)" class="">读者热评</a>
                </div>
            </div>
                <div class="tabPanel">
                    <div class="tabItem cur">
                    <div class="mainEditor">
                        <div class="mainEditorInner">
                            <div class="mainCover">
                                <a>
                                    <img src="../11-11bookshop/img/s4663352.jpg" alt="洞灵小志 续志 补志-民国的聊斋 最后的搜神">
                                </a>
                            </div>
                            <div class="mainText">
                                <h2><a title="洞灵小志 续志 补志-民国的聊斋 最后的搜神">洞灵小志 续志 补志-民国的聊斋 最后的搜神</a></h2>
                                <div class="priceWrap">
                                    <span class="sellPrice">¥17.0</span>
                                    <span class="price">¥48.6</span>
                                </div>
                                <div class="startWrap">
                                    <b>35条评论</b>
                                </div>
                                <div class="mainFont">
                                    <p>
                                        民国京津文坛政坛活跃人物力作，《扪虱谈鬼录》作者栾保群点校，讲述多为20世纪二三十年代民间以及士大夫之间流传的各类奇闻异事。谈鬼说狐居多，间及公案游侠、海内异闻，诸如赶尸、移腐、接火、查花等湘粤奇俗，均首见于此书。故事多为作者亲闻亲历，异事多涉及近代名公名士，凶宅具体到北京的某一胡同、某一豪宅、某一饭庄，尤其令人感到近切。
                                    </p>
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="tabbook">
                        <ul class="clearfix">
                            <li>
                                <div class="Img">
                                    <a>
                                        <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                    </a>
                                </div>
                                <div class="name">
                                    <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                </div>
                                <div class="priceWrap2">
                                    <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                </div>
                            </li>
                            <li>
                                <div class="Img">
                                    <a>
                                        <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                    </a>
                                </div>
                                <div class="name">
                                    <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                </div>
                                <div class="priceWrap2">
                                    <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                </div>
                            </li>
                            <li>
                                <div class="Img">
                                    <a>
                                        <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                    </a>
                                </div>
                                <div class="name">
                                    <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                </div>
                                <div class="priceWrap2">
                                    <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                </div>
                            </li>
                            <li>
                                <div class="Img">
                                    <a>
                                        <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                    </a>
                                </div>
                                <div class="name">
                                    <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                </div>
                                <div class="priceWrap2">
                                    <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                </div>
                            </li>
                        </ul>

                    </div>
                </div>
                    <div class="tabItem" style="display: none">
                        <div class="mainEditor">
                            <div class="mainEditorInner">
                                <div class="mainCover">
                                    <a>
                                        <img src="../11-11bookshop/img/s4663352.jpg" alt="洞灵小志 续志 补志-民国的聊斋 最后的搜神">
                                    </a>
                                </div>
                                <div class="mainText">
                                    <h2><a title="洞灵小志 续志 补志-民国的聊斋 最后的搜神">洞灵小志 续志 补志-民国的聊斋 最后的搜神</a></h2>
                                    <div class="priceWrap">
                                        <span class="sellPrice">¥17.0</span>
                                        <span class="price">¥48.6</span>
                                    </div>
                                    <div class="startWrap">
                                        <b>35条评论</b>
                                    </div>
                                    <div class="mainFont">
                                        <p>
                                            民国京津文坛政坛活跃人物力作，《扪虱谈鬼录》作者栾保群点校，讲述多为20世纪二三十年代民间以及士大夫之间流传的各类奇闻异事。谈鬼说狐居多，间及公案游侠、海内异闻，诸如赶尸、移腐、接火、查花等湘粤奇俗，均首见于此书。故事多为作者亲闻亲历，异事多涉及近代名公名士，凶宅具体到北京的某一胡同、某一豪宅、某一饭庄，尤其令人感到近切。
                                        </p>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <div class="tabbook">
                            <ul class="clearfix">
                                <li>
                                    <div class="Img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="Img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="Img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="Img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                            </ul>

                        </div>
                    </div>
                    <div class="tabItem" style="display: none">
                        <div class="mainEditor">
                            <div class="mainEditorInner">
                                <div class="mainCover">
                                    <a>
                                        <img src="../11-11bookshop/img/s4663352.jpg" alt="洞灵小志 续志 补志-民国的聊斋 最后的搜神">
                                    </a>
                                </div>
                                <div class="mainText">
                                    <h2><a title="洞灵小志 续志 补志-民国的聊斋 最后的搜神">洞灵小志 续志 补志-民国的聊斋 最后的搜神</a></h2>
                                    <div class="priceWrap">
                                        <span class="sellPrice">¥17.0</span>
                                        <span class="price">¥48.6</span>
                                    </div>
                                    <div class="startWrap">
                                        <b>35条评论</b>
                                    </div>
                                    <div class="mainFont">
                                        <p>
                                            民国京津文坛政坛活跃人物力作，《扪虱谈鬼录》作者栾保群点校，讲述多为20世纪二三十年代民间以及士大夫之间流传的各类奇闻异事。谈鬼说狐居多，间及公案游侠、海内异闻，诸如赶尸、移腐、接火、查花等湘粤奇俗，均首见于此书。故事多为作者亲闻亲历，异事多涉及近代名公名士，凶宅具体到北京的某一胡同、某一豪宅、某一饭庄，尤其令人感到近切。
                                        </p>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <div class="tabbook">
                            <ul class="clearfix">
                                <li>
                                    <div class="Img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="Img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="Img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="Img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                            </ul>

                        </div>
                    </div>
                    <div class="tabItem" style="display: none">
                        <div class="mainEditor">
                            <div class="mainEditorInner">
                                <div class="mainCover">
                                    <a>
                                        <img src="../11-11bookshop/img/s4663352.jpg" alt="洞灵小志 续志 补志-民国的聊斋 最后的搜神">
                                    </a>
                                </div>
                                <div class="mainText">
                                    <h2><a title="洞灵小志 续志 补志-民国的聊斋 最后的搜神">洞灵小志 续志 补志-民国的聊斋 最后的搜神</a></h2>
                                    <div class="priceWrap">
                                        <span class="sellPrice">¥17.0</span>
                                        <span class="price">¥48.6</span>
                                    </div>
                                    <div class="startWrap">
                                        <b>35条评论</b>
                                    </div>
                                    <div class="mainFont">
                                        <p>
                                            民国京津文坛政坛活跃人物力作，《扪虱谈鬼录》作者栾保群点校，讲述多为20世纪二三十年代民间以及士大夫之间流传的各类奇闻异事。谈鬼说狐居多，间及公案游侠、海内异闻，诸如赶尸、移腐、接火、查花等湘粤奇俗，均首见于此书。故事多为作者亲闻亲历，异事多涉及近代名公名士，凶宅具体到北京的某一胡同、某一豪宅、某一饭庄，尤其令人感到近切。
                                        </p>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <div class="tabbook">
                            <ul class="clearfix">
                                <li>
                                    <div class="img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="img">
                                        <a>
                                            <img src="../11-11bookshop/img/s3971549.jpg" alt="生命的曲线/螺旋结构在艺术与科学中的经典应用">
                                        </a>
                                    </div>
                                    <div class="name">
                                        <a title="历史的边角:小人物与北京/民国小人物留下珍贵侧影">历史的边角:小人物与北京/民国小人物留下珍贵侧影</a>
                                    </div>
                                    <div class="priceWrap2">
                                        <span class="sellPrice">¥14.7</span><span class="price">¥35.0</span>
                                    </div>
                                </li>
                            </ul>

                        </div>
                    </div>

                </div>
            </div>
            <div class="hot_sale">
                <div class="hot_saleInner">
                    <div class="hot_saleInner">
                        <div class="hotTitle">
                            <h2>图书畅销榜</h2>
                            <a href="/24hour/" target="_blank">更多&gt;&gt;</a>
                        </div>
                        <div class="hotNav">
                            <div class="navDot">
                                <ul style="left: 0px;">
                                    <li class=""><a href="/24hour//" target="_blank">总榜</a></li>
                                    <li class=""><a href="/24hour/wenxue/" target="_blank">文学</a></li>
                                    <li class="cur"><a href="/24hour/sheke/" target="_blank">社科</a></li>
                                    <li class=""><a href="/24hour/shaoer/" target="_blank">少儿</a></li>

                                </ul>
                            </div>

                            <div class="hotcon">
                                <ul>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>
                                    <li><a>01</a><span></span><a>性的问题</a></li>

                                </ul>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>


    </div>
</body>
</html>
