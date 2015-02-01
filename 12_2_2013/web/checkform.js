function checkForm(e) {
    
    var form = e.target;
    
    var index;
    var value;
    /* preleva dalla form tutti gli elementi con il tag input*/
    var inputs = form.getElementsByTagName('input');
    for (index = 0; index < inputs.length; ++index) {
        if (inputs[index].type !== "submit"){
            value = inputs[index].value;
            if (!testregex(value)){
                e.preventDefault();
                alert("Ci sono controlli errati!");
                return false;
            }
        }
    }
    return true;
}

function testregex(string){
    regex = /^.{2,}$/;
    return regex.test(string);
}

window.onload = function() {
    
    /* preleva dalla pagina il */
    var reg_form = document.getElementById("registration_form");
    var login_form = document.getElementById("login_form");
    
    if (reg_form){
        reg_form.onsubmit = checkForm;
    }
    
    if (login_form){
        login_form.onsubmit = checkForm;
    }
};
