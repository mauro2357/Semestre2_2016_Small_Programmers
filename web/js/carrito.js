var pagar;    
    window.onload = function(){
        pagar = document.getElementById('PAGO');
        pagar.onclick = function(){
            if(confirm("¿seguro que quieres comprar?")){
                alert("pago realizado exitosamente");
                location.href=("checkout.jsp");
            }
        };
    };