/**
 * 
 */
window.dom_child = 0;
/*
 * 图书类型
 */
window.cate = 0;
window.next_btn;

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
	$.ajax({
		type:"post",
		url:"http://localhost:7890/11-11bookshop/book/"+cate+"/0.action",
		data:{},
		dataType:"JSON",
		success:function(list)
		{
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
	if($('#pageCount')[0].innerText == "" || $('#pageCount')[0].innerText == undefined){
		$.ajax({
			type:"post",
			url:"http://localhost:7890/11-11bookshop/book/"+cate+"/countAndCategory.action",
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

function click__tiaojian_sell(dom) {
	$('#selectlist_sell li').each(function() {
		//console.log(this.children[0].style.color);
		if(this.children[0].style.color == "red"){
			this.children[0].style.color = "gray";
		}
	});
	dom.style.color = "red";
	min = dom.innerText.split("-")[0];
	try{
		max_len = dom.innerText.split("-")[1].length;
		max = dom.innerText.split("-")[1].substr(0, max_len-1);
	}catch(TypeError){
		max_len =0;
	}
	if(min == "100元以上"){
		min = 100;
		max = "2147483647";
	}
	$('#pageNum')[0].value = 1;
	console.log($('#pageCount')[0].innerText);
	$.ajax({
		type:"post",
		url:"http://localhost:7890/11-11bookshop/book/"+window.cate+"/select/"+$('#pageNum')[0].value+".action",
		data:{"sell_min":min,"sell_max":max},
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
	
	/*不管有没有值，都应该清除*/
		$.ajax({
			type:"post",
			url:"http://localhost:7890/11-11bookshop/book/"+cate+"/countAndCategory.action",
			data:{"sell_min":min,"sell_max":max},
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
			url:"http://localhost:7890/11-11bookshop/book/"+cate+"/"+num+".action",
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
			url:"http://localhost:7890/11-11bookshop/book/"+cate+"/"+num+".action",
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


/*
 * 递归实现查找父标签里的子标签
 * */
function getChildTagByClass(child_dom,className) {
	for(var i = 0 ; i < child_dom.children.length;i++){
		if(child_dom.children[i].className == className){
			
			window.dom_child = child_dom.children[i];
			return null;
		}else{
			getChildTagByClass(child_dom.children[i],className);
		}
	}
	return null;
}