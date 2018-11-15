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
	<script type="text/javascript" src="../11-11bookshop/js/js_hall.js"></script>
    <link type="text/css" rel="stylesheet" href="../11-11bookshop/css/css_book_list.css">
  	<script type="text/javascript" src="../11-11bookshop/js/js_book_list.js"></script>
  </head>
  <body onload="init()">
<div class="main_clearfix">
    <div class="logo">
        <a> <img src="../11-11bookshop/Image/logo0508.png"> </a>
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
            <div class="icon_down"><a href=""> <span class="icon_dwon2"></span>展开</a></div>
        </div>
        <div class="selectlist">
            <div class="selectlistdiv">售价：</div>
            <ur>
                <li><a href="">0-5元126）</a> </li>
                <li><a href="">5-10元(2686)</a> </li>
                <li><a href="">10-20元(18275)</a> </li>
                <li><a href="">20-50(16851)</a> </li>
                <li><a href="">20-100元(1070)</a> </li>
                <li><a href="">100元以上(549)</a> </li>
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
        <div class="selectlist">
            <div class="selectlistdiv">折扣：</div>
            <ur>
                <li><a href="">3折以下（343）</a> </li>
                <li><a href="">3-4折(2468)</a> </li>
                <li><a href="">4-53折(10546)</a> </li>
                <li><a href="">5-7折(20031)</a> </li>
                <li><a href="">7折以上(6169)</a> </li>
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
            	<li><div class="next"><a id="but_pre" onclick="but_pre()">上一页</a></div></li>
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
