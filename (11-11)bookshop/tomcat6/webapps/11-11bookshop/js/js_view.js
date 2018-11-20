function init() {
	$(document).ready(function() {
		$.ajax({
			type:"get",
			url:"book/show/"+$('#bookId')[0].value+".action",
			dataType:"JSON",
			success:function(list){
				console.log(list);
				var img_src = list[0].bookDetailedUrl;
				img_src = img_src.substr(3, img_src.length);
				img_src= img_src.replace(/\\/g,'/');
				$('.coverImg img')[0].src = img_src;
				$('.padLeft10 h1')[0].innerText = list[0].bookTitle;
				
				$('.oparaBookBut span')[0].innerText = "中图价:"+ list[0].bookSellPrice;
				
				var re = list[0]['bookRecolagu'].substr(0, 600);
				re = re.replace(/<\/?[^>]*>/g,''); //去除HTML tag
				re = re.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
				re = re.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
				re=re.replace(/ /ig,'');//去掉 
				re=re.replace(/^[\s　]+|[\s　]+$/g, "");//去掉全角半角空格
				re=re.replace(/[\r\n]/g,"");//去掉回车换行
				$('.recomand')[0].innerText = list[0].bookRecolagu+"……";
				$('.author')[0].innerText = list[0].bookAuthor;
				$('.publisher a')[0].innerText = list[0].bookPubliser;
				$('.publisher i')[0].innerText = list[0].bookPublishTime;
				$('.otherInfor em')[0].innerText = list[0].bookBookOpenBook;
				$('.otherInfor i')[0].innerText = list[0].bookPageNumber;
				$('.sellPrice')[0].innerText = list[0].bookSellPrice;
				
				$('.discount')[0].innerText = list[0].bookDiscount;
				$('.price')[0].innerText = list[0].bookOrignalPrice;
				
				$('.copyrightInfor span')[0].innerText = list[0].bookTitle+" 版权信息";
				$('.copyrightInfor li')[0].innerText ="ISBN：" + list[0].bookIsbn;
				$('.copyrightInfor li')[1].innerText ="条形码：" + list[0].bookBarcode;
				$('.copyrightInfor li')[2].innerText ="装帧：" + list[0].bookBinding;
				$('.copyrightInfor li')[3].innerText ="版次：" +  list[0].bookCateGoryId;
				$('.copyrightInfor li')[4].innerText ="页数：" +list[0].bookPageNumber;
				$('.kind')[0].innerHTML = list[0].bookKind;
				
				$('.specialist h2 span')[0].innerText=list[0].bookTitle+" 本书特色";
				$('.specialist p')[0].innerText=list[0].bookRecolagu;
				
				$('.brief h2 span')[0].innerText=list[0].bookTitle+" 内容简介";
				$('.brief p')[0].innerText=list[0].bookRecolagu;
				
				//$('.catalog h2 span')[0].innerText=list[0].bookTitle+" 目录";
				$('.catalog')[0].innerHTML=list[0].bookCatalog;
				$('#xiangguan')[0].innerHTML=list[0].bookExcerpt;
				$('#zuozhejianjie')[0].innerHTML=list[0].bookZuoZheJianJie;
				
			}
		})
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
    $(document).ready(function() {
        console.log($('.zp-jobNavigater-item'));
        $('.zp-jobNavigater-item').each(function (t,i) {
            i.setAttribute("style","display:none");
        })

    });
    $(document).ready(function () {
        console.log(window.getComputedStyle($('.zp-main-container-biaoqian')[0]).padding);
        $('.zp-main-container-biaoqian')[0].style.padding = "0px";
    });

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


$(document).ready(function () {
	$('.category-info').each(function(){
		console.log(this.style.padding);
	});

    $('.zp-jobNavigater-list2')[0].onmouseover=function () {
        $('.zp-jobNavigater-item').each(function () {
            this.style.display="block";
        })
    };
       $('.zp-jobNavigater-list2')[0].onmouseout=function () {
            $('.zp-jobNavigater-item').each(function () {
                this.style.display="none";
            })
        };
});
/* 横幅关键代码 */
$(document).ready(function () {
    var jilu_offset_top = $('.shadow.clearfix')[0].offsetTop;
    window.addEventListener('scroll',function () {
        var scroll_top = $(document).scrollTop();
        var offset_top = $('.shadow.clearfix')[0].offsetTop;
        if(scroll_top>offset_top){
            $('.shadow.clearfix')[0].style.position="fixed";
            $('.shadow.clearfix')[0].style.width="980px";
            $('.shadow.clearfix')[0].style.top="0px";
            $('.shadow.clearfix')[0].style.left="450px";
            $('.shadow.clearfix')[0].style.zIndex="700";
        }

        if(scroll_top<jilu_offset_top){
            $('.shadow.clearfix')[0].style.cssText="";
        }
    });
});
