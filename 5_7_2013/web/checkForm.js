/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkReg(event){
    var name = document.getElementById("name");
    var surname = document.getElementById("surname");
    var place = document.getElementById("place");
    var prov = document.getElementById("prov");
    var username = document.getElementById("username");
    var password = document.getElementById("password");
    
    if (name.lenght && surname.lenght && username.lenght && password.lenght && checkTown(place) && checkProv(prov)){
        return true;
    }
    event.preventDefault();
    alert("Ci sono controlli errati");
    return false;
}

function checkLog(event){
    var username = document.getElementById("username");
    var password = document.getElementById("password");
    
    if (username.lenght && password.lenght){
        return true;
    }
    
    event.preventDefault();
    alert("Ci sono controlli errati");
    return false;
}

function checkEmpty(value){
    var regexp = /^.+$/;
    return regexp.test(value);
}

function checkTown(value){
    var regexp =/^[A-Z][a-z]+$/;
    return regexp.test(value);
}

function checkProv(value){
    var regexp = /^[A-Z]{2}$/;
    return regexp.test(value);
}

window.onload = function(){
    var log_form = document.getElementById("login_form");
    var reg_form = document.getElementById("registration_form");
    
    if (log_form){
        log_form.onsubmit = checkLog;
    }
    
    if (reg_form){
        reg_form.onsubmit = checkReg;
    }
};