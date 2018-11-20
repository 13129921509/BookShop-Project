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
	<title>详细界面</title>
    <link rel="stylesheet" type="text/css" href="../11-11bookshop/css/css_hall.css">
    <link rel="stylesheet" type="text/css" href="../11-11bookshop/css/css_view.css">
    <script type="text/javascript" src="../11-11bookshop/js/jquery.min.js"></script>
    <script type="text/javascript" src="../11-11bookshop/js/js_view.js"></script>

  </head>
  <input type="hidden" id="bookId" value="<%=request.getParameter("index")%>">
  <body onload="init()">
    <!--/* 里面保括logo，搜索，图书分类，导航 */-->
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
            <div class="zp-main-container-biaoqian">
                <ul class="zp-jobNavigater-list2">
                    <li class="zp-jobNavigater-item-title2"><span></span><a class="p-jobNavigater-item-title-a">图书分类</a></li>
                   <div class="zp-jobNavigater-item-index">
                    <li class="zp-jobNavigater-item">
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
                    <li class="zp-jobNavigater-item">
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
                    <li class="zp-jobNavigater-item">
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
                    <li class="zp-jobNavigater-item">
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
    <div class="crumbsNav clearfix" style="height: 30px;"></div>
    <div class="w1200">
		<div class="bookInfoWrap clearfix">
			<div class="bookDetaiWrap">
				<div class="bookCover">
					<div class="coverImg">
						<img src="../11-11bookshop/img/B6549356.jpg" id="popbigpic" alt="《教父》三部曲全译本-全3册" />
					</div>
				</div>
				<div class="bookInfo">
					<div class="padLeft10">
                            <h1>《教父》三部曲全译本-全3册</h1>
                            
                            <p class="recomand">豆瓣8.8分，全新译本，一字未删，完整还原教父每句话的智慧、每个动作的深意。出版以来销量迅猛破两千万册，成为出版史上的奇迹。</p>
                            
                            <div class="author"><span>作者：</span><a href="/Books/allbook/allauthor.asp?stype=author&amp;sbook=[美]马里奥·普佐 著" target="_blank">[美]马里奥·普佐 著</a></div>
                            
                            <div class="publisher"><span>出版社：</span><a href="/publish/5399/" target="_blank">江苏文艺出版社</a><span>出版时间：</span><i>2014-04-01</i></div>
                            

                            <div class="otherInfor">
                                
                                <span>开本：</span>
                                <em>32开</em>
                                
                                <span>页数：</span>
                                <i>1472</i>
                                
                            </div>

                            <div class="sort"><span>本类榜单：</span><a href="/24hour/54000000/" target="_blank">小说销量榜</a></div>
                       </div>
					<div class="priceWrap">
						<span class="sellPriceTit">中 图 价:</span>
						<span class="sellPrice"><i>¥</i>91.7</span>
						<span class="discount">(6.5折)</span>
						<span class="priceTit">定价:</span>
						<del class="price">¥141.0 </del>
						<a href="/RegUser/login.aspx?url=/6549356.htm" target="_blank">登录后可看到会员价</a>
					</div>
					<div class="oparateButton clearfix">
                            
                            <a href="javascript:void(0);" onclick="window.open('/shopcar/shoppingcart_add.aspx?book_id=6549356');" class="buyButton">加入购物车</a>
                            
                            <a href="javascript:frAdd('6549356');" class="collectBtn">收藏</a>
                            
                            <div class="freightPolicyWrap">
                                <span class="freightTit">免运费政策<i class="icon"></i></span>
                            </div>
                        </div>
                    <div class="buyTip">
                        <span>温馨提示：</span>5折以下图书主要为出版社尾货，大部分为全新，个别图书品相8-9成新、切口
                        <br>
                        有划线标记、光盘等附件不全
                    </div>
				</div>
			</div>
            <div class="fiveStartWrap">
                <div class="fiveStart">
                    <div class="fiveStartTit">
                        <span>本类五星书</span>
                    </div>
                    <div class="fiveStartCon">
                        <ul>
                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
		</div>

    </div>
    <div class="w1200">
        <div class="bookMainCon clearfix">
            <div class="fiveStartWrap">
                <div class="fiveStart">
                    <div class="fiveStartTit">
                        <span>本类五星书</span>
                    </div>
                    <div class="fiveStartCon">
                        <ul>
                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>

                            <li class="">
                                <p>曼妙“菱窠”李劼人及其“成都清明上河图”秘境</p>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
            <div class="bookRight">
                <div class="otherBuyWrap">
                    <div class="tit">
                        <span>买过本商品的人还买了</span>
                    </div>
                    <div class="con">
                        <div class="conanimate">
                            <ul>
                                <li>
                                    <div class="cover">
                                    <a href="/5579045.htm" target="_blank" title="尼采大传">
                                        <img src="../11-11bookshop/img/s5579045.jpg" alt="尼采大传" data-original="http://image31.bookschina.com/2018/zuo/7/s5579045.jpg" class="lazyImg">
                                    </a>
                                </div>

                                    <div class="infor">
                                    <h3 class="name">
                                        <a href="/5579045.htm" title="尼采大传">尼采大传</a>
                                    </h3>
                                    <div class="author"><span>[法]哈列维著</span></div>
                                    <div class="priceWrap-02">
                                        <span class="sellPrice">¥17.1</span>
                                        <del class="price">¥39.8</del>
                                    </div>
                                </div>
                                </li>
                                <li>
                                    <div class="cover">
                                        <a href="/5579045.htm" target="_blank" title="尼采大传">
                                            <img src="../11-11bookshop/img/s5579045.jpg" alt="尼采大传" data-original="http://image31.bookschina.com/2018/zuo/7/s5579045.jpg" class="lazyImg">
                                        </a>
                                    </div>

                                    <div class="infor">
                                        <h3 class="name">
                                            <a href="/5579045.htm" title="尼采大传">尼采大传</a>
                                        </h3>
                                        <div class="author"><span>[法]哈列维著</span></div>
                                        <div class="priceWrap-02">
                                            <span class="sellPrice">¥17.1</span>
                                            <del class="price">¥39.8</del>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="cover">
                                        <a href="/5579045.htm" target="_blank" title="尼采大传">
                                            <img src="../11-11bookshop/img/s5579045.jpg" alt="尼采大传" data-original="http://image31.bookschina.com/2018/zuo/7/s5579045.jpg" class="lazyImg">
                                        </a>
                                    </div>

                                    <div class="infor">
                                        <h3 class="name">
                                            <a href="/5579045.htm" title="尼采大传">尼采大传</a>
                                        </h3>
                                        <div class="author"><span>[法]哈列维著</span></div>
                                        <div class="priceWrap-02">
                                            <span class="sellPrice">¥17.1</span>
                                            <del class="price">¥39.8</del>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="cover">
                                        <a href="/5579045.htm" target="_blank" title="尼采大传">
                                            <img src="../11-11bookshop/img/s5579045.jpg" alt="尼采大传" data-original="http://image31.bookschina.com/2018/zuo/7/s5579045.jpg" class="lazyImg">
                                        </a>
                                    </div>

                                    <div class="infor">
                                        <h3 class="name">
                                            <a href="/5579045.htm" title="尼采大传">尼采大传</a>
                                        </h3>
                                        <div class="author"><span>[法]哈列维著</span></div>
                                        <div class="priceWrap-02">
                                            <span class="sellPrice">¥17.1</span>
                                            <del class="price">¥39.8</del>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="cover">
                                        <a href="/5579045.htm" target="_blank" title="尼采大传">
                                            <img src="../11-11bookshop/img/s5579045.jpg" alt="尼采大传" data-original="http://image31.bookschina.com/2018/zuo/7/s5579045.jpg" class="lazyImg">
                                        </a>
                                    </div>

                                    <div class="infor">
                                        <h3 class="name">
                                            <a href="/5579045.htm" title="尼采大传">尼采大传</a>
                                        </h3>
                                        <div class="author"><span>[法]哈列维著</span></div>
                                        <div class="priceWrap-02">
                                            <span class="sellPrice">¥17.1</span>
                                            <del class="price">¥39.8</del>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="tabBox" id="tabBox">
                    <div class="tabTitPanel">
                        <div class="shadow clearfix">
                            <ul>
                                <li class="current"><a href="#tabBookDetail"><span>商品详情</span></a></li>
                                <li class=""><a href="#tabookReco"><span>商品评论(0条)</span><input type="hidden" id="hidTotalCount" value="0"><input type="hidden" id="hidBookId" value="6445044"></a></li>
                            </ul>
                            <div class="oparaBookBut">
                                <span>中图价:¥9.8</span>
                                <a href="javascript:void(0);" onclick="window.open('/shopcar/shoppingcart_add.aspx?book_id=6445044');" class="buyButton">加入购物车</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tabConPanel">
                    <div class="tabCon tabBookDetail clearfix">
                        <div class="tabConRight">
                            <div class="tabconNav" id="tabconNav">
                                <ul>
                                    <li class="current"><a href="#copyrightInfor">版权信息<span class="icon"></span></a></li>



                                    <li class=""><a href="#specialist">本书特色<span class="icon"></span></a></li>

                                    <li><a href="#brief">内容简介<span class="icon"></span></a></li>

                                    <li class=""><a href="#catalog">目录<span class="icon"></span></a></li>

                                    <li class=""><a href="#zuozhejianjie">作者简介<span class="icon"></span></a></li>

                                </ul>
                            </div>
                        </div>
                        <div class="tabConLeft">
                            <div class="copyrightInfor" id="copyrightInfor">
                                <div class="tit">
                                    <span>孤独与大胆:胡适自述 版权信息</span>
                                </div>
                                <ul>
                                    <li>ISBN：9787506070904</li>
                                    <li>条形码：9787506070904 ; 978-7-5060-7090-4</li>
                                    <li>装帧：简裝本</li>
                                    <li>版次：1</li>
                                    <li>册数：暂无</li>
                                    <li>重量：暂无</li>
                                    <li>印刷次数：1</li>
                                    <li class="kind"><span>所属分类：</span><div class="crumsItem"><a href="/kinder/61000000/">哲学/宗教</a></div><i class="">&gt;</i><div class="crumsItem"><a href="/kinder/61130000/">宗教</a></div><i class="">&gt;</i><div class="crumsItem"><a href="/kinder/61131600/">宗教理论</a></div><i class=""></i></li>
                                </ul>
                            </div>
                            <div class="specialist" id="specialist">
                                <h2 class="tit"><span>扶箕迷信底研究 本书特色</span></h2>
                                <p> 扶箕是一种曾在古代广为流行的迷信活动，至今仍给人带来几分玄奥神秘的感觉。本书通过从中国古代文献（多为笔记小说）中收集来的132则故事，较详尽地记述了扶箕的起源，扶箕的形式以及古人通过扶箕所欲达到的目的，zui后又分析了扶箕这一迷信活动在人们心理上的解释，逐步揭开了扶箕的神秘面纱，正确地得出“扶箕并不是什么神灵的降示，只是自己心灵的作怪而已”的结论，并揭露了操持扶箕者的虚伪性和欺骗性。</p>
                            </div>
                            <div class="brief" id="brief">
                                <h2 class="tit"><span>扶箕迷信底研究 内容简介</span></h2>
                                <p>扶箕是一种卜以问疑的迷信活动，一般是在架子上吊一根棍儿，两个人扶着架子，棍儿就在沙盘上画出字句来作为神的指示。扶箕以其神秘莫测令世人迷惑不已，更有人对其深信不疑，一次的灵验，终身服膺。北平某公因信箕示而不出去当傀儡，广州某公因信箕示而举兵造反，可见箕示力量之大。但是，扶箕真的是有鬼神附体吗？就让我们翻开《扶箕迷信底研究 》这本小书，和著名学者许地山一起探讨扶箕背后的秘密！</p>
                            </div>
                            <div class="catalog" id="catalog">
                                <h2 class="tit"><span>扶箕迷信底研究 目录</span></h2>
                                <div class="con">
                                    <div id="catalogSwitch">
                                        引 &nbsp;论 &nbsp;<br><br>diyi章 &nbsp;扶箕底起源<br>愕绿华 &nbsp;紫姑神 &nbsp;笔录术<br><br>第二章 &nbsp;箕仙及其降笔<br>（甲）箕仙自道身世<br>（乙）箕仙预告事情<br>一、问试题 &nbsp;二、功名 &nbsp;三、生死<br>四、国事<br>（丙）箕仙与人酬唱<br>一、遣兴 &nbsp;二、唱和 &nbsp;三、猜谜<br>四、对对 &nbsp;五、辩论文体<br>（丁）箕仙与人谈道及教训<br>（戊）箕仙示人医药及技艺<br><br>第三章 &nbsp;扶箕底心灵学上的解释<br>（甲）箕仙与幽灵信仰底关系<br>（乙）幽灵与知识<br>（丙）箕动与感应<br>（丁）扶箕者底捣鬼<br><br>结 &nbsp;论<br><br>附录一（摘自许地山《道教史》）<br>神仙底信仰与追求<br>巫觋道与杂术<br><br>附录二（摘自傅勤家《中国道教史》）<br>道教之神<br>道教之方术<br>
                                    </div>
                                </div>
                                <div class="switch"><span id="openCatalog">展开全部<i class="icon"></i></span></div>
                            </div>
                            <div class="excerpt" id="xiangguan">
                                <h2 class="tit"><span>扶箕迷信底研究 相关资料</span></h2>
                                <p>他之研究宗教学，我想，其用心大概与研究扶箕的迷信是一样的罢。在他近著《扶箕迷信底研究》一书中，我们惊叹于他考证之功，也心折于他的论断之正确，他是为了要证明扶箕是一种自觉的或不自觉的骗术，乃就其有关的各方面，详加考证。……他这研究方法完全是科学的！<br>
                                    <br>——茅盾<br>
                                    <br>真是学者的文笔，广征博引。对扶箕文化有兴趣的人，此书观后，应大有收获的。<br>
                                    <br>——读者<br></p>
                            </div>
                            <div class="excerpt" id="zuozhejianjie">
                                <h2 class="tit"><span>扶箕迷信底研究 作者简介</span></h2>
                                <p>许地山(1893—1941)，名赞堃，号地山，笔名落花生，是中国现代小说家、散文家，“五四”时期新文学运动先驱者之一。1917年，他考入燕京大学文学院，1920年毕业留校任教，曾与郑振铎、瞿秋白等人联合主办《新社会旬刊》。1921年，许地山与沈雁冰、叶圣陶、郑振铎等12人，在北平(今北京)发起成立了文学研究会，并创办《小说月报》。1921年，许地山发表了他的第一篇短篇小说《命命鸟》，从此走上文学创作的道路。作品结集出版的有短篇小说集《缀网劳蛛》、《危巢坠简》，散文集《空山灵雨》，小说、剧本集《解放者》、《杂感集》，论著《印度文学》、《道教史》，以及《许地山选集》、《许地山文集》等。散文名篇《落花生》以朴实淳厚的风格成为其最具盛名的代表作。</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
