<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AdvancedSearch.jsp' starting page</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript" src="../11-11bookshop/js/js_hall.js"></script>
		<link rel="stylesheet" type="text/css" href="../11-11bookshop/css/css_hall.css">
		<link rel="stylesheet" type="text/css" href="../11-11bookshop/css/css_view.css">
		<script type="text/javascript" src="../11-11bookshop/js/jquery.min.js"></script>
		<script type="text/javascript" src="../11-11bookshop/js/js_view.js"></script>
		<link rel="stylesheet" type="text/css" href="../11-11bookshop/css/AdvancedSearch.css">
  </head>
  
<body>
		<div class="main_clearfix">
    <div class="logo">
        <a> <img src="../11-11bookshop/img/logo0508.png"> </a>
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
        <div class="zp-main-container">
            <div class="zp-main-container-biaoqian" style="padding: 0px;">
                <ul class="zp-jobNavigater-list2">
                    <li class="zp-jobNavigater-item-title2"><span></span><a class="p-jobNavigater-item-title-a">图书分类</a></li>
                   <div class="zp-jobNavigater-item-index">
                    <li class="zp-jobNavigater-item" style="display:none">
                        <div class="category-info">
                            <h3>互联网IT</h3>
                            <p>
                                <a href="/kinder/54000000/" target="_blank">小说</a>
                                <a href="/kinder/46000000/" target="_blank">青春文学</a>
                                <a href="/kinder/53210000/" target="_blank">中国散文</a>
                                <a href="/kinder/53140000/" target="_blank">外国散文</a>
                                <a href="/kinder/54290000/" target="_blank">悬疑推理</a>
                                <a href="/kinder/53160000/" target="_blank">文学理论</a>
                                <a href="/kinder/53150000/" target="_blank">文集</a>
                                <a href="/kinder/54330000/" target="_blank">世界名著</a>
                            </p>
                        </div>
                    </li>
                    <li class="zp-jobNavigater-item" style="display:none">
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

                    <li class="zp-jobNavigater-item" style="display:none">
                        <div class="category-info">
                            <h3>互联网IT</h3>
                            <p>
                                <a href="/kinder/54000000/" target="_blank">小说</a>
                                <a href="/kinder/46000000/" target="_blank">青春文学</a>
                                <a href="/kinder/53210000/" target="_blank">中国散文</a>
                                <a href="/kinder/53140000/" target="_blank">外国散文</a>
                                <a href="/kinder/54290000/" target="_blank">悬疑推理</a>
                                <a href="/kinder/53160000/" target="_blank">文学理论</a>
                                <a href="/kinder/53150000/" target="_blank">文集</a>
                                <a href="/kinder/54330000/" target="_blank">世界名著</a>
                            </p>
                        </div>
                    </li>
                    <li class="zp-jobNavigater-item" style="display:none">
                        <div class="category-info">
                            <h3>互联网IT</h3>
                            <p>
                                <a href="/kinder/54000000/" target="_blank">小说</a>
                                <a href="/kinder/46000000/" target="_blank">青春文学</a>
                                <a href="/kinder/53210000/" target="_blank">中国散文</a>
                                <a href="/kinder/53140000/" target="_blank">外国散文</a>
                                <a href="/kinder/54290000/" target="_blank">悬疑推理</a>
                                <a href="/kinder/53160000/" target="_blank">文学理论</a>
                                <a href="/kinder/53150000/" target="_blank">文集</a>
                                <a href="/kinder/54330000/" target="_blank">世界名著</a>
                            </p>
                        </div>
                    </li>
                    <li class="zp-jobNavigater-item" style="display:none">
                        <div class="category-info">
                            <h3>互联网IT</h3>
                            <p>
                                <a href="/kinder/54000000/" target="_blank">小说</a>
                                <a href="/kinder/46000000/" target="_blank">青春文学</a>
                                <a href="/kinder/53210000/" target="_blank">中国散文</a>
                                <a href="/kinder/53140000/" target="_blank">外国散文</a>
                                <a href="/kinder/54290000/" target="_blank">悬疑推理</a>
                                <a href="/kinder/53160000/" target="_blank">文学理论</a>
                                <a href="/kinder/53150000/" target="_blank">文集</a>
                                <a href="/kinder/54330000/" target="_blank">世界名著</a>
                            </p>
                        </div>
                    </li>
                    <li class="zp-jobNavigater-item" style="display:none">
                        <div class="category-info">
                            <h3>互联网IT</h3>
                            <p>
                                <a href="/kinder/54000000/" target="_blank">小说</a>
                                <a href="/kinder/46000000/" target="_blank">青春文学</a>
                                <a href="/kinder/53210000/" target="_blank">中国散文</a>
                                <a href="/kinder/53140000/" target="_blank">外国散文</a>
                                <a href="/kinder/54290000/" target="_blank">悬疑推理</a>
                                <a href="/kinder/53160000/" target="_blank">文学理论</a>
                                <a href="/kinder/53150000/" target="_blank">文集</a>
                                <a href="/kinder/54330000/" target="_blank">世界名著</a>
                            </p>
                        </div>
                    </li>
                   </div>
                </ul>
            </div>
            <div class="specil_category">
                <ul>
                    <li class=""><a href="/" target="_parent">首页</a></li>
                    <li><a href="http://tuan.bookschina.com/" target="_blank">淘书团</a></li>
                    <li><a href="/24hour/" target="_blank">畅销榜</a></li>
                    <li><a href="/books/newinput/" target="_blank">新上架</a></li>
                    <li><a href="/books/9kuai9/" target="_blank">9块9包邮</a></li>
                    <li><a href="/books/publish/" target="_blank">出版社浏览</a></li>
                    <li><a href="/wenwan/" target="_blank">闲情雅趣</a></li>
                    <li><a href="http://pifa.bookschina.com/" target="_blank">批发</a></li>
                </ul>
            </div>
        </div>
    </div>
		
           <div class="center">
           	<div class="center-inner">
           		<div class="center_item">
           			<a>书名</a><input type="text" />
           		</div>
           		
           		<div class="center_item">
           			<a>作者</a><input type="text" />
           		</div>
           		
           		<div class="center_item">
           			<a>出版社</a><input type="text" />
           		</div>
           		
           		<div class="center_item">
           			<a>ISBN</a><input type="text" />
           		</div>
           		
           		<div class="center_item">
           			<a>折扣</a><input type="text" />
           		</div>
           		
           		<div class="center_item">
           			<a>价格</a>
           			<div class="input2">
           				<input type="text" name="discountStart" ng-pattern="/^[0-9]+([.]{1}[0-9]+){0,1}$/" ng-model="vm.param.discountStart" style="width: 81px;" class="ng-pristine ng-valid ng-empty ng-valid-pattern ng-touched">
           				-
           				<input type="text" name="priceEnd" ng-pattern="/^[0-9]+([.]{1}[0-9]+){0,1}$/" ng-model="vm.param.discountEnd" style="width: 81px;" class="ng-pristine ng-valid ng-empty ng-valid-pattern ng-touched">
           			</div>
           		</div>
           		
           		<div class="center_item">
           			<a>出版时间</a>
           			<div class="input2">
           				<input type="text" name="discountStart" ng-pattern="/^[0-9]+([.]{1}[0-9]+){0,1}$/" ng-model="vm.param.discountStart" style="width: 81px;" class="ng-pristine ng-valid ng-empty ng-valid-pattern ng-touched">
           				-
           				<input type="text" name="priceEnd" ng-pattern="/^[0-9]+([.]{1}[0-9]+){0,1}$/" ng-model="vm.param.discountEnd" style="width: 81px;" class="ng-pristine ng-valid ng-empty ng-valid-pattern ng-touched">
           			</div>
           		</div>
           	</div>
           		
           	<div class="center_item">
           		<div class="center_item_bu2">
           		<input type="button" value="搜索"></input>
           		<input type="button" value="重置"></input></div>
           	</div>
           </div>
	</body>
</html>
