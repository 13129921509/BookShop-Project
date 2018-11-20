/**
 * 
 */
var weapp=new Object();
weapp.i=4;
window.dom_child = 0;
/*
 * 图书类型
 */
window.cate = 0;
window.next_btn;

/*
 * 用户是否存在
 * */
$(function(){
	$(document).ready(function (){
		anquantuichu = $('.loginArea')[0].innerHTML;
		console.log($('#user_session')[0].value);
		if($('#user_session')[0].value != null && $('#user_session')[0].value!= ""){
			$('.loginArea')[0].innerHTML="";
			$('.loginArea')[0].innerHTML="<b>欢迎光临中国图书网  </b><span></span>"
				+$('#user_session')[0].value
				+"<span>|</span>"
				+"<a class='bar_user_quit' onclick='quit_user()'>安全退出</a>";
		}
		
})
})
function quit_user() {
	location.href = "user/clearUser.action?key=listBook_"+$('#book_category')[0].value;
}


function fuyuan() {
	$('.next')[0].appendChild(window.next_btn);
}
$(document).ready(function() {
	window.next_btn = $("#but_next")[0].cloneNode(true);
	window.cate = $('#book_category')[0].value;
	var s2_clone_s = $('.s2')[0].cloneNode(true);
	$('.booklist')[0].innerHTML="";
	var num = parseInt($('#pageNum')[0].value);
	//console.log("第"+num+"页");
	key = $('#key')[0].value;
	value = $('#value')[0].value;
	if(window.cate == null ||window.cate == undefined || window.cate == ""){
		$.ajax({
			type:"post",
			url:"book/select/0.action",
			data:{key:key,value:value},//有问题
			dataType:"JSON",
			success:function(list)
			{
				for(var item in list){
					var s2_clone = s2_clone_s.cloneNode(true);
					getChildTagByClass(s2_clone,'lazyImg');
					window.dom_child.src = "..\\11-11bookshop\\"+list[item]['bookImgUrl'].substr(3, list[item]['bookImgUrl'].length);
					getChildTagByClass(s2_clone,'name');
					window.dom_child.innerHTML = "";
					a = document.createElement("a");
					a.style.color = "#0080cc";
					a.style.fontSize = "14px";
					a.href = "view.jsp?index="+list[item]['bookId'];
					a.innerText = list[item]['bookTitle'].replace(/\?/g," ");
					window.dom_child.appendChild(a);
					//window.dom_child.href = "book/show/"+list[item]['bookId']+".action";
					//window.dom_child.innerText = list[item]['bookTitle'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'author');
					window.dom_child.innerText = list[item]['bookAuthor'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPublishTime');
					window.dom_child.innerText = list[item]['bookPublishTime'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPubliser');
					window.dom_child.innerText = list[item]['bookPubliser'].replace(/\?/g," ");
					
					getChildTagByClass(s2_clone,'sellprice');
					window.dom_child.innerText = list[item]['bookSellPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookDiscount');
					window.dom_child.innerText = list[item]['bookDiscount'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookOrignalPrice');
					window.dom_child.innerText = list[item]['bookOrignalPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'recoLagu');
					var re = list[item]['bookRecolagu'].substr(0, 300);
					re = re.replace(/<\/?[^>]*>/g,''); //去除HTML tag
					re = re.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
					re = re.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
					re=re.replace(/ /ig,'');//去掉 
					re=re.replace(/^[\s　]+|[\s　]+$/g, "");//去掉全角半角空格
					re=re.replace(/[\r\n]/g,"");//去掉回车换行
					window.dom_child.innerText = re;
					$('.booklist')[0].appendChild(s2_clone);
				}
			}
		});
	}else{
		$.ajax({
			type:"post",
			url:"book/"+cate+"/0.action",
			data:{},
			dataType:"JSON",
			success:function(list)
			{
				for(var item in list){
					var s2_clone = s2_clone_s.cloneNode(true);
					getChildTagByClass(s2_clone,'lazyImg');
					window.dom_child.src = "..\\11-11bookshop\\"+list[item]['bookImgUrl'].substr(3, list[item]['bookImgUrl'].length);
					getChildTagByClass(s2_clone,'name');
					window.dom_child.innerHTML = "";
					a = document.createElement("a");
					a.style.color = "#0080cc";
					a.style.fontSize = "14px";
					a.href = "view.jsp?index="+list[item]['bookId'];
					a.innerText = list[item]['bookTitle'].replace(/\?/g," ");
					window.dom_child.appendChild(a);
					//window.dom_child.href = "book/show/"+list[item]['bookId']+".action";
					//window.dom_child.innerText = list[item]['bookTitle'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'author');
					window.dom_child.innerText = list[item]['bookAuthor'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPublishTime');
					window.dom_child.innerText = list[item]['bookPublishTime'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPubliser');
					window.dom_child.innerText = list[item]['bookPubliser'].replace(/\?/g," ");
					
					getChildTagByClass(s2_clone,'sellprice');
					window.dom_child.innerText = list[item]['bookSellPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookDiscount');
					window.dom_child.innerText = list[item]['bookDiscount'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookOrignalPrice');
					window.dom_child.innerText = list[item]['bookOrignalPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'recoLagu');
					var re = list[item]['bookRecolagu'].substr(0, 300);
					re = re.replace(/<\/?[^>]*>/g,''); //去除HTML tag
					re = re.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
					re = re.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
					re=re.replace(/ /ig,'');//去掉 
					re=re.replace(/^[\s　]+|[\s　]+$/g, "");//去掉全角半角空格
					re=re.replace(/[\r\n]/g,"");//去掉回车换行
					window.dom_child.innerText = re;
					$('.booklist')[0].appendChild(s2_clone);
				}
			}
		});
	}
	
	if($('#pageNum')[0].value == $('#pageCount')[0].value){
		$('.next')[0].innerHTML = "";
	}
	$('#pageNum')[0].value = parseInt(num);
	
//	if($('#pageCount')[0].innerText == "" || $('#pageCount')[0].innerText == undefined){
//		$.ajax({
//			type:"post",
//			url:"http://localhost:7890/11-11bookshop/book/"+cate+"/count.action",
//			data:{},
//			dataType:"JSON",
//			success:function(list)
//			{
//				$('#pageCount')[0].innerText = list%20==0?list/20:parseInt(list/20)+1;
//			}
//		});
//	}
	if(window.cate != ""){
		$.ajax({
			type:"post",
			url:"book/"+cate+"/countAndCategory.action",
			data:{},
			dataType:"JSON",
			success:function(list)
			{
				$('#pageCount')[0].innerText = parseInt(list['count'])%20==0?parseInt(list['count'])/20:parseInt(list['count']/20)+1;
				if($('#pageCount')[0].innerText == 1){
					$('.next')[0].innerHTML = "";
				}
			}
		});
	}else{
		$.ajax({
			type:"post",
			url:"book/select/countAndCategory.action",
			data:{key:key,value:value},
			dataType:"JSON",
			success:function(list)
			{
				$('#pageCount')[0].innerText = parseInt(list['count'])%20==0?parseInt(list['count'])/20:parseInt(list['count']/20)+1;
				if($('#pageCount')[0].innerText == 1){
					$('.next')[0].innerHTML = "";
				}
			}
		});
	}
	
	
	
	/*
	 * 点击事件设置
	 */
	$('.icon_down')[0].onclick = function() {
		//${'.css_book_list'}[0].gete
		if($('#icon_dwon2_a')[0].innerText == "展开"){
			$('.selectlist')[0].style.height="100%";
			$('.selectlistdiv')[0].style.height="100%";
			$('.selectlistdiv')[0].style.lineHeight="96px";
			$('.icon_dwon2')[0].style.backgroundPosition="-125px -489px";
			$('.icon_dwon2')[0].style.color="red";
			$('#icon_dwon2_a')[0].innerText = "收回";
		}else{
			$('.selectlist')[0].style.height="30px";
			$('.selectlistdiv')[0].style.height="30px";
			$('.selectlistdiv')[0].style.lineHeight="30px";
			$('.icon_dwon2')[0].style.backgroundPosition="-108px -490px";
			$('.icon_dwon2')[0].style.color="red";
			$('#icon_dwon2_a')[0].innerText = "展开";
		}
		
	}
	
});
function getCanshu(){
	var canshu = {};
	$('#selectlist_sell li').each(function() {
		//console.log(this.children[0].style.color);
		if(this.children[0].style.color == "red"){
			canshu.sell_min = this.children[0].innerText.split("-")[0];
			try{
				max_len = this.children[0].innerText.split("-")[1].length;
				canshu.sell_max = this.children[0].innerText.split("-")[1].substr(0, max_len-1);
			}catch(TypeError){
				canshu.max_len =0;
			}
			if(canshu.sell_min == "100元以上"){
				canshu.sell_min = 100;
				canshu.sell_max = "2147483647";
			}
			
		}
	});
	$('#selectlist_discount li').each(function() {
		//console.log(this.children[0].style.color);
		if(this.children[0].style.color == "red"){
			canshu.min_discount = this.children[0].innerText.split("-")[0];
			try{
				max_len = this.children[0].innerText.split("-")[1].length;
				canshu.max_discount = this.children[0].innerText.split("-")[1].substr(0, max_len-1);
			}catch(TypeError){
				canshu.max_len =0;
			}
			if(canshu.min_discoun == "3折以下"){
				canshu.min_discount = 1;
				canshu.max_discount = 3;
			}else if(canshu.min_discoun == "7折以上"){
				canshu.min_discount = 7;
				canshu.max_discount = 9;
			}
		}
	});
	return canshu;

}
function click__tiaojian_sell(dom,index) {
	if(index == 'sell'){
		$('#selectlist_sell li').each(function() {
			//console.log(this.children[0].style.color);
			if(this.children[0].style.color == "red"){
				this.children[0].style.color = "gray";
			}
		});
	} else if(index == 'discount'){
		$('#selectlist_discount li').each(function() {
			//console.log(this.children[0].style.color);
			if(this.children[0].style.color == "red"){
				this.children[0].style.color = "gray";
			}
		});
	}
	dom.style.color = "red";
//	min = dom.innerText.split("-")[0];
//	try{
//		max_len = dom.innerText.split("-")[1].length;
//		max = dom.innerText.split("-")[1].substr(0, max_len-1);
//	}catch(TypeError){
//		max_len =0;
//	}
//	if(min == "100元以上"){
//		min = 100;
//		max = "2147483647";
//	}
	$('#pageNum')[0].value = 1;
	console.log($('#pageCount')[0].innerText);
	if(window.cate != ""){
		$.ajax({
			type:"post",
			url:"book/"+window.cate+"/select/"+$('#pageNum')[0].value+".action",
			data:getCanshu(),//{"sell_min":min,"sell_max":max},
			dataType:"JSON",
			success:function(list)
			{
				var s2_clone_s = $('.s2')[0].cloneNode(true);
				$('.booklist')[0].innerHTML="";
				for(var item in list){
					var s2_clone = s2_clone_s.cloneNode(true);
					getChildTagByClass(s2_clone,'lazyImg');
					window.dom_child.src = "..\\11-11bookshop\\"+list[item]['bookImgUrl'].substr(3, list[item]['bookImgUrl'].length);
					getChildTagByClass(s2_clone,'name');
					window.dom_child.innerText = list[item]['bookTitle'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'author');
					window.dom_child.innerText = list[item]['bookAuthor'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPublishTime');
					window.dom_child.innerText = list[item]['bookPublishTime'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPubliser');
					window.dom_child.innerText = list[item]['bookPubliser'].replace(/\?/g," ");
					
					getChildTagByClass(s2_clone,'sellprice');
					window.dom_child.innerText = list[item]['bookSellPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookDiscount');
					window.dom_child.innerText = list[item]['bookDiscount'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookOrignalPrice');
					window.dom_child.innerText = list[item]['bookOrignalPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'recoLagu');
					var re = list[item]['bookRecolagu'].substr(0, 300);
					re = re.replace(/<\/?[^>]*>/g,''); //去除HTML tag
					re = re.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
					re = re.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
					re=re.replace(/ /ig,'');//去掉 
					re=re.replace(/^[\s　]+|[\s　]+$/g, "");//去掉全角半角空格
					re=re.replace(/[\r\n]/g,"");//去掉回车换行
					window.dom_child.innerText = re;
					$('.booklist')[0].appendChild(s2_clone);
				}
			}
		});
	}else{
//		key = $('#key')[0].value;
//		value = $('#value')[0].value;
		canshu = getCanshu();
		canshu.key = $('#key')[0].value;
		canshu.value = $('#value')[0].value;
		$.ajax({
			type:"post",
			url:"book/select/"+$('#pageNum')[0].value+".action",
			data:canshu,//{"sell_min":min,"sell_max":max},
			dataType:"JSON",
			success:function(list)
			{
				var s2_clone_s = $('.s2')[0].cloneNode(true);
				$('.booklist')[0].innerHTML="";
				for(var item in list){
					var s2_clone = s2_clone_s.cloneNode(true);
					getChildTagByClass(s2_clone,'lazyImg');
					window.dom_child.src = "..\\11-11bookshop\\"+list[item]['bookImgUrl'].substr(3, list[item]['bookImgUrl'].length);
					getChildTagByClass(s2_clone,'name');
					window.dom_child.innerText = list[item]['bookTitle'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'author');
					window.dom_child.innerText = list[item]['bookAuthor'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPublishTime');
					window.dom_child.innerText = list[item]['bookPublishTime'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPubliser');
					window.dom_child.innerText = list[item]['bookPubliser'].replace(/\?/g," ");
					
					getChildTagByClass(s2_clone,'sellprice');
					window.dom_child.innerText = list[item]['bookSellPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookDiscount');
					window.dom_child.innerText = list[item]['bookDiscount'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookOrignalPrice');
					window.dom_child.innerText = list[item]['bookOrignalPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'recoLagu');
					var re = list[item]['bookRecolagu'].substr(0, 300);
					re = re.replace(/<\/?[^>]*>/g,''); //去除HTML tag
					re = re.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
					re = re.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
					re=re.replace(/ /ig,'');//去掉 
					re=re.replace(/^[\s　]+|[\s　]+$/g, "");//去掉全角半角空格
					re=re.replace(/[\r\n]/g,"");//去掉回车换行
					window.dom_child.innerText = re;
					$('.booklist')[0].appendChild(s2_clone);
				}
			}
		});
	}
	
	
	/*不管有没有值，都应该清除*/
		$.ajax({
			type:"post",
			url:"book/"+cate+"/countAndCategory.action",
			data:getCanshu(),
			dataType:"JSON",
			success:function(list)
			{
				
				$('#pageCount')[0].innerText = parseInt(list['count'])%20==0?parseInt(list['count'])/20:parseInt(list['count']/20)+1;
				if($('#pageCount')[0].innerText == 1){
					$('.next')[0].innerHTML = "";
				}else{
					fuyuan();
				}
			}
		});
//		if($('#pageCount')[0].innerText == 1){
//			$('#but_next')[0].innerHTML = "";
//		}else{
//			
//		}
}


	
function but_pre() {
	/*
	 * 参数
	 */
	var dom;
	$('#selectlist_sell li').each(function() {
		if(this.children[0].style.color == "red"){
			dom = this;
		}
	});
	var canshu;
	if(dom == undefined){
		canshu = {};
	}else{
		min = dom.innerText.split("-")[0];
		max_len = dom.innerText.split("-")[1].length;
		max = dom.innerText.split("-")[1].substr(0, max_len-1);
		var canshu = {
			"sell_min":min,
			"sell_max":max,	
		};
	}
	
	
	var s2_clone_s = $('.s2')[0].cloneNode(true);
	$('.booklist')[0].innerHTML="";
	var num = parseInt($('#pageNum')[0].value)-1;
	//console.log("第"+num+"页");
	if(num>=$("#pageCount")[0].innerText){
		$(".pre")[0].innerHTML="";
		
	}else{
		$.ajax({
			type:"post",
			url:"book/"+cate+"/"+num+".action",
			data:canshu,
			dataType:"JSON",
			success:function(list)
			{
				for(var item in list){
					var s2_clone = s2_clone_s.cloneNode(true);
					//console.log($('.s2'));
					
					//s2_clone.getElementsByTagName('div');
//					console.log($('.s2')[0]);
					getChildTagByClass(s2_clone,'lazyImg');
					window.dom_child.src = "..\\11-11bookshop\\"+list[item]['bookImgUrl'].substr(3, list[item]['bookImgUrl'].length);
					getChildTagByClass(s2_clone,'name');
					window.dom_child.innerText = list[item]['bookTitle'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'author');
					window.dom_child.innerText = list[item]['bookAuthor'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPublishTime');
					window.dom_child.innerText = list[item]['bookPublishTime'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPubliser');
					window.dom_child.innerText = list[item]['bookPubliser'].replace(/\?/g," ");
					
					getChildTagByClass(s2_clone,'sellprice');
					window.dom_child.innerText = list[item]['bookSellPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookDiscount');
					window.dom_child.innerText = list[item]['bookDiscount'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookOrignalPrice');
					window.dom_child.innerText = list[item]['bookOrignalPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'recoLagu');
					var re = list[item]['bookRecolagu'].substr(0, 300);
					re = re.replace(/<\/?[^>]*>/g,''); //去除HTML tag
					re = re.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
					re = re.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
					re=re.replace(/ /ig,'');//去掉 
					re=re.replace(/^[\s　]+|[\s　]+$/g, "");//去掉全角半角空格
					re=re.replace(/[\r\n]/g,"");//去掉回车换行
					window.dom_child.innerText = re;
					$('.booklist')[0].appendChild(s2_clone);
				}
			}
		});
	}
	
	if($('#pageNum')[0].value == $('#pageCount')[0].value){
		$('#but_next').display = "none";
	}
	$('#pageNum')[0].value = parseInt(num) ;
}

function but_next() {
	/*
	 * 参数
	 */
	var dom;
	$('#selectlist_sell li').each(function() {
		if(this.children[0].style.color == "red"){
			dom = this;
		}
	});
	var canshu;
	if(dom == undefined){
		canshu = {};
	}else{
		min = dom.innerText.split("-")[0];
		max_len = dom.innerText.split("-")[1].length;
		max = dom.innerText.split("-")[1].substr(0, max_len-1);
		var canshu = {
			"sell_min":min,
			"sell_max":max,	
		};
	}
	
	
	var s2_clone_s = $('.s2')[0].cloneNode(true);
	$('.booklist')[0].innerHTML="";
	var num = parseInt($('#pageNum')[0].value)+1;
	//console.log("第"+num+"页");
	if(num>=$("#pageCount")[0].innerText){
		$("#but_next")[0].innerHTML="";
		
	}else{
		$.ajax({
			type:"post",
			url:"book/"+cate+"/"+num+".action",
			data:canshu,
			dataType:"JSON",
			success:function(list)
			{
				for(var item in list){
					var s2_clone = s2_clone_s.cloneNode(true);
					//console.log($('.s2'));
					
					//s2_clone.getElementsByTagName('div');
//					console.log($('.s2')[0]);
					getChildTagByClass(s2_clone,'lazyImg');
					window.dom_child.src = "..\\11-11bookshop\\"+list[item]['bookImgUrl'].substr(3, list[item]['bookImgUrl'].length);
					getChildTagByClass(s2_clone,'name');
					window.dom_child.innerText = list[item]['bookTitle'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'author');
					window.dom_child.innerText = list[item]['bookAuthor'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPublishTime');
					window.dom_child.innerText = list[item]['bookPublishTime'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookPubliser');
					window.dom_child.innerText = list[item]['bookPubliser'].replace(/\?/g," ");
					
					getChildTagByClass(s2_clone,'sellprice');
					window.dom_child.innerText = list[item]['bookSellPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookDiscount');
					window.dom_child.innerText = list[item]['bookDiscount'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'bookOrignalPrice');
					window.dom_child.innerText = list[item]['bookOrignalPrice'].replace(/\?/g," ");
					getChildTagByClass(s2_clone,'recoLagu');
					var re = list[item]['bookRecolagu'].substr(0, 300);
					re = re.replace(/<\/?[^>]*>/g,''); //去除HTML tag
					re = re.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
					re = re.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
					re=re.replace(/ /ig,'');//去掉 
					re=re.replace(/^[\s　]+|[\s　]+$/g, "");//去掉全角半角空格
					re=re.replace(/[\r\n]/g,"");//去掉回车换行
					window.dom_child.innerText = re;
					$('.booklist')[0].appendChild(s2_clone);
				}
			}
		});
	}
	
	if($('#pageNum')[0].value == $('#pageCount')[0].value){
		$('#but_next').display = "none";
	}
	$('#pageNum')[0].value = parseInt(num) ;
}

$(document).ready(function() {
	/*
	 * 搜索框功能代码
	 * */
	    var sousuoapp=new Object();
	    sousuoapp.info_tr = $('.box_serach_bot_info_table tr')[0].cloneNode(true);
	    $('.zp-searchbar__box input')[0].addEventListener("input", function() {
	    	if($('.zp-searchbar__box input')[0].value == ""){
	    		return;
	    	}
	    	content = $('.zp-searchbar__box input')[0].value;
	    	sousuoapp.mohu_content="";
	    	for(var i = 0 ; i < content.length; i++){
	    		sousuoapp.mohu_content += "%"+content[i];
	    	}
	    	sousuoapp.mohu_content+="%";
	    	if($('#item_var')[0].innerText == "书籍"){
	    		sousuoapp.canshu={
	    				"bookmohutitle":sousuoapp.mohu_content
	    		};
	    	}else if($('#item_var')[0].innerText == "出版社"){
	    		sousuoapp.canshu={
	    				"chubanshe":sousuoapp.mohu_content
	    		};
	    	}else if($('#item_var')[0].innerText == "作者"){
	    		sousuoapp.canshu={
	    				"zuozhe":sousuoapp.mohu_content
	    		};
	    	}
			
			
			$('.box_serach_bot_info_table')[0].innerHTML = "";
			$.ajax({
				type:"post",
				url:"search/book_10.action",
				data:sousuoapp.canshu,
				dataType:"JSON",
				success:function(list)
				{	
					if(list.length==0){
						$('.box_serach_bot_info')[0].style.display = "none";
						return ;
					}else{
						$('.box_serach_bot_info')[0].style.display = "block";
					}
					
					for(var i = 0;i < list.length ;i++){
						tr_info = sousuoapp.info_tr.cloneNode(true);
						getChildTagByClass(tr_info, "box_serach_bot_info_title");
						//weapp.dom_child.innerText = list[i]["bookTitle"];
						a = document.createElement("a");
						a.innerText = list[i]["bookTitle"];
						a.href = "view.jsp?index="+list[i]['bookId'];;
						weapp.dom_child.appendChild(a);
						td_title = weapp.dom_child;
						tr_info.appendChild(td_title);
						
						weapp.dom_child = null;
						getChildTagByClass(tr_info, "box_serach_bot_info_Id");
						weapp.dom_child.innerText = list[i]["bookAuthor"];
						td_author = weapp.dom_child;
						tr_info.appendChild(weapp.dom_child);
						$('.box_serach_bot_info_table')[0].appendChild(tr_info);
					}
				}
			});
		}, false);
	    
	    
//	    /*
//	     * 搜索栏失焦事件
//	     */$(document).ready(function () {
//	    	// if(event.currentTarget)
//	    	 $('.zp-searchbar__box input')[0].addEventListener("blur", function(){
//
//		    	 console.log(event.target);
//	    			$('.box_serach_bot_info')[0].style.display = "none";
//	    		},false);
//	     })
	    
	    
	});


	
	
$(document).ready(function(){
	$('.box-1')[0].onclick = function(){
		if($('.box-1-content')[0].getAttribute("style") == "display: block;"){
                $('.box-1-content')[0].setAttribute("style","display: none;");
            }else{
                $('.box-1-content')[0].setAttribute("style","display: block;");
		}
	};
});

$(document).ready(function() {
	var scheduleBox1 = document.querySelector('.box_serach_bot_info');
	var scheduleBox2 = document.querySelector('.box-1');
	var scheduleBox3 = document.querySelector('#item_var');
	document.addEventListener("click", function(e){
		console.log(e.target);
	     // 判断被点击的元素是不是scheduleInput元素，不是的话，就隐藏之
	     if( e.target !== scheduleBox1 ){
	           scheduleBox1.style.display = "none";
	     }
	     if(e.target !== scheduleBox2&&e.target !== scheduleBox3){
	    	 //scheduleBox2.style.display = "none";
	    	 $('.box-1-content')[0].style.display = "none";
	     }
	});
});
sousuoapp = new Object();
function click_more() {
	content = $('.zp-searchbar__box input')[0].value;
	sousuoapp.mohu_content="";
	for(var i = 0 ; i < content.length; i++){
		sousuoapp.mohu_content += "_"+content[i];
	}
	sousuoapp.mohu_content+="_";
	if($('#item_var')[0].innerText == "书籍"){
		sousuoapp.canshu={
				key:"bookmohutitle",
				value:sousuoapp.mohu_content
		};
	}else if($('#item_var')[0].innerText == "出版社"){
		sousuoapp.canshu={
				key:"chubanshe",
				value:sousuoapp.mohu_content
		};
	}else if($('#item_var')[0].innerText == "作者"){
		sousuoapp.canshu={
				key:"zuozhe",
				value:sousuoapp.mohu_content
		};
	}
	
	location.href = "book_list.jsp?key="+sousuoapp.canshu.key+"&key-value="+sousuoapp.canshu.value;
}

/*
 * 递归实现查找父标签里的子标签
 * */
function getChildTagByClass(child_dom,className) {
	for(var i = 0 ; i < child_dom.children.length;i++){
		if(child_dom.children[i].className == className){
			weapp.dom_child = child_dom.children[i];
			window.dom_child = child_dom.children[i];
		}else{
			getChildTagByClass(child_dom.children[i],className);
		}
	}
}