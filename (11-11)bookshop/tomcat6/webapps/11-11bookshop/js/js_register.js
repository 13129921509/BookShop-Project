function show(itrm){
    document.getElementById(itrm).style.display="inline"
}

function check(itrm){
    var text=document.getElementById(itrm).value;
    //�ж��Ƿ�Ϊ��
    if(text.replace(/\s/g,"")){

        document.getElementById("loginusernameerror").innerHTML="";
        document.getElementById("loginusernameerror").style.color="black";
    }else{

        document.getElementById("loginusernameerror").innerHTML="�����볣���ֻ�����"
        document.getElementById("loginusernameerror").style.color="red";
    }
}

//��ý���
    // function showUserName() {
    // document.getElementById("inputusernameid").style.display="inline"
    // }
    // //ʧȥ����
    // function checkUserName(obj) {
    //     var text=document.getElementById("inputusernameid").value;
    //     //�ж��Ƿ�Ϊ��
    //     if(text.replace(/\s/g,"")){
    //
    //         document.getElementById("loginusernameerror").innerHTML="";
    //         document.getElementById("loginusernameerror").style.color="black";
    //     }else{
    //
    //         document.getElementById("loginusernameerror").innerHTML="�����볣���ֻ�����"
    //         document.getElementById("loginusernameerror").style.color="red";
    //     }
    // }
//����
//��ý���
function showPassWord() {
    document.getElementById("inputpasswordid").style.display="inline"
}
//ʧȥ����
function checkPassWord() {
    var text=document.getElementById("inputpasswordid").value;
    //�ж��Ƿ�Ϊ��
    if(text.replace(/\s/g,"")){

        document.getElementById("loginpasswroderrorid").innerHTML="";
        document.getElementById("loginpasswroderrorid").style.color="black";
    }else{

        document.getElementById("loginpasswroderrorid").innerHTML="����������"
        document.getElementById("loginpasswroderrorid").style.color="red";
    }
}


showRePassWord
//�ظ�����
//��ý���
function showRePassWord() {
    document.getElementById("inputRepasswordid").style.display="inline"
}
//ʧȥ����
function checkRePassWord() {
    var text=document.getElementById("inputRepasswordid").value;
    //�ж��Ƿ�Ϊ��
    if(text.replace(/\s/g,"")){

        document.getElementById("loginrepasswrodeerrorid").innerHTML="";
        document.getElementById("loginrepasswrodeerrorid").style.color="black";
    }else{

        document.getElementById("loginrepasswrodeerrorid").innerHTML="���ٴ���������"
        document.getElementById("loginrepasswrodeerrorid").style.color="red";
    }
}


//showYanZhengMa
//��֤��
function showYanZhengMa() {
    document.getElementById("inputyzmid").style.display="inline"
}
//ʧȥ����
function checkYanZhenMa() {
    var text=document.getElementById("inputyzmid").value;
    //�ж��Ƿ�Ϊ��
    if(text.replace(/\s/g,"")){

        document.getElementById("loginyanzhenerrorid").innerHTML="";
        document.getElementById("loginyanzhenerrorid").style.color="black";
    }else{

        document.getElementById("loginyanzhenerrorid").innerHTML="��������֤��"
        document.getElementById("loginyanzhenerrorid").style.color="red";
    }
}

//showPhone
//�ֻ���֤��

function showPhone() {
    document.getElementById("Phoneid").style.display="inline"
}
//ʧȥ����
function checkPhone() {
    var text=document.getElementById("Phoneid").value;
    //�ж��Ƿ�Ϊ��
    if(text.replace(/\s/g,"")){

        document.getElementById("loginphoneerrorid").innerHTML="";
        document.getElementById("loginphoneerrorid").style.color="black";
    }else{

        document.getElementById("loginphoneerrorid").innerHTML="��������֤��"
        document.getElementById("loginphoneerrorid").style.color="red";
    }
}


//����¼�
function reonclick() {
    //�û���
    if(document.getElementById("inputusernameid").value.replace(/\s/g,""))
    {
        document.getElementById("loginusernameerror").innerHTML="";
        document.getElementById("loginusernameerror").style.color="black";
    }else{

        document.getElementById("loginusernameerror").innerHTML="�����볣���ֻ�����"
        document.getElementById("loginusernameerror").style.color="red";
        document.getElementById("inputusernameid").focus();
    }
    //����
        if(document.getElementById("inputpasswordid").value="")
    {
        alert("qwe");
        document.getElementById("loginpasswroderrorid").innerHTML="";
        document.getElementById("loginpasswroderrorid").style.color="black";
    }else{

        document.getElementById("loginpasswroderrorid").innerHTML="�����볣���ֻ�����"
        document.getElementById("loginpasswroderrorid").style.color="red";
        document.getElementById("loginpasswroderrorid").focus();
    }
    //�ظ�����
    if(document.getElementById("inputRepasswordid").value.replace(/\s/g,""))
    {
        document.getElementById("loginrepasswrodeerrorid").innerHTML="";
        document.getElementById("loginrepasswrodeerrorid").style.color="black";
    }else{

        document.getElementById("loginrepasswrodeerrorid").innerHTML="�����볣���ֻ�����"
        document.getElementById("loginrepasswrodeerrorid").style.color="red";
        document.getElementById("loginrepasswrodeerrorid").focus();
    }
    //��֤��
    if(document.getElementById("inputyzmid").value.replace(/\s/g,""))
    {
        document.getElementById("loginyanzhenerrorid").innerHTML="";
        document.getElementById("loginyanzhenerrorid").style.color="black";
    }else{

        document.getElementById("loginyanzhenerrorid").innerHTML="�����볣���ֻ�����"
        document.getElementById("loginyanzhenerrorid").style.color="red";
        document.getElementById("loginyanzhenerrorid").focus();
    }
    //�ֻ���֤��
    if(document.getElementById("Phoneid").value.replace(/\s/g,""))
    {
        document.getElementById("loginphoneerrorid").innerHTML="";
        document.getElementById("loginphoneerrorid").style.color="black";
    }else{

        document.getElementById("loginphoneerrorid").innerHTML="�����볣���ֻ�����"
        document.getElementById("loginphoneerrorid").style.color="red";
        document.getElementById("loginphoneerrorid").focus();
    }
}













    // $('.loginEnter')[0].onclick = function () {
    //     if ($('.inputusername')[0].value == "") {
    //         $('#msg_username')[0].innerText = '����д����˺�';
    //         return;
    //     }
    //     if ($('.inputpassword')[0].value == "") {
    //         $('#msg_password')[0].innerText = '����д�������';
    //         return;
    //     }
    //
    //     if ($('.inputyzm')[0].value == "") {
    //         $('#msg_yzm')[0].innerText = '����д��֤��';
    //         return;
    //     }
    //     //ִ�б�
    //     $.ready(function () {
    //
    //
    //     });
    // };

