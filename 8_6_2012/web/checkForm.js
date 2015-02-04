/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function checkLogin(event){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    
    if (checkValue(username) && checkValue(password)){
        return true;
    }
    alert("Dati immessi non corretti!");
    event.preventDefault();
    return false;
}

function checkInterval(value,max){
    var number = parseInt(value);
    return number >= 0 && number <= max;
}

function checkReg(event){
    var nomemaya = document.getElementById("nomemaya").value;
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var u = document.getElementById("uinal").value;
    var t = document.getElementById("tun").value;
    var k = document.getElementById("katun").value;
    var b = document.getElementById("baktun").value;
    
    if (checkValue(username) && checkValue(password) && checkValue(nomemaya) && checkNumber(u) && checkNumber(t) && checkNumber(k) && checkNumber(b)){
        if (checkInterval(u,17) && checkInterval(t,19) && checkInterval(k,19) && checkInterval(b,12)){
            return true;
        }
    }
    alert("Dati immessi non corretti!");
    event.preventDefault();
    return false;
}

function checkNumber(value){
    var regexp =/^\d+$/;
    return regexp.test(value);
}

function checkValue(value){
    var regexp = /^.+$/;
    return regexp.test(value);
}

window.onload = function(){
    var reg_form = document.getElementById("reg_form");
    var log_form = document.getElementById("log_form");
    
    if (reg_form){
        reg_form.onsubmit = checkReg;
    }
    
    if (log_form){
        log_form.onsubmit = checkLogin;
    }
};
