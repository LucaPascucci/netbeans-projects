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
    alert("Ci sono controlli errati");
    event.preventDefault();
    return false;
    
}

function checkUsername(value){
    regexp =/^[A-Za-z][A-Za-z\d]*$/;
    return regexp.test(value);
}

function checkValue(value){
    var regexp = /^.+$/;
    return regexp.test(value);
}

window.onload = function(){
    var login_form = document.getElementById("login_form");
    
    if (login_form){
        login_form.onsubmit = checkForm;
    }
};