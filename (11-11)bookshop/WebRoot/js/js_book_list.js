/**
 * 
 */
window.dom_child = 0;
/*
 * 图书类型
 */
window.cate = 0;

$(document).ready(function() {
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
		$('#but_next').display = "none";
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
	if($('#book_category')[0].value == "" || $('#book_category')[0].value == undefined){
		$.ajax({
			type:"post",
			url:"http://localhost:7890/11-11bookshop/book/"+cate+"/countAndCategory.action",
			data:{},
			dataType:"JSON",
			success:function(list)
			{
				$('#pageCount')[0].innerText = parseInt(list['count'])%20==0?parseInt(list['count'])/20:parseInt(list/20)+1;
				
			}
		});
	}
	
});
function but_pre() {
	var s2_clone_s = $('.s2')[0].cloneNode(true);
	$('.booklist')[0].innerHTML="";
	console.log("在"+$('#pageNum')[0].value+"页");
	var num = parseInt($('#pageNum')[0].value)-1;
	//console.log("第"+num+"页");
	$.ajax({
		type:"post",
		url:"http://localhost:7890/11-11bookshop/book/1/"+num+".action",
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
		$('#but_next').display = "none";
	}
	$('#pageNum')[0].value = parseInt(num);
}

function but_next() {
	var s2_clone_s = $('.s2')[0].cloneNode(true);
	$('.booklist')[0].innerHTML="";
	var num = parseInt($('#pageNum')[0].value)+1;
	//console.log("第"+num+"页");
	$.ajax({
		type:"post",
		url:"http://localhost:7890/11-11bookshop/book/1/"+num+".action",
		data:{},
		dataType:"JSON",
		success:function(list)
		{
			for(var item in list){
				var s2_clone = s2_clone_s.cloneNode(true);
				//console.log($('.s2'));
				
				//s2_clone.getElementsByTagName('div');
//				console.log($('.s2')[0]);
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