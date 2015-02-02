/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkForm(event){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    
    if (checkValue(password) && checkUsername(username)){
        return true;
    }
    alert("Ci sono controlli errati.");
    event.preventDefault();
    return false;
}

function checkValue(value){
    var regexp = /^.+$/;
    return regexp.test(value);
}

function checkUsername(value){
    var regexp = /^[a-z]+\.[a-z]+\d*$/;
    return regexp.test(value);
}

window.onload = function() {
    var log_form = document.getElementById("login_form");
    
    if (log_form){
        log_form.onsubmit = checkForm;
    }
};