function repw_c(){
    var pw = document.getElementById('pw');
    var re_pw = document.getElementById('re_pw');
    var alert_txt = document.getElementById('re_pw_alert');
    if(pw.value != re_pw.value){
        alert_txt.innerHTML = "<font color='red' size='2px'>비밀번호와 다릅니다</font>";
    }else{
        alert_txt.innerHTML = "<font color='green' size='2px'>비밀번호와 일치합니다</font>";
    }
}

function sign_up_confirm(){
    var id = document.getElementById('id');
    var pw = document.getElementById('pw');
    var re_pw = document.getElementById('re_pw');
    var email = document.getElementById('email');
    var phone = document.getElementById('phone');

    if(id.value == ''){
        alert('아이디를 작성해주세요');
        id.focus();
        return false;
    }
    if(pw.value == ''){
        alert('비밀번호를 작성해주세요');
        pw.focus();
        return false;
    }
    if(re_pw.value != pw.value){
        alert('비밀번호를 확인해주세요');
        re_pw.value = '';
        re_pw.focus();
        return false;
    }
    if(email.value == ''){
        alert('이메일을 작성해주세요');
        email.focus();
        return false;
    }
    if(phone.value == ''){
        alert('연락처를 작성해주세요');
        phone.focus();
        return false;
    }

    var result = confirm('아이디: '+id.value+'\n이메일: '+email.value+
                        '\n연락처: '+phone.value+'\n이대로 회원가입 하시겠습니까?');
    if(result == true){
        return true;
    }else{
        return false;
    }
}

function id_check(){
    
    var id_txt = document.getElementById('id').value;
    if(id_txt.length == 0 ){
        alert('아이디를 입력해주세요');
    }else{
        $.ajax({
            type : 'post',
            url : 'id_check',
            data : JSON.stringify({'id' : id_txt}),
            dataType : 'text',
            contentType: 'application/json',
            success : function(data) {
                if(data == 0){
                    $('#id_alert').html("<font color='green' size='2px'>가능한 아이디입니다</font>");
                }else{
                    $('#id_alert').html("<font color='red' size='2px'>아이디가 존재합니다</font>");
                }
            },
            error : function() {
                alert("fail");
            }
        });
    }
}
