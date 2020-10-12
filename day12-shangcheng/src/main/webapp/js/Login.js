function checkUserName() {
    var username = document.getElementById("unId");
    var unSpan = document.getElementById("unSpan");
    unSpan.innerText = "";
    if(/^\s*$/.test(username.value)){
        unSpan.innerText = "请输入账号";
        return false;
    }else{
        return true;
    }
}
function checkPassword() {
    var password = document.getElementById("pwId");
    var pwSpan = document.getElementById("pwSpan");
    pwSpan.innerText = "";
    if(/^\s*$/.test(password.value)){
        pwSpan.innerText = "请输入密码";
        return false;
    }else{
        return true;
    }
}
function checkForm() {
    if(checkUserName()&&checkPassword()){
        return true;
    }else{
        return false;
    }
}