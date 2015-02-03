/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkReg(event){
    var name = document.getElementById("name").value;
    var surname = document.getElementById("surname").value;
    var birthday = document.getElementById("nascita").value;
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value; 
    
    if (checkValue(name) && checkValue(surname) && checkDate(birthday) && checkValue(username) && checkValue(password)){
        return true;
    }
    
    alert("Ci sono controlli errati.");
    event.preventDefault();
    return false;
}

function checkLogin(event){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    
    if (checkValue(username) && checkValue(password)){
        return true;
    }
    alert("Ci sono controlli errati.");
    event.preventDefault();
    return false;
}

function checkDate(value){
    regexp = /^\d\d\/\d\d\/\d\d\d\d$/;
    if (!regexp.test(value)){
        return false;
    }
    
    var days = parseInt(value.substr(0,2));
    var months = parseInt(value.substr(3,2));
    
    if (days < 1 || days > 31){
        return false;
    }
    
    if (months < 1 || months > 12){
        return false;
    }
    
    return true;
}

function checkValue(value){
    var regexp = /^.+$/;
    return regexp.test(value);
}

window.onload =function(){
    var login_form = document.getElementById("login_form");
    var reg_form = document.getElementById("reg_form");
    
    if (login_form){
        login_form.onsubmit = checkLogin;
    }
    
    if (reg_form){
        reg_form.onsubmit = checkReg;
    }
};