<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'book_list.jsp' starting page</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript" src="../11-11bookshop/js/jquery.min.js"></script>
    <link type="text/css" rel="stylesheet" id="css_book_list" href="../11-11bookshop/css/css_book_list.css">
  	<script type="text/javascript" src="../11-11bookshop/js/js_book_list.js"></script>
  	
  </head>
<body>
<input type="hidden" id="user_session" value="${user.userAccount}">
<div class="topBar">
        <div class="w1200 clearfix">
            <div class="loginArea">
                <b>欢迎光临中国图书网&nbsp;请</b>
                <a href="login.jsp?redirect=list_book-${category}" target="_blank" class="login">登录</a>
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


<div class="main_clearfix">
        <div class="logo">
            <a> <img src="../11-11bookshop/img/logo0508.png"> </a>
        </div>
        <div class="box_serach_bot">
            <div class="zp-searchbar__box" style="margin-left: 250px;">
                <div class="box-1"><a id="item_var">书籍</a>
                    <div class="box-1-content" style="display: none;">
                        <ul style="width: 100%;margin: 0 auto;padding: 0;">
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
            <div class="box_serach_bot_info" style="display: block;margin:auto;" >
            	<table class="box_serach_bot_info_table">
            	<tr class="box_serach_bot_info_tr">
            			<td id="box_serach_bot_info_title" class="box_serach_bot_info_title">
            				</td>
            			<td id="box_serach_bot_info_Id" class="box_serach_bot_info_Id"></td>
            			</tr></table>
            	<a id="box_serach_bot_info_title_all" class="box_serach_bot_info_title_all" href="show/318.action">点击查看更多</a>
            			
            	
            </div>	
        </div>
        <div class="calean_float"></div>


    </div>
<div class="topdiv">
<div  class="adress"><a href="http://www.divcss5.com/shili/s731.shtml">中国图书网</a> 》<a href=""> 全部分类</a>》<a href="#">小说</a></div>
    <div class="rudier">
        <div class="selectlist">
            <div class="selectlistdiv">分类：</div>
            <ur>
                <li><a href="">社会（9326）</a> </li>
                <li><a href="">侦探/悬疑/推理(4392)</a> </li>
                <li><a href="">历史(2131)</a> </li>
                <li><a href="">科幻(1414)</a> </li>
                <li><a href="">中国古典小说(1268)</a> </li>
                <li><a href="">军事(931)</a> </li>
                <li><a href="">官场（807）</a> </li>
                <li><a href="">惊悚/恐怖(795)</a> </li>
                <li><a href="">惊悚/恐怖(795)</a> </li>
                <li><a href="">惊悚/恐怖(795)</a> </li>
                <li><a href="">惊悚/恐怖(795)</a> </li>
                <li><a href="">惊悚/恐怖(795)</a> </li>
                <li><a href="">惊悚/恐怖(795)</a> </li>
                <li><a href="">惊悚/恐怖(795)</a> </li>
                <li><a href="">惊悚/恐怖(795)</a> </li>
                <li><a href="">惊悚/恐怖(795)</a> </li>
                <li><a href="">惊悚/恐怖(795)</a> </li>
            </ur>
            <div class="icon_down"><a> <span class="icon_dwon2"></span><a id="icon_dwon2_a">展开</a></a></div>
        </div>
        <div class="selectlist" id="selectlist_sell">
            <div class="selectlistdiv">售价：</div>
            <ur>
                <li><a onclick="click__tiaojian_sell(this,'sell')">0-5元</a> </li>
                <li><a onclick="click__tiaojian_sell(this,'sell')" value="5-10元">5-10元</a> </li>
                <li><a onclick="click__tiaojian_sell(this,'sell')" value="10-20元">10-20元</a> </li>
                <li><a onclick="click__tiaojian_sell(this,'sell')" value="20-50元">20-50元</a> </li>
                <li><a onclick="click__tiaojian_sell(this,'sell')" value="20-100元">50-100元</a> </li>
                <li><a onclick="click__tiaojian_sell(this,'sell')" value="100元以上">100元以上</a> </li>
            </ur>
            <div class="f1">
                <i>￥</i>
                <input type="text" class="input-txt" id="textstartprice" autocomplete="off" value="">
                <em>---</em>
                <i>￥</i>
                <input type="text" class="input-txt" id="textendprice" autocomplete="off" value="">
                <a id="btnpriceSerch" href="javascript:void(0);">确定</a>
            </div>
        </div>
        <div class="selectlist" id="selectlist_discount">
            <div class="selectlistdiv">折扣：</div>
            <ur>
                <li><a onclick="click__tiaojian_sell(this,'discount')">3折以下</a> </li>
                <li><a onclick="click__tiaojian_sell(this,'discount')">3-4折</a> </li>
                <li><a onclick="click__tiaojian_sell(this,'discount')">4-5折</a> </li>
                <li><a onclick="click__tiaojian_sell(this,'discount')">5-7折</a> </li>
                <li><a onclick="click__tiaojian_sell(this,'discount')">7折以上</a> </li>
            </ur>
        </div>
    </div>
