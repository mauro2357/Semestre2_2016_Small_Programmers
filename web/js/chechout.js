var envia, email, contrasena;    
    window.onload = function(){
                envia = document.getElementById('envia');
                email = document.getElementById('email');
                contrasena = document.getElementById('contrasena');
                envia.onclick = function(){
                    var valor1 = email.value;
                    var valor2 = contrasena.value;
                    if(valor1 === "" || valor2 === ""){
                        alert("error de datos");
                    }
                    else{
                        alert("guardando datos");
                        //location.href=("direccion.jsp");
                    }                 
                };
            };

