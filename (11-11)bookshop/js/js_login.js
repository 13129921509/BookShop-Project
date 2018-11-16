

function init() {
    //console.log($('.loginEnter')[0]);
    flog = 0;
    $('.loginEnter')[0].onclick = function () {
        if ($('.inputusername')[0].value == "") {
            $('#msg_username')[0].innerText = '请填写你的账号';
            flog = 1;
        }
        if ($('.inputpassword')[0].value == "") {
            $('#msg_password')[0].innerText = '请填写你的密码';
            flog = 1;
        }

        if ($('.inputyzm')[0].value == "") {
            $('#msg_yzm')[0].innerText = '请填写验证码';
            flog = 1;
        }
        if (flog == 1) {
            return;
        }
        //执行表单
        //console.log($('#forms')[0]);
        var userName = $('.inputusername')[0].name;
        var password = $('.inputpassword')[0].name;
        $.post("user/login.action",{userName:$('.inputusername')[0].value,password:$('.inputpassword')[0].value},
        		function(date){
        			if(date.code == 0){
        				alert(date.content);
        			}else{
        				location.href = "hall.jsp";
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