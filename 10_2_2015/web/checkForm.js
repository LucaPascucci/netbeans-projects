/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkReg(event){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var name = document.getElementById("name").value;
    var surname = document.getElementById("surname").value;
    
    if(checkValue(username) && !checkUsername(username) && checkPassword(password) && checkValue(name) && checkValue(surname)){
        return true;
    }
    
    alert("Ci sono controlli errati.");
    event.preventDefault();
    return false;
}

function checkUsername(value){
    var regexp = /^adm$/;
    return regexp.test(value);
}

function checkValue(value){
    var regexp = /^.+$/;
    return regexp.test(value);
}

function checkPassword(value){
    var regexp = /^[0-9]{3,}$/;
    return regexp.test(value);
}

window.onload = function(){
  
    var reg_form = document.getElementById("reg_form");
    
    if (reg_form){
        reg_form.onsubmit = checkReg;
    }
};