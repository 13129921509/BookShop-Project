weapp = new Object();
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



//����¼�
function reonclick() {
   
    if(!weapp.yzmcode){
    	alert("����������");
    }else{
    	if(weapp.yzmcode == $('#Emailid')[0].value){
    		username = $('#inputusernameid')[0].value;
    		password = $('#inputpasswordid')[0].value;
    		email = $('#inputEmail')[0].value;
    		

    		$.ajax({
    			type:"post",
    			url:"user/register_user.action",
    			data:{"username":username,"password":password,"email":email},
    			dataType:"JSON",
    			success:function(date){
					alert(date);
        		},
    			error:function(date){
    				alert(date.responseText);
    				location.href = "login.jsp";
    			}
    		});
    	}
    }
    
}

function getYzm() {
	var input_yzm = $('#inputEmail')[0].value;
	if(input_yzm == ""||input_yzm == null||input_yzm==undefined){
		alert("����������");
		return ;
	}else{
//		$.post("user/register_email.action",{'email':input_yzm},
//        		function(date){
//					console.log(date);
//					weapp.yzmcode = date;
//        		});
//		
//		
		$.ajax({
			type:"post",
			url:"user/register_email.action",
			data:{'email':input_yzm},
			dataType:"JSON",
			success:function(list){
				console.log(list);
				weapp.yzmcode = list;
			},
			error:function(list){
				console.log(list.responseText);
				weapp.yzmcode = list.responseText;
			}
		});
    };
}

