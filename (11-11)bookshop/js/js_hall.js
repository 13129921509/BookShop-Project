/*禁止回退
$(function() {
	if (window.history && window.history.pushState) {
		$(window).on('popstate', function () {
			window.history.pushState('', null, '#');
			window.history.forward(1);
		});
	}
	window.history.pushState('forward', null, '#'); //在IE中必须得有这两行
	window.history.forward(1);
})*/
var weapp=new Object();
weapp.i=4;
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
	location.href = "user/clearUser.action";
}


function init() {

    event.preventDefault();
    $('#swiper-container-imgs li').each(function () {
        //console.log($(this));
        $(this)[0].setAttribute("style","display:none");
    });

    $('.bannerdot a')[0].style.backgroundColor = "red";
    $('#swiper-container-imgs li')[0].setAttribute("style","display:block");
    len = $('#swiper-container-imgs li').length;

    imgs_interval = setInterval(function () {
        var len = $('#swiper-container-imgs li').length;
        $('#swiper-container-imgs li').each(function () {
            this.setAttribute("style","display:none");
        });

        $('.bannerdot a').each(function () {
            this.style.backgroundColor = "rgba(0,0,0,0.7)";
        });
        if(!window.i){
        	i=4;
        }
        $('#swiper-container-imgs li')[(i-4)%len].setAttribute("style","display:none");
        $('#swiper-container-imgs li')[(i-3)%len].setAttribute("style","display:block");
        $('.bannerdot a')[(i-4)%len].style.backgroundColor = "rgba(0,0,0,0.7)";
        $('.bannerdot a')[(i-3)%len].style.backgroundColor = "red";
        //console.log(i);
        i++;
    },2000);

    /* 以下两个方法是给轮播图设置over，out事件*/
    $('#swiper-container-imgs')[0].onmouseover=function () {
        clearInterval(imgs_interval);
        imgs_interval = null;
    };
    $('#swiper-container-imgs')[0].onmouseout=function () {
        //console.log("开始");
        imgs_interval = setInterval(function () {
            $('#swiper-container-imgs li').each(function () {
                this.setAttribute("style","display:none");
            });

            $('.bannerdot a').each(function () {
                this.style.backgroundColor = "rgba(0,0,0,0.7)";
            });
            var len = $('#swiper-container-imgs li').length;

            $('#swiper-container-imgs li')[(i-4)%len].setAttribute("style","display:none");
            $('#swiper-container-imgs li')[(i-3)%len].setAttribute("style","display:block");
            $('.bannerdot a')[(i-4)%len].style.backgroundColor = "rgba(0,0,0,0.7)";
            $('.bannerdot a')[(i-3)%len].style.backgroundColor = "red";
           // console.log(i);
            i++;
        },2000);
    };

    $(document).ready(function(){
        tabTit = document.getElementsByClassName('tabTit')[0];
        for(i=0;i<tabTit.children.length;i++){
            tabTit.children[i].addEventListener('click',function(){
                pour_tabTit_chirden(this);
            },false);
        }

    });
	
	$(document).ready(function () {

        $('.box-1-content ul li').each(function () {
            this.onclick=function () {
                $('#item_var')[0].innerText=this.innerText;
            };
        });
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

    $(document).ready(function () {
        //console.log(window.getComputedStyle($('.zp-main-container-biaoqian')[0]).padding);
        $('.zp-main-container-biaoqian')[0].style.padding = "0px";
    });
    
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
			url:"http://localhost:7890/11-11bookshop/search/book_10.action",
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
					getChildTagByClass(tr_info, "box_serach_bot_info_title_a");
					weapp.dom_child.innerText = list[i]["bookTitle"];
					weapp.dom_child.href = "show/"+ list[i]["bookId"]+".action";
					td_title = weapp.dom_child;
					tr_info.appendChild(td_title);
					
					weapp.dom_child = null;
					getChildTagByClass(tr_info, "box_serach_bot_info_id_a");
					weapp.dom_child.innerText = list[i]["bookAuthor"];
					td_author = weapp.dom_child;
					tr_info.appendChild(weapp.dom_child);
					$('.box_serach_bot_info_table')[0].appendChild(tr_info);
				}
			}
		});
	}, false);
}


function pour_tabTit_chirden(v_this) {
    v_this.style.color='red';
    v_this.style.borderTopColor = "red";
    v_this.style.backgroundColor = '#fff';
    if(v_this.innerText == "新品特惠"){
        mainEditor = document.getElementsByClassName('mainEditor')[0];
        $('.mainCover img')[0].src = '../img/s5436015.jpg';
    }else if(v_this.innerText == "本周精选"){

    }else if(v_this.innerText == "新书速递"){

    }else{

    }

}
document.addEventListener("click",function(){
    if(event){
        if(event.srcElement.className=='box-1'||event.srcElement.id=='item_var'){

        }else{

            $('.box-1-content')[0].style.display="none";

        }
    }
});


/* 选中bannerdot float5中的选项，直接定住图片 */
$(document).ready(function () {
    $('.bannerdot a').each(function (j) {
        this.onmouseover=function () {
            //console.log(j);
            clearInterval(imgs_interval);
            imgs_interval = null;
            $('#swiper-container-imgs li').each(function () {
                this.setAttribute("style","display:none");
            });

            $('.bannerdot a').each(function () {
                this.style.backgroundColor = "rgba(0,0,0,0.7)";
            });
            $('#swiper-container-imgs li')[j].setAttribute("style","display:block");
            $('.bannerdot a')[j].style.backgroundColor = "red";
        }
    })
});
/*
 * 递归实现查找父标签里的子标签
 * */
function getChildTagByClass(child_dom,className) {
	for(var i = 0 ; i < child_dom.children.length;i++){
		if(child_dom.children[i].className == className){
			
			weapp.dom_child = child_dom.children[i];
		}else{
			getChildTagByClass(child_dom.children[i],className);
		}
	}
}
