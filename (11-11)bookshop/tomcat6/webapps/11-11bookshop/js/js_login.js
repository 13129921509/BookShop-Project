

function init() {
    //console.log($('.loginEnter')[0]);
    flog = 0;
    $('.loginEnter')[0].onclick = function () {
        if ($('.inputusername')[0].value == "") {
            $('#msg_username')[0].innerText = 'ÇëÌîĞ´ÄãµÄÕËºÅ';
            flog = 1;
        }
        if ($('.inputpassword')[0].value == "") {
            $('#msg_password')[0].innerText = 'ÇëÌîĞ´ÄãµÄÃÜÂë';
            flog = 1;
        }

        if ($('.inputyzm')[0].value == "") {
            $('#msg_yzm')[0].innerText = 'ÇëÌîĞ´ÑéÖ¤Âë';
            flog = 1;
        }
        if (flog == 1) {
            return;
        }
        //Ö´ĞĞ±íµ¥
        //console.log($('#forms')[0]);
        var userName = $('.inputusername')[0].name;
        var password = $('.inputpassword')[0].name;
        $.post("user/login.action",{userName:$('.inputusername')[0].value,password:$('.inputpassword')[0].value},
        		function(date){
        			if(date.code == 0){
        				alert(date.content);
        			}else{
        				if($('#redirect')[0].value == "null"){
        					location.href = "hall.jsp";
        				}else if($('#redirect')[0].value == "hall"){
            				location.href = "hall.jsp";
        				}else if($('#redirect')[0].value.split('-')[0] == "list_book"){
        					location.href = "book/"+$('#redirect')[0].value.split('-')[1]+".action";
        				}
        			}
        		});
    };
}

$(document).ready(function () {
    $('.inputusername')[0].addEventListener("blur",function () {
        if($('.inputusername')[0] != ""){
            $('#msg_username')[0].innerText =""
        }

    });
    $('.inputpassword')[0].addEventListener("blur",function () {
        if($('.inputusername')[0] != ""){
            $('#msg_password')[0].innerText =""
        }

    });

    $('.inputyzm')[0].addEventListener("blur",function () {
        if($('.inputusername')[0] != ""){
            $('#msg_yzm')[0].innerText =""
        }

    });
})