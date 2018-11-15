function init() {

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