<div class="centerdiv">
    <div class="booklist">
    <ul>
        <li onmouseover="this.className='s1'" style="list-style: none;height: 250px;" onmouseout="this.className='s2'" class="s2">
            <div class="cover">
                <a href="">
                    <img class="lazyImg" src="../11-11bookshop/Image/s6459029.jpg">
                </a>
            </div>
            <div>
                <div class="name"><h2><a href="#"> 脂砚斋重评石头记</a></h2></div>
                <div><a href="#"  class="author">曹雪芹</a>  <i>/</i><span class="bookPublishTime">2006-10-01 </span><a href="#" class="bookPubliser"> 天津古籍出版社</a></div>
                <div class="priceworp"><span class="sellprice"> ¥98.7</span><a class="bookDiscount">(2.1折)</a>   定价:<del class="bookOrignalPrice">¥470.0 </del>  </div>
                <a href="#" style="background: #e60000; height: 20px; display:inline-block   ">满199减100</a>
                <p class="recoLagu">曹雪芹留给后人的《石头记》仅八十回，但带有脂砚斋批语。这部书看似不完整，实际上在前八十回中已交待了八十回后的主要情节和结局，已形成完整的故事。《石头记》与其他作品不同的是：后面的故事内容，作者只馏下一些线索、隐词、批语，让读者自己去思考并完成。由于《石头记》的这一特点，便出现了两种现象：第一种是续书现象：现存流行的百二十回《红楼梦》中的后四十回，即是后人补缀的，原误认为是出刍高鹗之手，其实高鹗是补订者，非续书者，到现在为止，续书人还无</p>
                <div class="oparateButton">
                    <a class="buyButton" href="#" > 加入购物车</a>
                    <a class="collectBtn"  href="#">收藏</a>
                </div>

            </div>
        </li>
     
        </ul>
        
</div ></div>
<div class="fenye">
			
            <ul>
            	<li><div class="pre"><a id="but_pre" onclick="but_pre()">上一页</a></div></li>
                <li><a href="#"> 1</a> </li>
                <li><a href="#"> 2</a> </li>
                <li><a href="#"> 3</a> </li>
                <li><a href="#"> 4</a> </li>
                <li><div class="next"><a id="but_next" onclick="but_next()">下一页</a></div></li>

            </ul>
            <div class="p-skip">
                <em>共<b id="pageCount"></b>
                页 到第</em>
                <input  class="yeshu"  type="text"><em>页</em>
                <a href="#" class="button1">确定</a>
            </div>
        </div>
   
</div>
<input type="hidden" value="1" id="pageNum">
<input type="hidden" value="${category}" id="book_category">
</body>
</html>
