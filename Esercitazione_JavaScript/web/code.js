/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


console.log("ciao!");

window.onload = function() {

    document.getElementById("submit").onclick = function() {
        return check(this.form);
    };
};

function show_err(cond,id){
    if (cond){
        document.getElementById(id).style.visibility = "hidden"; //modifica le proprietà del css
    }else{
        document.getElementById(id).style.visibility = "visible";
    }
}

function check(form) {
    console.log("check!");

    var result1 = check_str(form.nome.value);
    show_err(result1,"err1");
    var result2 = check_str(form.cognome.value);
    show_err(result2,"err2");
    var result3 = check_tel(form.tel.value);
    show_err(result3,"err3");
    if (!result1 || !result2 || !result3) {
        //alert("Dati errati!");
        return false;
    } else {
        return true;
    }

}

function check_str(str) {

//    var result = true;
//    
//    if (str !== null){
//        for (var i = 0; i < str.length && result;i++){
//            char = charAt(i);
//            if ((char < 'a' && char > 'z') || (char < 'A' && char > 'Z')){
//                result = false;
//            }
//        }
//    }else{
//        result = false;
//    }
//    return result;

    var exp = /^[a-zA-Z]+$/; //espressione che controlla se la stringa contiene solo caratteri maiuscoli o minuscoli
    return exp.test(str);
}

function check_tel(int) {
    var exp = /^\+[0-9]{4}[0-9]+$/; //espressione che controlla il numero telefonico che deve iniziare con il + ed avere almeno 5 numeri
    return exp.test(int);
}