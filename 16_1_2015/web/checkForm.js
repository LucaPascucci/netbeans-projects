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
    var pagamento = event.target.elements["pagament"].value;
    
    if (checkValue(username) && checkPassword(password) && checkValue(name) && checkValue(surname) && checkValue(pagamento)){
        return true;
    }
    alert("Ci sono controlli errati.");
    event.preventDefault();
    return false;
}

function checkLog(event){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    
    if (checkValue(username) && checkPassword(password)){
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

function checkPassword(value){
    var regexp = /^[A-Za-z0-9]{5,}$/;
    return regexp.test(value);
}

window.onload = function(){
  
    var log_form = document.getElementById("login_form");
    var reg_form = document.getElementById("reg_form");
    
    if (log_form){
        log_form.onsubmit = checkLog;
    }
    
    if (reg_form){
        reg_form.onsubmit = checkReg;
    }
};