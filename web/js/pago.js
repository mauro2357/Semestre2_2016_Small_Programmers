var tarjeta1, tarjeta2, tarjeta3, paypal, efectivo, envia;    
    window.onload = function(){
        tarjeta1 = document.getElementById('tarjeta1');
        tarjeta2 = document.getElementById('tarjeta2');
        tarjeta3 = document.getElementById('tarjeta3');
        paypal = document.getElementById('paypal');
        efectivo = document.getElementById('efectivo');
        envia = document.getElementById('envia');
        envia.onclick = function(){
            var valor1 = tarjeta1.value;
            var valor2 = tarjeta2.value;
            var valor3 = tarjeta3.value;
            var valor4 = paypal.value;
            var valor5 = efectivo.value;
            if(valor1 === "" || valor2 === "" || valor3 === "" || valor4 === "" || valor5 === ""){
                alert("error");
            }
            else{
                alert("campos completos");
                location.href = ("verifica.jsp");
            }                 
        };
    };