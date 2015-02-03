/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkForm(event){
    var form = event.target;
    var index;
    var value;
    var values = form.getElementsByTagName('input');
    for (index = 0; index < values.length; index++){
        if (values[index].type !== "submit"){
            value = values[index].value;
            if (!checkValue(value)){
                alert("Errore: ci sono controlli vuoti.");
                event.preventDefault();
                return false;
            }
        }
    }
    return true;
}

function checkValue(value){
    var regexp = /^.+$/;
    return regexp.test(value);
}

window.onload = function(){
    var login_form = document.getElementById("login_form");
    var registration_form = document.getElementById("registration_form");
    
    if (login_form){
        login_form.onsubmit = checkForm;
    }
    
    if (registration_form){
        registration_form.onsubmit = checkForm;
    }
};
