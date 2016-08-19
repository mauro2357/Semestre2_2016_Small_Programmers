var registrate, mail, mail2, contrasena, contrasena2;
window.onclick = function(){  
        mail = document.getElementById('mail');
        mail2 = document.getElementById('mail2');
        contrasena = document.getElementById('contrasena');
        contrasena2 = document.getElementById('contrasena2');
        registrate = document.getElementById('registrate');
        registrate.onclick = function(){
            var valor1 = mail.value;
            var valor2 = mail2.value;
            var valor3 = contrasena.value;
            var valor4 = contrasena2.value;
            if(valor1 !== valor2 || valor3 !== valor4 ){
                alert("error de datos");
            }
            else{
                location.href=("index.jsp"); 
                alert("guardando datos");
            }               
        };
};