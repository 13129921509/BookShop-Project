function show(itrm){
    document.getElementById(itrm).style.display="inline"
}

function check(itrm){
    var text=document.getElementById(itrm).value;
    //判断是否为空
    if(text.replace(/\s/g,"")){

        document.getElementById("loginusernameerror").innerHTML="";
        document.getElementById("loginusernameerror").style.color="black";
    }else{

        document.getElementById("loginusernameerror").innerHTML="请输入常用手机号码"
        document.getElementById("loginusernameerror").style.color="red";
    }
}

//获得焦点
    // function showUserName() {
    // document.getElementById("inputusernameid").style.display="inline"
    // }
    // //失去焦点
    // function checkUserName(obj) {
    //     var text=document.getElementById("inputusernameid").value;
    //     //判断是否为空
    //     if(text.replace(/\s/g,"")){
    //
    //         document.getElementById("loginusernameerror").innerHTML="";
    //         document.getElementById("loginusernameerror").style.color="black";
    //     }else{
    //
    //         document.getElementById("loginusernameerror").innerHTML="请输入常用手机号码"
    //         document.getElementById("loginusernameerror").style.color="red";
    //     }
    // }
//密码
//获得焦点
function showPassWord() {
    document.getElementById("inputpasswordid").style.display="inline"
}
//失去焦点
function checkPassWord() {
    var text=document.getElementById("inputpasswordid").value;
    //判断是否为空
    if(text.replace(/\s/g,"")){

        document.getElementById("loginpasswroderrorid").innerHTML="";
        document.getElementById("loginpasswroderrorid").style.color="black";
    }else{

        document.getElementById("loginpasswroderrorid").innerHTML="请输入密码"
        document.getElementById("loginpasswroderrorid").style.color="red";
    }
}


showRePassWord
//重复密码
//获得焦点
function showRePassWord() {
    document.getElementById("inputRepasswordid").style.display="inline"
}
//失去焦点
function checkRePassWord() {
    var text=document.getElementById("inputRepasswordid").value;
    //判断是否为空
    if(text.replace(/\s/g,"")){

        document.getElementById("loginrepasswrodeerrorid").innerHTML="";
        document.getElementById("loginrepasswrodeerrorid").style.color="black";
    }else{

        document.getElementById("loginrepasswrodeerrorid").innerHTML="请再次输入密码"
        document.getElementById("loginrepasswrodeerrorid").style.color="red";
    }
}


//showYanZhengMa
//验证码
function showYanZhengMa() {
    document.getElementById("inputyzmid").style.display="inline"
}
//失去焦点
function checkYanZhenMa() {
    var text=document.getElementById("inputyzmid").value;
    //判断是否为空
    if(text.replace(/\s/g,"")){

        document.getElementById("loginyanzhenerrorid").innerHTML="";
        document.getElementById("loginyanzhenerrorid").style.color="black";
    }else{

        document.getElementById("loginyanzhenerrorid").innerHTML="请输入验证码"
        document.getElementById("loginyanzhenerrorid").style.color="red";
    }
}

//showPhone
//手机验证码

function showPhone() {
    document.getElementById("Phoneid").style.display="inline"
}
//失去焦点
function checkPhone() {
    var text=document.getElementById("Phoneid").value;
    //判断是否为空
    if(text.replace(/\s/g,"")){

        document.getElementById("loginphoneerrorid").innerHTML="";
        document.getElementById("loginphoneerrorid").style.color="black";
    }else{

        document.getElementById("loginphoneerrorid").innerHTML="请输入验证码"
        document.getElementById("loginphoneerrorid").style.color="red";
    }
}


//点击事件
function reonclick() {
    //用户名
    if(document.getElementById("inputusernameid").value.replace(/\s/g,""))
    {
        document.getElementById("loginusernameerror").innerHTML="";
        document.getElementById("loginusernameerror").style.color="black";
    }else{

        document.getElementById("loginusernameerror").innerHTML="请输入常用手机号码"
        document.getElementById("loginusernameerror").style.color="red";
        document.getElementById("inputusernameid").focus();
    }
    //密码
        if(document.getElementById("inputpasswordid").value="")
    {
        alert("qwe");
        document.getElementById("loginpasswroderrorid").innerHTML="";
        document.getElementById("loginpasswroderrorid").style.color="black";
    }else{

        document.getElementById("loginpasswroderrorid").innerHTML="请输入常用手机号码"
        document.getElementById("loginpasswroderrorid").style.color="red";
        document.getElementById("loginpasswroderrorid").focus();
    }
    //重复密码
    if(document.getElementById("inputRepasswordid").value.replace(/\s/g,""))
    {
        document.getElementById("loginrepasswrodeerrorid").innerHTML="";
        document.getElementById("loginrepasswrodeerrorid").style.color="black";
    }else{

        document.getElementById("loginrepasswrodeerrorid").innerHTML="请输入常用手机号码"
        document.getElementById("loginrepasswrodeerrorid").style.color="red";
        document.getElementById("loginrepasswrodeerrorid").focus();
    }
    //验证码
    if(document.getElementById("inputyzmid").value.replace(/\s/g,""))
    {
        document.getElementById("loginyanzhenerrorid").innerHTML="";
        document.getElementById("loginyanzhenerrorid").style.color="black";
    }else{

        document.getElementById("loginyanzhenerrorid").innerHTML="请输入常用手机号码"
        document.getElementById("loginyanzhenerrorid").style.color="red";
        document.getElementById("loginyanzhenerrorid").focus();
    }
    //手机验证码
    if(document.getElementById("Phoneid").value.replace(/\s/g,""))
    {
        document.getElementById("loginphoneerrorid").innerHTML="";
        document.getElementById("loginphoneerrorid").style.color="black";
    }else{

        document.getElementById("loginphoneerrorid").innerHTML="请输入常用手机号码"
        document.getElementById("loginphoneerrorid").style.color="red";
        document.getElementById("loginphoneerrorid").focus();
    }
}













    // $('.loginEnter')[0].onclick = function () {
    //     if ($('.inputusername')[0].value == "") {
    //         $('#msg_username')[0].innerText = '请填写你的账号';
    //         return;
    //     }
    //     if ($('.inputpassword')[0].value == "") {
    //         $('#msg_password')[0].innerText = '请填写你的密码';
    //         return;
    //     }
    //
    //     if ($('.inputyzm')[0].value == "") {
    //         $('#msg_yzm')[0].innerText = '请填写验证码';
    //         return;
    //     }
    //     //执行表单
    //     $.ready(function () {
    //
    //
    //     });
    // };

